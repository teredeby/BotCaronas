<?php
require_once "Config.php";
class TelegramConnect
{
    /*TODO make methods non-static, implement constructor*/
    public static function sendMessage ($chatId, $message) {
		error_log($message);
        $url = Config::getBotConfig("ApiRequestUrl")."/sendMessage?chat_id=".$chatId."&text=".urlencode($message);
		error_log($url);
        file_get_contents($url);
    }
}