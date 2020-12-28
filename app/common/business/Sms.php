<?php
/**
 * Created by singwa
 * User: singwa
 * motto: 现在的努力是为了小时候吹过的牛逼！
 * Time: 23:41
 */
declare(strict_types=1);
namespace app\common\business;
use app\common\lib\sms\AliSms;
use app\common\lib\Num;
use app\common\lib\ClassArr;
class Sms {
    public static function sendCode(string $phoneNumber, int $len, string $type = "ali") :int{

        // 我们需要生成我们短信验证码 4位  6位
        // var_dump($len);
        $code = Num::getCode($len);
        // var_dump($code);
        //$sms = AliSms::sendCode($phoneNumber, $code);



        // 工厂模式
        // $type = ucfirst($type); // 首字母大写
        // $class = "app\common\lib\sms\\".$type."Sms";
        // $sms = $class::sendCode($phoneNumber, $code);

        // 反射模式
        // $classStats = ClassArr::smsClassStat(); // 返回类库列表
        // $classObj = ClassArr::initClass($type, $classStats); // 根据 列表 和 type 返回对应的实例
        // $sms = $classObj::sendCode($phoneNumber, $code); // 调用

        // if($sms) {
        // 直接将短信存到redis中
        if($code) {
            // 需要把我们得短信验证码记录到redis 并且需要给出一个失效时间 1分钟
            // 1 、我们得PHP环境是否有 redis扩展 redis.dll  linux unix：redis.so
            // 2 redis服务
            // var_dump($code);
            // var_dump(config("redis.code_pre").$phoneNumber);
            // 缓存 验证码，60秒过期 // 将验证码直接返回前端以便调试
            cache(config("redis.code_pre").$phoneNumber, $code, config("redis.code_expire"));
        }

        return $code;
    }
}