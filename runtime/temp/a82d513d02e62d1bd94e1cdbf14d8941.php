<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:70:"C:\soft\www\wx_new/application/wap/view/first/service\service_ing.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>与<?php echo $to_user['nickname']; ?>聊天中</title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
    <link rel="stylesheet" href="/public/wap/first/crmeb/css/store_service.css" />
    <script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/module/store_service/unslider.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/module/store_service/moment.min.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/module/store_service/jquery.touchSwipe.min.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/module/store_service/mobile.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/module/store_service/msn.js"></script>

    <script type="text/javascript" src="/public/static/plug/wxApi.js"></script>
    <script>
        $jssdk = function(){return <?=\service\WechatService::jsSdk()?>;}
        window.wechat_share_title="<?=\service\SystemConfigService::get('wechat_share_title')?>";
        window.wechat_share_synopsis="<?=\service\SystemConfigService::get('wechat_share_synopsis')?>";
        window.wechat_share_img="<?=\service\SystemConfigService::get('wechat_share_img')?>";
        mapleWx($jssdk(), function () {
            this.onMenuShareAll({
                title: wechat_share_title || $('title').text(),
                desc: wechat_share_synopsis || $('title').text(),
                imgUrl: location.origin +wechat_share_img,
                link:location.href,
            });
        });
    </script>
    <script type="text/javascript" src="/public/static/plug/requirejs/require.js"></script>
<script>
    requirejs.config({
        urlArgs: "v=15615616515616556",
        map: {
            '*': {
                'css': '/public/static/plug/requirejs/require-css.js'
            }
        },
        shim: {
            'iview': {
                deps: ['css!iviewcss']
            },
            'layer': {
                deps: ['css!layercss']
            },
            'ydui': {
                deps: ['css!yduicss']
            },
            'vant': {
                deps: ['css!vantcss']
            },
            'cityselect': {
                deps: ['css!yduicss']
            }
        },
        baseUrl: '//' + location.hostname + '/public/',
        paths: {
            'static': 'static',
            'vue': 'static/plug/vue/dist/vue.min',
            'axios': 'static/plug/axios.min',
            'iview': 'static/plug/iview/dist/iview.min',
            'iviewcss': 'static/plug/iview/dist/styles/iview',
            'lodash': 'static/plug/lodash',
            'layer': 'static/plug/layer/layer',
            'layercss': 'static/plug/layer/theme/default/layer',
            'jquery': 'static/plug/jquery-1.10.2.min',
            'moment': 'static/plug/moment',
            'sweetalert': 'static/plug/sweetalert2/sweetalert2.all.min',
            'helper':'static/plug/helper',
            'store':'/public/wap/first/crmeb/module/store',
            'better-scroll':"static/plug/better-scroll",
            'ydui':"static/plug/ydui/ydui",
            'yduicss':"static/plug/ydui/ydui-px",
            'vant':"static/plug/vant/vant.min",
            'vantcss':"static/plug/vant/vant",
            'cityselect':"static/plug/ydui/cityselect",
            'reg-verify':"static/plug/reg-verify"
        }
    });
</script>
    
    <script type="text/javascript" src="/public/wap/first/crmeb/js/common.js"></script>
</head>
<body>

<div class="kj"></div>
<div class="prompt"><p></p></div>
<script>
    var site="http://<?php echo $_SERVER['SERVER_NAME']; ?>"; //定义站点域名
    var bq_m="/public/wap/first/crmeb/images/storeservice/"; //定义表情路径
    //获取双方信息
    var uid="<?php echo $user['uid']; ?>";
    var uavatar="<?php echo $user['avatar']; ?>";
    var unickname="<?php echo $user['nickname']; ?>";
    var to_uid="<?php echo $to_user['uid']; ?>";
    var to_uavatar="<?php echo $to_user['avatar']; ?>";
    var to_unickname="<?php echo $to_user['nickname']; ?>";
    var mer_id="<?php echo $merchant['id']; ?>";
    var mer_name="<?php echo $merchant['mer_name']; ?>";

    $(function(){
        //初始化
        c=($(window).height()/2)-20;
        $(".prompt p").css("margin-top",c+"px");//信息提示框居中

        moban_duihua();
        // $(".kj").html(moban_duihua());//加载聊天框html
        moban_duihua_js();  //初始化聊天框中js事件

        setInterval("refresh_msn()",1500);  //每过两秒读取一次消息
    });
</script>
<script>
    requirejs(['vue','store','helper'],function(Vue,storeApi,$h){
        mapleWx($jssdk(),function(){
            var _this = this;
            document.querySelector('.msn i.img_icon').onclick = function(){
                storeApi.wechatUploadImg(_this,9,function(res){
                    for (var i = 0; i < res.length; i++) {
                        var img = '<img class="img" src="'+res[i]+'" onclick="img_detail($(this))" />';
                        add_msn(img,"html");
                    }
                });
            }
        });
    });
    function img_detail(_this){
        var imgurl = site+_this.attr("src")
        var imgArray = [];
        imgArray.push(imgurl);
        wx.previewImage({
            current: imgurl,
            urls: imgArray
        });
    }
</script>


<!--crmEb-->
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
