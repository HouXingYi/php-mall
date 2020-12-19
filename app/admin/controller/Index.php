<?php

namespace app\admin\controller;

use think\facade\View;
use app\BaseController;

class Index extends BaseController {

  public function index() {
    // echo "hello-admin";
    return View::fetch();
  }

  public function welcome() {
    return View::fetch();
  }

}