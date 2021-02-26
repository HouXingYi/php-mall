<?php
/**
 * Created by singwa
 * User: singwa
 * motto: 现在的努力是为了小时候吹过的牛逼！
 * Time: 03:44
 */
// [ 应用入口文件 ]
namespace think;

require __DIR__ . '/../vendor/autoload.php';

use app\common\business\Order;
use think\facade\Cache;

// 处理订单延迟队列

$orderBis = new Order();

while (true) {
    $result = Cache::zRange("order_status", 0, 1);
    $orderBis->checkOrderStatus();
}