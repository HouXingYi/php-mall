<?php

namespace app\demo\controller;

use app\BaseController;

use app\common\business\Demo;

class M extends BaseController {
  public function index() {
    // 获取参数
    $categoryId = $this -> request -> param("category_id", 0, "intval");
    if (empty($categoryId)) {
      return show(config("status.error"), "参数错误");
    }

    // 业务层获取数据
    $demo = new Demo();
    $res = $demo->getDemoDataByCategoryId($categoryId);

    // 返回数据给前端
    return show(config("status.success"), "ok", $res);
  }
}