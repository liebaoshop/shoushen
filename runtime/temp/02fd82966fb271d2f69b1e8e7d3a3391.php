<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:70:"C:\soft\www\wx_new/application/wap/view/first/service\service_new.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>聊天记录</title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
    <link rel="stylesheet" href="/public/wap/first/crmeb/css/store_service.css" />
    <script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/public/wap/first/crmeb/module/store_service/moment.min.js"></script>
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

<div class="kj"><div class="list"></div></div>
<div class="prompt"><p></p></div>
<script>
    var last_time = 0;
    var interval;
    $(function(){
        //初始化
        c=($(window).height()/2)-20;
        $(".prompt p").css("margin-top",c+"px");//信息提示框居中
        ts("正在加载最近联系人");

        refresh_chat_list();
    });
    //获取聊天记录信息列表
    function refresh_chat_list(){
        var query = new Object();
        query.last_time = last_time;
        $.ajax({
             type:"post",
             url:"/wap/auth_api/refresh_msn_new",
             data:query,
             dataType:"json",
             async:true,
             success: function(data){
                if(last_time == 0 && !interval){
                    interval = setInterval("refresh_chat_list()",1000);//每过两秒读取一次消息
                    ts_no();//关闭提示框
                }
                if(data.code == 200 && data.data.length > 0)set_chat_list(data.data);
            }
        });
    }

    function set_chat_list(data){
        console.log(data);
        var html = '';
        for(var i=0;i<data.length;i++){
            html += get_html(data[i]);
            if($("#"+data[i]["to_info"]["uid"]+"_"+data[i]["to_info"]["mer_id"]).length){
                $("#"+data[i]["to_info"]["uid"]+"_"+data[i]["to_info"]["mer_id"]).remove();
            }
        }
        console.log(html);
        if(last_time > 0)
            $(".list").prepend(html);
        else
            $(".list").html(html);
        last_time = data[0]["add_time"];
    }

    function get_html(data){
        var html = '<div onclick="window.location.href=\'/wap/service/service_ing/to_uid/'+data["to_info"]["uid"]+'/mer_id/'+data["to_info"]["mer_id"]+'.html\'" id="'+data["to_info"]["uid"]+"_"+data["to_info"]["mer_id"]+'">';
        html += '<span>';
        html += '<img src="'+data["to_info"]["avatar"]+'">';
        html += '<em>';
        html += '<h1>'+data["to_info"]["mer_name"]+data["to_info"]["nickname"]+'</h1>';
        html += '<h2>'+timedate(data["add_time"],1)+'</h2>';
        html += '<h3>'+data["msn"]+'</h3>';
        if(data["count"] > 0)
            html += '<h4>'+data["count"]+'</h4>';
        html += '</em>';
        html += '</span>';
        html += '</div>';
        return html;
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
