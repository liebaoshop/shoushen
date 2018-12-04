<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:75:"C:\soft\www\wx_new/application/wap/view/first/store\combination_detail.html";i:1538295312;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>
<?php echo $storeInfo['title']; ?>
</title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
<link rel="stylesheet" href="/public/static/plug/swiper/swiper-3.4.1.min.css">
<script type="text/javascript" src="/public/static/plug/swiper/swiper-3.4.1.jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/public/wap/first/sx/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/sx/css/swiper-3.4.1.min.css" />
<link rel="stylesheet" type="text/css" href="/public/wap/first/sx/font/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/public/wap/first/sx/css/style.css" />
<script type="text/javascript" src="/public/wap/first/sx/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/layer/layer.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery.downCount.js"></script>
<script type="text/javascript" src="/public/wap/first/sx/js/swiper-3.4.1.jquery.min.js"></script>
<script type="text/javascript" src="/public/wap/first/sx/js/iscroll.js"></script>

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

<body style="background:#f5f5f5">
    <div class="wrapper product-con" id="store_detail">
        <section>
            <!-- 未关注 -->
            <?php if(!$user['subscribe']): ?>
            <div class="not-concerned flex">
                <div class="left-wrapper flex">
                    <img class="logo" src="<?php echo $site_logo; ?>" alt="">
                    <span><?php echo $site_name; ?></span>
                </div>
                <a class="go" href="javascript:void(0)" @click="ShowQrcode">立即关注</a>
            </div>
            <?php endif; ?>
            <div class="banner">
                <ul class="swiper-wrapper">
                    <?php if(is_array($storeInfo['images']) || $storeInfo['images'] instanceof \think\Collection || $storeInfo['images'] instanceof \think\Paginator): $i = 0; $__LIST__ = $storeInfo['images'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <li class="swiper-slide"><a href=""><img src="<?php echo $vo; ?>" /></a></li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
                <div class="swiper-pagination"></div>
                <div class="pro-coundown">
                    <span class="txt"><i class="icon-sd"></i>限时秒杀</span>
                    <div class="countdown" data-time="<?php echo date('Y/m/d H:i:s',$storeInfo['stop_time']); ?>">
                        <span class="days" style="color: #fff !important;">0</span>
                        <i>天</i>
                        <span class="hours" style="color: #fff !important;">00</span>
                        <i>时</i>
                        <span class="minutes" style="color: #fff !important;">00</span>
                        <i>分</i>
                        <span class="seconds" style="color: #fff !important;">00</span>
                        <i>秒</i>
                    </div>
                </div>
            </div>
            <div class="product-info">
                <div class="title"><?php echo $storeInfo['title']; ?></div>
                <div class="price flex"><p>￥<?php echo $storeInfo['price']; ?> <em>￥<?php echo $storeInfo['product_price']; ?></em></p><p class="count">已拼<?php echo $storeInfo['sales']; ?>单<span><?php echo $storeInfo['people']; ?></span>人拼单</p></div>
                <div class="price warn flex"><p class="count"><i></i>拼团倒计时结束时未能拼单者视为抢购失败,将发起退款</p></div>
            </div>
            <div class="pro-spell-list">
                <div class="title">
                    <span><?php $countPink = count($pink);echo $countPink;?>人在拼单，可直接参与</span>
                    <?php if($countPink): ?>
                    <a class="menulist fr" @click="menuList" href="javascript:void(0)">查看更多</a>
                    <?php endif; ?>
                    <div class="tmp-more-list">
                        <div class="more-list-title">正在拼单</div>
                        <div id="scroll" class="more-list-con">
                            <ul>
                                <?php if(is_array($pink) || $pink instanceof \think\Collection || $pink instanceof \think\Paginator): $i = 0; $__LIST__ = $pink;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                <li>
                                    <div class="avatar"><img src="<?php echo $vo['avatar']; ?>" /></div>
                                    <div class="user-info">
                                        <p class="name"><?php echo $vo['nickname']; ?><span>还差<?php echo $vo['count']; ?>人</span></p>
                                        <div class="count-down">剩余
                                            <div class="count-time-<?php echo $vo['id']; ?>" data-time="<?php echo date('Y/m/d H:i:s',$vo['stop_time']); ?>">
                                                <span class="hours">00</span>
                                                :
                                                <span class="minutes">00</span>
                                                :
                                                <span class="seconds">00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="join-in" href="<?php echo Url('my/order_pink',['id'=>$vo['id']]); ?>">去拼单</a>
                                </li>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                        </div>
                        <span class="more-list-close" @click="moreListClose"></span>
                    </div>
                </div>
                <ul class="list-box">
                    <?php if(is_array($pink) || $pink instanceof \think\Collection || $pink instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($pink) ? array_slice($pink,0,2, true) : $pink->slice(0,2, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <li class="flex border-1px">
                            <div class="user-info flex">
                                <img class="avatar" src="<?php echo $vo['avatar']; ?>" />
                                <p><?php echo $vo['nickname']; ?></p>
                            </div>
                            <div class="txt-wrapper flex" v-pre>
                                <div class="count-time">
                                    <p>还差<span class="num"><?php echo $vo['count']; ?>人</span>拼成</p>
                                    <div class="timer-wrapper">
                                        <div class="count-time-<?php echo $vo['id']; ?>" data-time="<?php echo date('Y/m/d H:i:s',$vo['stop_time']); ?>">
                                            <span class="hours">00</span>
                                            :
                                            <span class="minutes">00</span>
                                            :
                                            <span class="seconds">00</span>
                                        </div>
                                    </div>
                                </div>
                                <a class="join-in" href="<?php echo Url('my/order_pink',['id'=>$vo['id']]); ?>">去拼单</a>
                            </div>
                        </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <!-- 评价 -->
            <?php if(!(empty($reply) || (($reply instanceof \think\Collection || $reply instanceof \think\Paginator ) && $reply->isEmpty()))): ?>
            <div class="item-box">
                <div class="item-tit">
                    <i class="line"></i>
                    <i class="iconfont icon-pinglun1"></i>
                    <span>评价</span>
                    <i class="line"></i>
                </div>
                <div class="assess-hot">
                    <p class="title">宝贝评价(<?php echo $replyCount; ?>)</p>
                    <div class="assess-hot-con">
                        <div class="user-info flex">
                            <div class="avatar"><img src="<?php echo $reply['avatar']; ?>"/></div>
                            <div class="name"><?php echo $reply['nickname']; ?></div>
                            <div class="star<?php echo $reply['star']; ?> all"><span class="num"></span></div>
                        </div>
                        <div class="txt-info"><?php echo $reply['comment']; ?></div>
                        <div class="pro-parameter"><span><?php echo $reply['add_time']; ?></span> <span><?php echo $reply['suk']; ?></span></div>
                        <?php if($replyCount > '1'): ?>
                        <a class="more" href="<?php echo Url('reply_list',['productId'=>$storeInfo['id']]); ?>">查看全部评价</a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <!-- 详情 -->
            <div class="item-box">
                <div class="item-tit">
                    <i class="line"></i><i class="iconfont icon-icon-tupian"></i><span>详情</span><i class="line"></i>
                </div>
                <div class="con-box"><?php echo $storeInfo['description']; ?></div>
            </div>
            <!-- 购买按钮 -->
            <div class="footer-bar flex">
                <a href="<?php echo Url('index/index'); ?>">
                    <span class="index-icon shouye"></span>
                    <p>首页</p>
                </a>
                <a href="<?php echo Url('service/service_list'); ?>">
                    <span class="index-icon kefu"></span>
                    <p>客服</p>
                </a>
                <?php if($storeInfo['stop_time'] > time()): ?>
                <div class="big-btn confirm" @click="goBuy">
                    <p class="confirm-price"><span>￥</span><?php echo $storeInfo['price']; ?></p>
                    <p>立即开团</p>
                </div>
                <?php else: ?>
                <div class="big-btn stop">
                    <p class="confirm-price"><span>￥</span><?php echo $storeInfo['price']; ?></p>
                    <p>拼团结束</p>
                </div>
                <?php endif; ?>
            </div>
        </section>
        <div class="model-bg"></div>
        <div style="height:1rem;"></div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            var myBanner = new Swiper('.banner', {
                paginationClickable: false,
                autoplay:3000,
                loop:true,
                speed:1000,
                autoplayDisableOnInteraction : false,
                pagination : '.swiper-pagination',
            });
            window.$pindAll = <?php echo json_encode($pindAll);?>;
            $.each($pindAll,function (index,item) {
                $('.count-time-'+item).downCount({
                    date: $('.count-time-'+item).attr('data-time'),
                    offset: +8
                });
            })
        }); 
    </script>
    <script type="text/javascript">
        window.$wechat_qrcode = "<?php echo $wechat_qrcode; ?>";
        window.$site_name = "<?php echo $site_name; ?>";
        window.$product = <?php unset($storeInfo['description']); echo json_encode($storeInfo);?>;
        (function ($) {
            requirejs(['vue', 'axios', 'helper', 'store', '/public/wap/first/crmeb/module/store/shop-card.js'], function (Vue, axios, $h, storeApi, shopCard) {
            new Vue({
                el: "#store_detail",
                components: {'shop-card': shopCard},
                data: {
                    cardShow: false,
                    product: $product,
                    wechatQrcode: $wechat_qrcode,
                    siteName: $site_name,
                    productValue: {},
                    productCardInfo: {},
                    status: {like: false, collect: false},
                    cartNum: 1
                },
                methods: {
                    menuList:function () {
                        if($('.model-bg').css('z-index')==-1){
                            $('.model-bg').css('z-index','999');
                            $('.model-bg').addClass('on');
                            $('.tmp-more-list').addClass('show');
                            var myScroll = new IScroll('#scroll' , { click: true ,tap: true,scrollbars: 'custom'});
                        }
                    },
                    moreListClose:function () {
                        $('.tmp-more-list').removeClass('show');
                        $('.model-bg').removeClass('on').css('z-index','-1');
                    },
                    goBuy: function () {
                        storeApi.goBuy({
                            cartNum: 1,
                            uniqueId: 0,
                            productId: this.product.product_id,
                            combinationId: this.product.id
                        }, function (cartId) {
                            location.href = $h.U({c: 'store', a: 'combination_order', q: 'cartId='+ cartId});
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
                        new Swiper('.banner', {
                            paginationClickable: false,
                            autoplay: 3000,
                            loop: true,
                            speed: 1000,
                            autoplayDisableOnInteraction: false,
                            pagination: '.swiper-pagination',
                        });
                        $('.detail_ul li').each(function(i) {
                            $(this).click(function() {
                                $('.detail_ul li').removeClass('active');
                                $(this).addClass('active');
                                $('.detail_ul_con').hide();
                                $('.detail_ul_con').eq(i).show();
                            });
                        });
                        $('.detail_ul li').eq(0).trigger('click');
                    },
                    getCartNum: function () {
                        var that = this;
                        storeApi.getCartNum(function (cartNum) {
                            that.cartNum = cartNum;
                        });
                    },
                    ShowQrcode:function () {
                        that = this;
                        layer.open({
                            type: 1,
                            shade: true,
                            shadeClose : true,
                            anim  : 2,
                            area: ['5rem', '5.1rem'],
                            title: false, //不显示标题
                            content: '<img src="'+that.wechatQrcode+'" alt="'+that.siteName+'" title="'+that.siteName+'" style="width: 5rem;"/>', //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响
                        });
                    }
                },
                mounted: function () {
                    var wxApi = mapleWx($jssdk(), function () {
                        this.onMenuShareAll({
                            title: $product.store_name,
                            desc: $product.store_info || $product.store_name,
                            imgUrl: location.origin + $product.image,
                            link: location.href
                        });
                    });
                    $.each($pindAll,function (index,item) {
                        $('.count-time-'+item).downCount({
                            date: $('.count-time-'+item).attr('data-time'),
                            offset: +8
                        });
                    })
                    var countTime = $('.countdown').attr('data-time');
                    $('.countdown').downCount({
                        date: countTime,
                        offset: +8
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
