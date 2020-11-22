<?php
namespace app\controller;

use app\BaseController;

class Demo extends BaseController
{
    public function show() {
        
        $result = [
            "status" => 1,
            "message"  => "OK",
            "result" => [
                "id" => 1
            ]
        ];

        $header = [
            "Token" => "1dafaf"
        ];

        // 返回json格式的数据
        return json($result, 200, $header);
        // return '111222'; 
    }

    public function request() {
        // 输出内容
        dump($this -> request -> param());
        dump($this -> request -> get());
    }

}