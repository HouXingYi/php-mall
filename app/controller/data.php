<?php
namespace app\controller;

use app\BaseController;
use think\facade\Db;

class Data extends BaseController {
    public function index() {
        $res = Db::table("mall_demo") -> where("id", 1) -> find();

        // 通过容器的方式来处理
        // $res = app("db") -> table("mall_demo") -> where("id", 1) -> find();
        dump($res);
    }
}