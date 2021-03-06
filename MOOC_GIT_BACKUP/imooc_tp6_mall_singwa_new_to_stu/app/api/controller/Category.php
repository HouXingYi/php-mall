<?php
/**
 * Created by singwa
 * User: singwa
 * motto: 现在的努力是为了小时候吹过的牛逼！
 * Time: 16:48
 */
namespace app\api\controller;
use app\common\business\Category as CategoryBis;

class Category extends ApiBase {
    public function index() {
        // 获取所有分类的内容

        try {
            $categoryBusObj = new CategoryBis();
            $categorys = $categoryBusObj->getNormalAllCategorys();
        }catch (\Exception $e) {
            // 加日志 小伙伴自行完成
            return show(config("status.success"), "内部异常");
        }
        if(!$categorys) {
            return show(config("status.success"), "数据为空");
        }

        $result = \app\common\lib\Arr::getTree($categorys);
        $result = \app\common\lib\Arr::sliceTreeArr($result);
        return show(config("status.success"), "OK", $result);
    }

    /**
     * api/category/search/51  预留给大家的作业记得完成
     * 商品列表页面中 按栏目检索的内容
     * @return \think\response\Json
     */
    public function search() {
        $result = [
            "name" => "我是一级分类",
            "focus_ids" => [],
            "list" => [
                [
                    ["id" => 1, "name" => "二级分类1"],
                    ["id" => 2, "name" => "二级分类2"],
                    ["id" => 3, "name" => "二级分类3"],
                    ["id" => 4, "name" => "二级分类4"],
                    ["id" => 5, "name" => "二级分类5"],
                ],

//                [
//                    ["id" => 11, "name" => "三级分类1"],
//                    ["id" => 12, "name" => "三级分类2"],
//                    ["id" => 13, "name" => "三级分类3"],
//                    ["id" => 14, "name" => "三级分类4"],
//                    ["id" => 15, "name" => "三级分类5"],
//                ],
            ],
        ];

        return show(config("status.success"), "ok", $result);
    }

    /**
     * 获取子分类  category/sub/2   预留给大家的作业记得完成
     * @return \think\response\Json
     */
    public function sub() {
        $result = [
            ["id" => 21, "name" => "点二到三分类1"],
            ["id" => 22, "name" => "点二级三分类2"],
            ["id" => 33, "name" => "点二到三分类3"],
            ["id" => 134, "name" => "点二到三分类4"],
            ["id" => 154, "name" => "点二到三分类5"],
        ];
        return show(config("status.success"), "ok", $result);
    }
}