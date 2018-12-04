<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:65:"C:\soft\www\wx_new/application/wap/view/first/my\order_reply.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>评价页面</title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
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

<body>
<div id="order-reply" class="user-assess">
    <section>
        <div class="pro-info flex">
            <div class="picture"><img src="<?php echo $cartInfo['cart_info']['productInfo']['image']; ?>" /></div>
            <div class="product-box flex">
                <p class="title"><?php echo $cartInfo['cart_info']['productInfo']['store_name']; ?></p>
                <p class="description"><?php echo isset($cartInfo['cart_info']['productInfo']['attrInfo']) ? $cartInfo['cart_info']['productInfo']['attrInfo']['suk'] : ''; ?></p>
                <p class="count"><span class="price">￥<?php echo $cartInfo['cart_info']['truePrice']; ?></span>X<?php echo $cartInfo['cart_info']['cart_num']; ?></p>
            </div>
        </div>
        <div class="message-box">
            <div class="text-wrapper">
                <textarea v-model="comment" placeholder="宝贝满足你的期待么？说说你的想法，分享给想买的他们吧~"></textarea>
            </div>
            <div class="upload-img flex">
                <div class="picture" v-for="pic in pics" v-cloak=""><img :src="pic" /></div>
                <div class="picture add-img flex" @click="upload" v-show = 'pics.length <= 6'>
                    <img src="/public/wap/first/crmeb/images/camera-icon.png" />
                    <p>添加图片</p>
                </div>
            </div>
        </div>
        <div class="user-score">
            <div class="score-item flex">
                <span class="txt">产品评分</span>
                <div class="star-wrapper flex" data-type="product_score">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <span class="count" v-show="product_score > 0" v-cloak=""><i v-text="product_score">1</i>分</span>
            </div>
            <div class="score-item flex">
                <span class="txt">商家服务</span>
                <div class="star-wrapper flex" data-type="service_score">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <span class="count" v-show="service_score > 0" v-cloak=""><i v-text="service_score"></i>分</span>
            </div>
            <a href="javascript:void(0);" class="address-add" @click="submit" style=" z-index: 99;position: fixed;left: 0;bottom: 0;width: 100%;height: .7rem;line-height: .7rem;text-align: center;background-color: #ff8d10;text-align: center;color: #fff;">立即评价</a>
        </div>
    </section>
</div>
<script type="text/javascript">
    requirejs(['vue','store','helper'],function(Vue,storeApi,$h){
        new Vue({
            el:"#order-reply",
            data:{
                unique:"<?=$cartInfo['unique']?>",
                comment:'',
                pics:[],
                product_score:0,
                service_score:0
            },
            methods:{
                upload:function(){
                    var that = this;
                    mapleWx($jssdk(),function(){
                       storeApi.wechatUploadImg(this,6 - that.pics.length,function(res){
                           that.pics = that.pics.concat(res);
                       });
                    });
                },
                submit:function(){
                    if(this.product_score < 1) return $h.pushMsgOnce('请为产品评分');
                    if(this.service_score < 1) return $h.pushMsgOnce('请为商家服务评分');
                    $h.loadFFF();
                    storeApi.userCommentProduct(this.unique,this.$data,function(res){
                        $h.loadClear();
                        $h.pushMsgOnce('评价成功',function(){
                            location.replace(document.referrer);
                        });
                    },function(){ $h.loadClear();return true;});
                }
            },
            mounted:function(){
                var that = this;
                $('.star-wrapper span').on('click', function(){
                    var p = $(this).parent(),type = p.data('type'),l = $(this).prevAll().length;
                    p.find('span').removeClass('active');
                    $(this).addClass('active').prevAll().addClass('active');
                    that[type] = ++l;
                })
            }
        })
    });
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
