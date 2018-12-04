<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:64:"C:\soft\www\wx_new/application/wap/view/first/my\order_pink.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title><?php echo $store_combination['title']; ?></title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
<script type="text/javascript" src="/public/static/plug/jquery.downCount.js"></script>
<script type="text/javascript" src="/public/wap/first/crmeb/js/car-model.js"></script>
<style>
    .pk-box .pt-info .pt-state .pt-state-info{width: initial;  text-align: center;}
</style>

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

<body style="background-color:#f5f5f5;">
    <!-- 拼客 -->
    <section class="pk-box" id="store_detail">
        <div class="comfirm-wrapper">
            <ul class="product_list">
                <li>
                    <div class="goods-img pk-list-img"><img src="<?php echo $store_combination['image']; ?>"></div>
                    <div class="goods-info pk-list-info">
                        <div class="goods-detail">
                            <p class="name"><?php echo $store_combination['title']; ?></p>
                            <p class="pk-list-all"><em><?php echo $pinkT['people']; ?></em>人团·已团<em><?php echo $store_combination['sales']; ?></em>件</p>
                            <p class="carnum pk-list-carnum">
                                <span class="price">￥<em><?php echo $pinkT['price']; ?></em><span class="discount">拼团劲省<i><?php echo floatval($store_combination['product_price']-$pinkT['price']);?></i>元</span></span>
                            </p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 拼客人数 -->
        <div class="pk-number">
            <div class="pk-number-box">
                <ul>
                    <li>
                        <img src="<?php echo $pinkT['avatar']; ?>"/>
                        <div class="name">团长</div>
                    </li>
                    <?php if(is_array($pinkAll) || $pinkAll instanceof \think\Collection || $pinkAll instanceof \think\Paginator): $i = 0; $__LIST__ = $pinkAll;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <li><img src="<?php echo $vo['avatar']; ?>"/></li>
                    <?php endforeach; endif; else: echo "" ;endif; for ($i=1;$i<=$count;$i++){?>
                        <li class="unknown"></li>
                    <?php }?>
                </ul>
            </div>
            <div class="pk-number-con">
                    <?php if($pinkBool == 1 && $userBool): ?>
                        <div class="pk-buy"><a href="<?php echo Url('orderPinkOld',['uni'=>$current_pink_order]); ?>">查看订单</a></div>
                        <div class="pt-info">
                                <div class="pt-state pt-success">
                                    <div class="pt-state-info">拼团成功</div>
                                    <span>商家正在努力发货，请耐心等待</span>
                                </div>
                        </div>
                    <?php elseif($pinkBool == 1 && !$userBool): ?>
                        <div class="pk-buy"><a href="<?php echo Url('store/combination'); ?>">返回拼团列表</a></div>
                        <div class="pt-info">
                            <div class="pt-state pt-success">
                                <div class="pt-state-info">拼团已完成</div>
                                <span>请您参加别的拼团</span>
                            </div>
                        </div>
                    <?php elseif($pinkBool == 2 && $userBool): ?>
                        <div class="pk-buy"><a href="<?php echo Url('orderPinkOld',['uni'=>$current_pink_order]); ?>">查看订单</a></div>
                        <div class="pt-info">
                            <div class="pt-state pt-error">
                                <div class="pt-state-info">拼团时间已到</div>
                                <span>退款中</span>
                            </div>
                        </div>
                    <?php elseif($pinkBool == 3): ?>
                        <div class="pk-buy"><a href="<?php echo Url('store/combination'); ?>">返回拼团列表</a></div>
                        <div class="pt-info">
                            <div class="pt-state pt-error">
                                <div class="pt-state-info">拼团已结束</div>
                                <span>请您参加别的拼团</span>
                            </div>
                        </div>
                    <?php elseif($pinkBool == 6): ?>
                        <div class="pk-buy"><a href="<?php echo Url('store/combination'); ?>">返回拼团列表</a></div>
                        <div class="pt-info">
                            <div class="pt-state pt-error">
                                <div class="pt-state-info">拼团人数已满</div>
                                <span>等待订单状态</span>
                            </div>
                        </div>
                    <?php elseif($pinkBool == 2 && !$userBool): ?>
                        <div class="pk-buy"><a href="<?php echo Url('store/combination'); ?>">返回拼团列表</a></div>
                        <div class="pt-info">
                            <div class="pt-state pt-error">
                                <div class="pt-state-info">拼团已结束</div>
                                <span>请您参加别的拼团</span>
                            </div>
                        </div>
                    <?php elseif(!$pinkBool && !$userBool): ?>
                            <div class="pk-number-con-number">仅剩<em><?php echo $count; ?></em>个名额</div>
                            <div class="pk-number-con-time" v-pre>
                                剩余
                                <div style="height: .1rem"></div>
                                <div class="count-time" data-time="<?php echo date('Y/m/d H:i:s',$pinkT['stop_time']); ?>">
                                    <span class="hours">00</span>
                                    :
                                    <span class="minutes">00</span>
                                    :
                                    <span class="seconds">00</span>
                                </div>
                            </div>
                            <div class="pk-buy"><a href="javascript:void(0);" @click="goBuy" >一键参团</a></div>
                            <div class="pt-info">
                            <div class="pt-state pt-success">
                                <div class="pt-state-info">正在拼团中...</div>
