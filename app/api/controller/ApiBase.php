<?php
/**
 * apiBase 相当于 API模块下的公告 控制器 如果不需要登录场景继承我们这个控制器
 * 那么如果需要登录的API 则继承 AuthBase 控制器
 */
namespace app\api\controller;

use app\BaseController;
use think\exception\HttpResponseException;

class ApiBase extends BaseController {

    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
    }

    public function show(...$args) {
        throw new HttpResponseException(show(...$args));
    }
}