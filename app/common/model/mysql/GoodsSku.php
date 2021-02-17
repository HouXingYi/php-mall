<?php

namespace app\common\model\mysql;
use think\Model;

class GoodsSku extends BaseModel {

    public function goods() {
        // hasOne('关联模型名','外键名','主键名',['模型别名定义'],'join类型'); // 一对一关联查询
        return $this->hasOne(Goods::class, "id",  "goods_id");
    }

    public function getNormalByGoodsId($goodsId = 0) {
        $where = [
            "goods_id" => $goodsId,
            "status" => config("status.mysql.table_normal"),
        ];

        return $this->where($where)->select();
    }

    public function  incStock($id, $num) {
        return $this->where("id", "=", $id)
            ->inc("stock", $num)
            ->update();
    }
}