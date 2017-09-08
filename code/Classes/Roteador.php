<?php
	require_once "Config.php";
	require_once "TelegramConnect.php";
	require_once "CaronaDAO.php";
	require_once "Carona.php";

	class Roteador{

		private static $IDA	= "ida";
		private static $VOLTA = "volta";
		private $msg   = "";
		
		

		private static function getRules() {
			$regras = "Regras:
			1. Novato? Cadastre sua foto e username nas configurações.

			2. Existe um bot no grupo, digite / para que liste os comandos que ele aceita (/help por exemplo).

			3. Caronas de ida serão anunciadas depois das 19h do dia anterior.

			4. Caronas de volta (pra quem volta depois de 12h) serão anunciadas depois de 12h.

			5. Motoristas, anunciem com antecedência para as Caronas se programarem.

			6. Contribuição de R$5 pela carona é fortemente sugerida.

			7. Caronas serão preferencialmente anunciadas pelo bot de caronas.

			8. Manifeste interesse sempre que possível mencionando a @ do motorista e o chame IMEDIATAMENTE no privado para combinar rota e horário.

			9. Maneirar no flood nas horas críticas de anúncio de caronas. Os bots ajudam mas ainda não são perfeitos.

			10. Final de semana, assuntos livres!

			11. Duvidas ou sugestões para aprimorar o Bot fale com o @PeedroRod ou @Teredeby.";

			return $regras;
		}


		private static function getHelp(){
			$help = "Utilize este Bot para agendar as caronas. A utilização é super simples e através de comandos:

			/ida [horario] [vagas] [local] --> Este comando serve para definir um horário que você está INDO para o FUNDÃO.
			Ex: /ida 10:00 2 bb
			(Inclui uma carona de ida às 10:00 com 2 vagas saindo do bb)

			/ida [horario] --> Este comando serve para definir um horário que você está INDO para o FUNDÃO. Nessa opção, não é necessário definir vagas e local.
			Ex: /ida 10:00
			(Inclui uma carona de ida às 10:00)

			Caso não seja colocado o parâmetro do horário (Ex: /ida) o bot irá apresentar a lista com as caronas registradas para o trajeto.

			/volta [horario] [vagas] [local] --> Este comando serve para definir um horário que você está VOLTANDO para CAMPO GRANDE. 
			Ex: /volta 15:00 3 bb 
			(Inclui uma carona de volta às 15:00 com 3 vagas para o bb)

			/volta [horario] --> Este comando serve para definir um horário que você está VOLTANDO para o CAMPO GRANDE. Nessa opção, não é necessário definir vagas e local.
			Ex: /volta 15:00
			(Inclui uma carona de volta às 15:00)
											
			Caso não seja colocado o parâmetro do horário (Ex: /volta) o bot irá apresentar a lista com as caronas registradas para o trajeto.

			OBS --> O local agora pode conter espaços e sem limite de tamanho (atualizado)

			/remover [ida|volta] --> Comando utilizado para remover a carona da lista. SEMPRE REMOVA a carona depois dela ter sido realizada. O sistema não faz isso automaticamente. 
			Ex: /remover ida

			/vagas [ida|volta] [vagas] --> Este comando serve para atualizar o número de vagas de uma carona
			Ex: /vagas ida 2 
			(Altera o número de vagas da ida para 2)

			/fortune  [ on | off ] [ livro ] --> retorna uma frase famosa de um livro já cadastrado, implementado apenas o Murphy.  Se usado a opção on ou off liga ou desliga o modo ofensivo, padrão é desligado.

			";

			return $help;
		}						

		private static function getList($tipo, $dao, $chat_id){

			if ( $tipo == $IDA ) {
				$resultado = $dao->getListaIda($chat_id);
				$source = Config::getBotConfig("source");
				$texto = "<b>Ida para " . $source . "</b>\n";
			}
			else {
				$resultado = $dao->getListaVolta($chat_id);
				$source = Config::getBotConfig("source");
				$texto = "<b>Volta de " . $source . "</b>\n";
			}
			
			foreach ($resultado as $carona){
				$texto .= (string)$carona . "\n";
			}
			return $texto;
		}

		private static function isValidTime($t){
			$r = false;
			$horarioRaw = $t;
			$horarioRegex = '/^(?P<hora>[01]?\d|2[0-3])(?::(?P<minuto>[0-5]\d))?$/';
			$horarioValido = preg_match($horarioRegex, $horarioRaw, $resultado);
			if ($horarioValido){
				$hora = $resultado['hora'];
				$minuto = isset($resultado['minuto']) ? $resultado['minuto'] : "00";
				$travel_hour = $hora . ":" . $minuto;
				$r = true;
			} 
			$a = array($r , $travel_hour );
			return $a;
		}

		private static function addPool($tipo, $dao, $chat_id, $user_id, $username, $args){
			if ($tipo == $IDA) {
				$flag = '0';
				$m    = "ida";
				$h		= "10:00";
			} else {
				$flag = '1';
				$m    = "volta";
				$h		= "15:00";
			}
			$msg  = "Erro de parametros:\n";
			$msg .=  "Uso: /" . $m ." [horario] [vagas] [local] \nEx: /";
			$msg .= $m . " as " . $h . " 2 bb";
			error_log("total");
			error_log( print_r($args, true));
			error_log("strlen");
			error_log( strlen($args[1]) );
			error_log("count");
			error_log(count($args));
			if (count($args) == 2) {
				$a = self::isValidTime($args[1]);
				if ( $a[0] ){
					$dao->createCarpool($chat_id, $user_id, $username, 
												$travel_hour, $flag);
					$msg = "@" . $username . " oferece carona de " . $m;
					$msg .= " as " . $travel_hour;
				}
			}elseif (count($args) == 4) {
				$a = self::isValidTime($args[1]);
				if ( $a[0] && (gettype($args[2]) == 'integer')){
					$spots = $args[2];
					$location = "";
					for($c=3; $c < count($args); $c++)
						$location .= $args[$c] . " ";
					$dao->createCarpoolWithDetails($chat_id, $user_id, $username, 
														$travel_hour, $spots, $location, $flag);
					$msg  = "@" . $username . " oferece carona de " . $m . " às ";
					$msg .= $travel_hour . " com " . $spots . " vagas saindo de "; 
					$msg .= $location;
				} 
			}
			return $msg;		
		}

		private static function updatePool($dao, $chat_id, $user_id, $username, $args){
			if ($args[1] == $IDA) {
				$flag = '0';
				$m    = "ida";
				$h		= "10:00";
			} else {
				$flag = '1';
				$m    = "volta";
				$h		= "15:00";
			}
			$msg  = "Erro de parametros:\n";
			$msg .=  "Uso: /vagas " . $m . " [ ida | volta]  vagas \nEx: ";
			$msg .= "/vagas " . $m . " 2";
			if (count($args) == 3) {
				$spots = $args[2];
				$dao->updateSpots($chat_id, $user_id, $spots, $flag);
				$msg = "@".$username." atualizou o número de vagas de ";
				$msg .= $m. "para " . $spots;
			} 
		}

		private static function deletePool($dao, $chat_id, $user_id, $username, $args) {
			if ($args[1] == $IDA) {
				$flag = '0';
				$m    = "ida";
				$h		= "10:00";
			} else {
				$flag = '1';
				$m    = "volta";
				$h		= "15:00";
			}
			$msg  = "Erro de parametros:\n";
			$msg .=  "Uso: /remover [ida | volta] \nEx: /remover " . $m;
			if (count($args) == 2) {
				$dao->removeCarpool($chat_id, $user_id, $flag);
				$msg = "@".$username." removeu sua ". $m;
			} 
		}
		/*Espera o objeto 'message' já como array*/
		private static function processData($data){
			$processedData = array();

			/*TODO inicializar objeto telegramConnect com dados da mensagem*/
			$processedData['username'] = $data["message"]["from"]["username"];
			$processedData['chatId'] = $data["message"]["chat"]["id"];
			$processedData['userId'] = $data["message"]["from"]["id"];

			error_log( print_r( $processedData, true ) );

			return $processedData;
		}

		private static function processCommand($stringComando, &$args){
			/* Trata uma string que começa com '/', 
				seguido por no maximo 32 numeros, 
				letras ou '_', seguido ou não de '@nomeDoBot 
			*/
			$regexComando = '~^/(?P<comando>[\d\w_]{1,32})(?:@'. Config::getBotConfig('botName') .')?~';

			$command = NULL;
			$args = NULL;

			if(preg_match($regexComando, $stringComando, $match)){
				$command = $match['comando'];
				$stringComando = str_replace($match[0], "", $stringComando);
				$args = explode(" ", $stringComando);
			}

			error_log( print_r( $command, true ) );
			error_log( print_r( $args, true ) );
			error_log( strlen($args[1]) );
			error_log(count($args));
			return $command;
		}

		public static function direcionar($request){
			$args = array();
			$command = self::processCommand($request['message']['text'], $args);
			$dados = self::processData($request);

			$chat_id = $dados["chatId"];
			$user_id = $dados["userId"];
			$username = $dados['username'];
			
			/*Dividir cada comando em seu controlador*/
			if($username){
				$dao = new CaronaDAO();

				switch (strtolower($command)) {
					/*comandos padrão*/
					case 'regras':
						$msg = self::getRules();
						break;
					
					case 'help':
						$msg = self::getHelp();
						break;
						
					case 'teste':
						error_log("teste");
						$msg = "Versão 07/09/2017 - ChatId: $chat_id";
						break;

					case 'stop':
						$msg = "GALERA, OLHA A ZOEIRA...";
						break;
						
					case 'romulomendonca':
						$msg = "GALERA ME DEIXEM EM PAZ...";
						break;
                        
					case 'michaeldouglas':
						$msg = "NUNCA MAIS EU VOU DORMIR, NUNCA MAIS EU VOU DORMIR";
						break;
						
					case 'fortune':
						$msg = $dao->getFortune(false);
						break;


					/*Comandos de viagem*/
					case 'ida':
						if (count($args) == 1)
							$msg = self::getList($IDA, $dao, $chat_id);
						else 
							$msg = self::addPool($IDA, $dao, $chat_id, $user_id, $username, $args);
						break;

					case 'volta':
						if (count($args) == 1) 
							$msg = self::getList($VOLTA, $dao, $chat_id);			
						else
							$msg = self::addPool($VOLTA, $dao, $chat_id, $user_id, $username, $args);
						break;

					case 'vagas':
						$msg = self::updatePool($dao, $chat_id, $user_id, $username, $args);
						break;

					case 'remover':
						if (count($args) == 2)
							$msg = self::deletePool($dao, $chat_id, $user_id, $username, $args);
						break;
				
				}
			} else 
				$msg = "Registre seu username nas configurações do Telegram para utilizar o Bot.";
			TelegramConnect::sendMessage($chat_id, $msg);
		}
}

