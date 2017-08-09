<?php
	require_once "Config.php";
	require_once "TelegramConnect.php";
	require_once "CaronaDAO.php";
	require_once "Carona.php";

	class Roteador{

		private $IDA	= "ida";
		private $VOLTA = "volta";
		private $msg   = "";
		
		private getRules();
		private getHelp();
		private getList();
		private addPool();
		private deletePool();
		private updatePool();

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
						$msg = getRules();
						break;
					
					case 'help':
						$msg = getHelp();
						break;
						
					case 'teste':
						error_log("teste");
						$msg = "Versão 1.5.1 - ChatId: $chat_id";
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
							$msg = getlist($IDA);
						else 
							$msg = addPool($IDA, $args);
						break;

					case 'volta':
						if (count($args) == 1) 
							$msg = getList($VOLTA);			
						else
							$msg = addPool($VOLTA, $args);
						break;

					case 'vagas':
						$msg = updatePool($args);
						break;

					case 'remover':
						if (count($args) == 2)
							$msg = deletePool($args);
						break;
				
				}
			} else 
				$msg = "Registre seu username nas configurações do Telegram para utilizar o Bot.";
			TelegramConnect::sendMessage($chat_id, $msg);
		}
}

require_once "functions.php";
