<?php

namespace app\demo\controller;

use app\BaseController;

use app\common\business\Demo;

class E extends BaseController {
  public function index() {
    // echo $abc; // 故意报错测试报错处理抓取 // 没有状态码
    throw new \think\exception\HttpException(404, "找不到相应的数据"); // 自定义错误，有状态码
  }

  public function abc() {
    dump($this->request->type);
  }
}