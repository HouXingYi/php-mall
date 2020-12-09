<?php

namespace app\demo\controller;

use app\BaseController;
use app\model\Demo;

// 展示不推荐的获取数据的做法（未分层），所有层混在一起
class M extends BaseController {
  public function index() {
    $categoryId = $this -> request -> param("category_id", 0, "intval");
    if (empty($categoryId)) {
      return show(config("status.error"), "参数错误");
    }

    // 
    $model = new Demo();
    $res = $model -> where("category_id", $categoryId)
                  ->limit(10)
                  ->order("id", "desc")
                  ->select();

    // halt($res); // dump(); exit;
    if (empty($res->toArray())) { // 这个场景，思想一定要明确
      return show(config("status.success"), "数据为空");
    }

    $categorys = config("category");
    foreach($res as $key => $result) {
      $res[$key]['categoryName'] = $categorys[$result["category_id"]] ?? "其他";
    }

    return show(config("status.success"), "ok", $res);
  }
}