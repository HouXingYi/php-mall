<?php
/**
 * Created by singwa
 * User: singwa
 * motto: 现在的努力是为了小时候吹过的牛逼！
 * Time: 23:38
 */
namespace app\api\controller;
use app\common\business\Goods as GoodsBis;
use app\common\lib\Show;
use think\facade\Cache;
class Limit extends ApiBase {

    public function index() {
        // 我们有某一个场景，某一个API会去请求MySQL， 这个MySQL主要是写操作
        // 但是我们mysql qps 写 只能抗500，  我们如何做？

        //  限流策略 500内的请求， 之外的不请求给出提示，请稍候重试之类的。
        $key = "mall_limit_".time();
        $get = Cache::inc($key);

        if($get <= 500) {
            // 放行 执行你业务逻辑代码
            return $get;
        } else {
            // 给出提示
            return 0;
        }
    }
}