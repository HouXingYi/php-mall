<?php
use think\facade\Route;

Route::rule("smscode", "sms/code", "POST");
Route::resource('user', 'User');

Route::rule("lists", "mall.lists/index"); // 商品列表

Route::rule("subcategory/:id", "category/sub");

Route::rule("detail/:id", "mall.detail/index"); // 商品详情

Route::resource("order", "order.index");