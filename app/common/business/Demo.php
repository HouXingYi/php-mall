<?php

namespace app\common\business;

use app\common\model\mysql\Demo as DemoModel;

class Demo {
  public function getDemoDataByCategoryId($categoryId, $limit = 10) {

    // 从模型层获取数据
    $model = new DemoModel();
    $res = $model -> getDemoDataByCategoryId($categoryId, $limit);

    if (empty($res)) { // 这个场景，思想一定要明确
      return [];
    }

    // 处理数据
    $categorys = config("category");
    foreach($res as $key => $result) {
      $res[$key]['categoryName'] = $categorys[$result["category_id"]] ?? "其他";
    }

    return $res;
  }
}