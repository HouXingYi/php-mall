<?php

namespace app\admin\controller;

use think\captcha\facade\Captcha;

class Verify {

  public function index() {

    // 传入配置的字符串
    return Captcha::create("verifyConfig");

  }

}