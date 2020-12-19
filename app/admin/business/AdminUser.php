<?php

namespace app\admin\business;
use app\common\model\mysql\AdminUser as AdminUserModel;

class AdminUser {
    public $userModelObj = null;

    public function __construct()
    {
        $this->userModelObj = new AdminUserModel();
    }

    public function login($data) {
        // 常规的做法：
        $user = $this->getAdminUserByUsername($data['username']);
        // 判断是否存在用户
        if(!$user) {
            // return show(config('status.error'), "不存在该用户");
            // return false;
            throw new \think\Exception("不存在该用户");
        }
        // 判断密码是否正确
        if($user['password'] != md5($data['password']."_singwa_abc")) {
            // return show(config('status.error'), "输入的密码错误");
            // return false;
            throw new \think\Exception("密码错误");
        }
        // 设置模拟错误陷阱， 比如数据库内容错误等
        // 更新最后登录时间
        $updateData = [
            "last_login_time" => time(),
            "update_time" => time()
        ];
        $res = $this->userModelObj->updateById($user['id'], $updateData);
        if(empty($res)) {
            // return show(config('status.error'), "登录失败");
            throw new \think\Exception("登录失败");
        }
        // 记录session
        session('adminUser', $user);        
        return true;
    }

    public function getAdminUserByUsername($username) {
        $user = $this->userModelObj->getAdminUserByUsername($username);

        if(empty($user) || $user->status != config("status.mysql.table_normal")) {
            return [];
        }

        $user = $user->toArray();
        return $user;
    }

    public static function updateById($id, $data) {

    }
}