<?php

namespace app\demo\middleware;

class Check {
  public function handle($request, \Closure $next) {
    dump("走到中间件啦");

    $request->type ="test request type";

    return $next($request);
  }  

  // 中间件结束调度
  public function end(\think\Response $response) {

  }
  
}