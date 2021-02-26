<?php
/**
 * Created by PhpStorm.
 * User: singwa
 * Date: 2019-11-26
 * Time: 09:01
 */
namespace app\demo\controller;

use app\BaseController;
use app\common\lib\Show;
use app\common\lib\Snowflake;
use think\facade\Cache;
use app\common\model\mysql\Category;

class Index extends BaseController {

    public function abc() {
        $result = Cache::zRange("order_status", 0, -1);
        dump($result);exit;
        return 123456;
    }

    public function hello() {
        return time();
    }
    public function proxy() {
        return "proxy:8182";
    }
    public function test() {
        $workId = rand(1, 1023);
        $orderId = Snowflake::getInstance()->setWorkId($workId)->id();
        dump($orderId);exit;
    }

    public function abcd () {
        $key = "x";

        if(empty($data)) {
            $data = [];
        }
        $costtime = 12.1;
        $data[$key]["pv"]++;
        $data[$key]["cost_time"] += $costtime;
    }

    public function test12() {
        try {
            (new Category())->updateById(19, ["listorder" => "abc"]);
        }catch (\Exception $e) {
            echo $e->getMessage();
            exit;
        }

        return Show::success();
    }
}