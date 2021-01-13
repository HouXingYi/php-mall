<?php
namespace app\common\model\mysql;


use think\Model;

class Category extends BaseModel {

    /**
     * @param string $field
     * @return \think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function getNormalCategorys($field = "*") {
        $where = [
            "status" => config("status.mysql.table_normal"),
        ];

        $order = [
            "listorder" => "desc",
            "id" => "desc"
        ];
        $result = $this->where($where)
            ->field($field)
            ->order($order)
            ->select();

        return $result;
    }

    public function getLists($where, $num = 10) {

        // 按照 listorder 和 id进行倒叙
        $order = [
            "listorder" => "desc",
            "id" => "desc"
        ];
        // 状态不是删除的情况 status <>（不等于） 99
        $result = $this->where("status", "<>", config("status.mysql.table_delete"))
            ->where($where)
            ->order($order)
            ->paginate($num); // 分页
        //echo $this->getLastSql();exit; // 获取最后一次的sql语句，做调试用
        // var_dump($where);
        return $result;
    }

    /**
     * getChildCountInPids 带同学们解读
     * @param $condition
     * @return mixed
     */
    public function getChildCountInPids($condition) {
        // 构建对应的sql语句
        $where[] = ["pid", "in", $condition['pid']]; // 第一个where
        $where[] = ["status", "<>", config("status.mysql.table_delete")]; // 第二个where
        $res = $this->where($where)
            ->field(["pid", "count(*) as count"])
            ->group("pid")
            ->select();
        // echo $this->getLastSql();exit;
        return $res;
    }

    /**
     * getNormalByPid
     * 根据pid获取正常的分类数据
     * 提前准备好的代码，带同学们解读下这块代码 @9-5
     *
     * @param integer $pid
     * @param [type] $field
     * @return void
     */
    public function getNormalByPid($pid = 0, $field) {
        $where = [
            "pid" => $pid,
            "status" => config("status.mysql.table_normal"),
        ];
        $order = [
            "listorder" => "desc", 
            "id" => "desc"
        ];

        $res = $this->where($where)
            ->field($field)
            ->order($order)
            ->select();
        return $res;
    }

}