<!--                                <span>参加拼团</span>-->
                            </div>
                        </div>
                    <?php elseif(!$pinkBool && $userBool): ?>
                            <div class="pk-number-con-number">仅剩<em><?php echo $count; ?></em>个名额</div>
                            <div class="pk-number-con-time" v-pre>
                                剩余
                                <div style="height: .1rem"></div>
                                <div class="count-time" data-time="<?php echo date('Y/m/d H:i:s',$pinkT['stop_time']); ?>">
                                    <span class="hours">00</span>
                                    :
                                    <span class="minutes">00</span>
                                    :
                                    <span class="seconds">00</span>
                                </div>
                            </div>
                            <div class="pk-buy shares-btn" @click="sharesBtn"><a href="javascript:void(0);">邀请好友</a></div>
                            <div class="shares-model" style="display: none;"><img style="position: fixed;left: 0;top: 0;width: 100%;height: 100%;" src="/public/wap/first/crmeb/images/share-info.png"></div>
                            <div class="pt-info">
                            <div class="pt-state pt-success">
                                <div class="pt-state-info">正在拼团中...</div>
                                <span></span>
                            </div>
                        </div>
                    <?php endif; ?>
            </div>
        </div>
        <div class="model-bg"></div>
        <div class="template-pro-list">
            <div class="pro-title like-title"><i class="like-line"></i><span>你可能还喜欢</span><i class="like-line right"></i></div>
            <div class="item-box">
                <ul class="flex">
                    <?php if(is_array($store_combination_host) || $store_combination_host instanceof \think\Collection || $store_combination_host instanceof \think\Paginator): $i = 0; $__LIST__ = $store_combination_host;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <li>
                            <a href="<?php echo Url('Store/combination_detail',array('id'=>$vo['id'])); ?>">
                                <div class="picture"><img src="<?php echo $vo['image']; ?>" /></div>
                                <div class="pro-content">
                                    <div class="pro-name"><?php echo $vo['title']; ?></div>
                                    <div class="pro-infos">
                                        <span class="price">￥<?php echo $vo['price']; ?></span>
                                        <span class="count fr">已拼<?php echo $vo['sales']; ?>单</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function() {
            $('.shares-btn').on('click', function(){
                $('.shares-model').css('display', 'block');
                $('.shares-model').on('click' , function(){
                    $(this).css('display', 'none');
                });
            });
            $('.shares-model').on('touchmove',function(e){
                e.preventDefault();
            })
            $('.count-time').downCount({
                date: $('.count-time').attr('data-time'),
                offset: +8
            });
        });
    </script>
    <script type="text/javascript">
        window.$product = <?php unset($storeInfo['description']); echo json_encode($storeInfo);?>;
        window.$pinkT = <?php echo json_encode($pinkT);?>;
        (function ($) {
            requirejs(['vue', 'axios', 'helper', 'store'], function (Vue, axios, $h, storeApi){
                new Vue({
                    el: "#store_detail",
                    data: {
                        product: $product,
                        pinkT: $pinkT,
                        productValue: {},
                        productCardInfo: {},
                        status: {like: false, collect: false},
                        cartNum: 1
                    },
                    methods: {
                        sharesBtn:function () {
                            $('.shares-model').css('display', 'block');
                            $('.shares-model').on('click' , function(){
                                $(this).css('display', 'none');
                            });
                        },
                        goBuy: function () {
                            that = this;
                            storeApi.goBuy({
                                cartNum: that.cartNum,
                                productId: this.product.product_id,
                                combinationId: this.product.id
                            }, function (cartId) {
                                location.href = $h.U({
                                    c: 'store',
                                    a: 'combination_order',
                                    q: 'cartId='+cartId+'&pinkId='+that.pinkT.id
                                });
                            });
                        },
                        setProductCardInfo: function (info) {
                            info || (info = {});
                            this.$set(this, 'productCardInfo', {
                                image: info.image !== undefined ? info.image : this.product.image,
                                price: info.price !== undefined ? info.price : this.product.price,
                                stock: info.stock !== undefined ? info.stock : this.product.stock
                            });
                        },
                        pushMsg: function (msg, fn) {
                            $h.pushMsg(msg, fn)
                        },
                        init: function () {
                            $('.count-time').downCount({
                                date: $('.count-time').attr('data-time'),
                                offset: +8
                            });
                        },
                        getCartNum: function () {
                            var that = this;
                            storeApi.getCartNum(function (cartNum) {
                                that.cartNum = cartNum;
                            });
                        }
                    },
                    mounted: function () {
                        var wxApi = mapleWx($jssdk(), function () {
                            this.onMenuShareAll({
                                title: $product.store_name,
                                desc: $product.store_name,
                                imgUrl: location.origin + $product.image,
                                link: location.href
                            });
                        });
                        this.getCartNum();
                        this.init();
                        this.setProductCardInfo();
                    }
                });
            });
        })($);
    </script>
</body>


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
