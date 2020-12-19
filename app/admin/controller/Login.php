<?php

namespace app\admin\controller;

use think\facade\View;
use app\common\model\mysql\AdminUser;

class Login extends AdminBase {

    // 已登录的情况下直接到首页
    public function initialize() {
        if($this->isLogin()) {
            return $this->redirect(url("index/index"));
        }
    }
    public function index() {
        return View::fetch();
    }
    public function md5() {
        // admin   admin
        halt(session(config("admin.session_admin")));
        // echo md5("123456_singwa_abc");
    }

    public function check() {

        if(!$this->request->isPost()) {
            return show(config("status.error"), "请求方式错误");
        }

        // 参数检验 1、原生方式  2、TP6 验证机制
        $username = $this->request->param("username", "", "trim");
        $password = $this->request->param("password", "", "trim");
        $captcha = $this->request->param("captcha", "", "trim");

        $data = [
            'username' => $username,
            'password' => $password, 
            'captcha' => $captcha,
        ];
        // 验空 和 验证图像验证码
        $validate = new \app\admin\validate\AdminUser();
        if(!$validate->check($data)) {
            return show(config("status.error"), $validate->getError());
        }
        //if(empty($username) || empty($password) || empty($captcha)) {
            //return show(config("status.error"), "参数不能为空");
        //}
        // 需要校验验证码
        //if(!captcha_check($captcha)) {
            // 验证码校验失败
            //return show(config("status.error"), "验证码不正确");
        //}

        // 调试
        // return show(config('status.error'), "不存在该用户");


        // 到这一步有问题，感觉没有验证
        try {
            $result = (new \app\admin\business\AdminUser())->login($data);
        }catch (\Exception $e) {
            return show(config("status.error"), $e->getMessage());
        }

        // 返回1表示成功
        // var_dump($result);

        // return show(config("status.success"), (array)$result, (array)$result);

        if($result) {
            return show(config("status.success"), "登录成功");
        } else {
            return show(config("status.error"), "登录失败");
        }

    }
}