<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:62:"C:\soft\www\wx_new/application/wap/view/first/my\user_pro.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta name="browsermode" content="application"/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- 禁止百度转码 -->
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <!-- uc强制竖屏 -->
    <meta name="screen-orientation" content="portrait">
    <!-- QQ强制竖屏 -->
    <meta name="x5-orientation" content="portrait">
    <title>我的余额</title>
    <link rel="stylesheet" type="text/css" href="/public/wap/first/sx/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="/public/wap/first/sx/css/style.css" />
    <script type="text/javascript" src="/public/wap/first/sx/js/media.js"></script>
    <script type="text/javascript" src="/public/wap/first/sx/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/js/common.js"></script>
</head>

<body>
<div class="promotion-statistics-wrapper">
    <header>
        <div class="count-wrapper">
            <div class="count-con">
                <p><?php echo $userInfo['now_money']; ?></p>
                <span>我的余额</span>
            </div>
        </div>
        <a class="up-lv-btn" href="<?php echo url('my/extract'); ?>">立即提现</a>
    </header>
    <div class="user-count-wrapper">
        <ul>
            <li class="flex">
                <p class="label"><i class="index-icon02 icon-promotion"></i>昨日推广佣金</p>
                <p class="count"><?php echo $number; ?>元</p>
            </li>
            <li class="flex">
                <p class="label"><i class="index-icon02 icon-mention"></i>累计获得佣金</p>
                <p class="count"><?php echo $allnumber; ?>元</p>
            </li>
            <li class="flex">
                <p class="label"><i class="index-icon02 icon-commission"></i>累计已提佣金</p>
                <p class="count"><?php echo $extractNumber; ?>元</p>
            </li>
            <li class="flex">
                <a href="<?php echo url('my/balance'); ?>"><i class="index-icon02 icon-detail"></i>佣金明细</a>
                <span class="more-icon"></span>
            </li>
            <?php /*  <li class="flex margin15">
                  <a href=""><i class="index-icon02 icon-description"></i>推广详情</a>
                  <span class="more-icon"></span>
              </li>  */ ?>
        </ul>
    </div>
</div>
<?php /*  <section id="right-nav" class="right-barnav" >
      <a class="rb-home" href="<?php echo Url('Index/index'); ?>"></a>
      <a class="rb-car" href="<?php echo Url('Store/cart'); ?>"></a>
      <a class="rb-server" href="<?php echo Url('Service/service_list'); ?>"></a>
  </section>  */ ?>
<section id="right-nav" class="right-menu-wrapper">
    <a class="home" href="<?php echo Url('Index/index'); ?>"></a>
    <a class="buy-car" href="<?php echo Url('Store/cart'); ?>"></a>
</section>


</body>
</html>