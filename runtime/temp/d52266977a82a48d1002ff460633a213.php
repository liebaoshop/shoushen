<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:63:"C:\soft\www\wx_new/application/wap/view/first/store\detail.html";i:1540348972;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title><?php echo $storeInfo['store_name']; ?></title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
<link rel="stylesheet" href="/public/static/plug/swiper/swiper-3.4.1.min.css">
<script type="text/javascript" src="/public/static/plug/swiper/swiper-3.4.1.jquery.min.js"></script>
<script type="text/javascript"
        src="/public/wap/first/crmeb/js/car-model.js"></script>
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

<div id="store_detail" class="wrapper product-con">
    <section>
        <div class="banner">
            <ul class="swiper-wrapper"> <?php if(is_array($storeInfo['slider_image']) || $storeInfo['slider_image'] instanceof \think\Collection || $storeInfo['slider_image'] instanceof \think\Paginator): $i = 0; $__LIST__ = $storeInfo['slider_image'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <li class="swiper-slide"><img src="<?php echo $vo; ?>"/></li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
        <div class="product-info">
            <div class="title"><?php echo $storeInfo['store_name']; ?></div>
            <div class="price">￥<?php echo floatval($storeInfo['price']); ?></div>
            <div class="oldprice">原价:￥<?php echo floatval($storeInfo['ot_price']); ?></div>
            <div class="info-amount flex"><span class="current">商品编号：<?php echo $storeInfo['id']; ?></span> <span class="">库存:<?php echo $storeInfo['stock']; ?><?php echo $storeInfo['unit_name']; ?></span>
                <span class="fr">销量:<?php echo $storeInfo['sales']; ?><?php echo $storeInfo['unit_name']; ?></span></div>
            <?php if($storeInfo['give_integral'] > '0'): ?>
            <div class="integral">积分:<?php echo floatval($storeInfo['give_integral']); ?> <span>赠送</span></div>
            <?php endif; ?>
        </div>
        <div class="pro-attributes" @click="cardUp" v-show="productAttr && productAttr.length > 0" v-cloak="">选择
            {{productAttrCate}}
        </div>
        <div class="like-it" v-cloak=""><i class="zan-btn iconfont icon-thumbsup" :class="{'icon-thumbsup110':product.userLike == true}" @click="like"></i> 点赞
            <span v-text="product.like_num"></span>次
        </div>
        <?php if(!(empty($reply) || (($reply instanceof \think\Collection || $reply instanceof \think\Paginator ) && $reply->isEmpty()))): ?>
        <div class="item-box">
            <div class="item-tit"><i class="line"></i><i class="iconfont icon-pinglun1"></i><span>评价</span><i
                    class="line"></i></div>
            <div class="assess-hot"><p class="title">宝贝评价(<?php echo $replyCount; ?>)</p>
                <div class="assess-hot-con">
                    <div class="user-info flex">
                        <div class="avatar"><img src="<?php echo $reply['avatar']; ?>"/></div>
                        <div class="name"><?php echo $reply['nickname']; ?></div>
                        <div class="star<?php echo $reply['star']; ?> all"><span class="num"></span></div>
                    </div>
                    <div class="txt-info"><?php echo $reply['comment']; ?></div>
                    <div class="pro-parameter"><span><?php echo $reply['add_time']; ?></span> <span><?php echo $reply['suk']; ?></span></div>
                    <?php if($replyCount > '1'): ?> <a class="more"
                                                        href="<?php echo url('reply_list',['productId'=>$storeInfo['id']]); ?>">查看全部评价</a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php endif; ?>
        <div class="item-box">
            <div class="item-tit"><i class="line"></i><i class="iconfont icon-icon-tupian"></i><span>详情</span><i
                    class="line"></i></div>
            <div class="con-box" ref="store_desc"></div>
        </div>
        <div class="footer-bar flex"><a href="<?php echo Url('Service/service_list',array('mer_id'=>$mer_id)); ?>"> <span
                    class="iconfont icon-kefu"></span>
                <p>客服</p></a> <a class="collect-btn iconfont icon-xing1"
                                 :class="{'icon-xing2':product.userCollect == true}" @click="collect"
                                 href="javascript:void(0)"><p>收藏</p></a> <a href="<?php echo Url('store/cart'); ?>"> <span
                    class="iconfont icon-icon-shoppingcart-02"></span>
                <p>购物车</p>                <span class="cart_num" v-show="cartNum > 0" v-cloak=""
                                                v-text="cartNum"></span> </a>
            <div class="big-btn buy-car" @click="cardUp">加入购物车</div>
            <div class="big-btn confirm" @click="cardUp">立即购买</div>
        </div>
    </section>
    <?php if(!(empty($similarity) || (($similarity instanceof \think\Collection || $similarity instanceof \think\Paginator ) && $similarity->isEmpty()))): ?>
    <section class="template-piclist">
        <div class="template-prolist">
            <div class="title-like flex"><span class="title-line left"></span> <span class="icon"></span> <span>新品推荐</span> <span class="title-line right"></span></div>
        </div>
        <ul class="flex"> <?php if(is_array($similarity) || $similarity instanceof \think\Collection || $similarity instanceof \think\Paginator): $i = 0; $__LIST__ = $similarity;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$store): $mod = ($i % 2 );++$i;?>
            <li><a href="<?php echo url('store/detail',array('id'=>$store['id'])); ?>">
                    <div class="picture"><img src="<?php echo $store['image']; ?>"/></div>
                    <div class="pro-info"><p class="title"><?php echo $store['store_name']; ?></p>
                        <p class="conut">已售<?php echo $store['sales']; ?></p>
                        <p class="price">￥<?php echo floatval($store['price']); ?></p></div>
                    <div class="buy-car-btn"><i class="iconfont icon-gouwuche"></i></div>
                </a></li>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </section>
    <?php endif; ?>
    <shop-card ref="shopCard" :show="cardShow" :product="productCardInfo" :attr-list="productAttr"
               :on-change="changeAttr" :on-close="cardClose" :on-cart="goCart" :on-buy="goBuy"></shop-card>
    <script ref="store_desc_temp" type="text/template"><?php echo $storeInfo['description']; ?></script>
    <div style="height:1rem;"></div>
</div>
<script>    window.$product = <?php unset($storeInfo['description']); echo json_encode($storeInfo);?>;
    window.$productAttr = <?php echo json_encode($productAttr) ?: '[]'; ?>;
    window.$productValue = <?php echo json_encode($productValue) ?: '{}'; ?>;</script>
<script
    type="text/javascript">    requirejs(['vue', 'axios', 'helper', 'store', '/public/wap/first/crmeb/module/store/shop-card.js'], function (Vue, axios, $h, storeApi, shopCard) {
        new Vue({
            el: "#store_detail",
            components: {'shop-card': shopCard},
            data: {
                cardShow: false,
                product: $product,
                productAttr: $productAttr || [],
                productValue: $productValue || {},
                productCardInfo: {},
                status: {like: false, collect: false},
                cartNum: 0
            },
            computed: {
                productAttrCate: function () {
                    return this.productAttr.map(function (attr) {
                        return attr.attr_name;
                    }).join(',');
                }
            },
            methods: {
                cardClose: function () {
                    this.cardShow = false;
                }, cardUp: function () {
                    this.cardShow = true;
                }, goCart: function (values, cartNum) {
                    var checkedAttr = this.productValue[values.sort().join(',')], that = this;
                    storeApi.setCart({
                        cartNum: cartNum,
                        uniqueId: checkedAttr === undefined ? 0 : checkedAttr.unique,
                        productId: this.product.id
                    }, function () {
                        that.getCartNum();
                        $h.pushMsg('加入购物车成功!');
                    });
                    that.cardClose();
                }, goBuy: function (values, cartNum) {
                    var checkedAttr = this.productValue[values.sort().join(',')];
                    storeApi.goBuy({
                        cartNum: cartNum,
                        uniqueId: checkedAttr === undefined ? 0 : checkedAttr.unique,
                        productId: this.product.id
                    }, function (cartId) {
                        location.href = $h.U({c: 'store', a: 'confirm_order', p: {cartId: cartId}});
                    });
                    this.cardClose();
                }, changeAttr: function (values) {
                    var checkedAttr = this.productValue[values.sort().join(',')];
                    if (!checkedAttr) {
                        this.setProductCardInfo({stock: 0});
                    } else {
                        this.setProductCardInfo({
                            stock: checkedAttr.stock,
                            price: checkedAttr.price,
                            image: checkedAttr.image
                        });
                    }
                }, setProductCardInfo: function (info) {
                    info || (info = {});
                    this.$set(this, 'productCardInfo', {
                        image: info.image !== undefined ? info.image : this.product.image,
                        price: info.price !== undefined ? info.price : this.product.price,
                        stock: info.stock !== undefined ? info.stock : this.product.stock
                    });
                }, like: function () {
                    var that = this;
                    if (that.status.like) return false;
                    that.status.like = true;
                    if (this.product.userLike) {
                        storeApi.unlikeProduct(this.product.id, 'product', function () {
                            setTimeout(function () {
                                that.product.like_num -= 1;
                                that.product.userLike = false;
                                that.status.like = false;
                            }, 300);
                        }, function (err) {
                            that.status.like = false;
                        });
                    } else {
                        storeApi.likeProduct(this.product.id, 'product', function () {
                            setTimeout(function () {
                                that.product.like_num += 1;
                                that.product.userLike = true;
                                that.status.like = false;
                            }, 300);
                        }, function (err) {
                            that.status.like = false;
                        });
                    }
                }, collect: function () {
                    var that = this;
                    if (that.status.collect) return false;
                    that.status.collect = true;
                    if (this.product.userCollect) {
                        storeApi.unCollectProduct(this.product.id, 'product', function () {
                            setTimeout(function () {
                                that.product.userCollect = false;
                                that.status.collect = false;
                            }, 300);
                        }, function (err) {
                            that.status.collect = false;
                        });
                    } else {
                        storeApi.collectProduct(this.product.id, 'product', function () {
                            setTimeout(function () {
                                that.product.userCollect = true;
                                that.status.collect = false;
                            }, 300);
                        }, function (err) {
                            that.status.collect = false;
                        });
                    }
                }, pushMsg: function (msg, fn) {
                    $h.pushMsg(msg, fn)
                }, init: function () {
                    new Swiper('.banner', {
                        paginationClickable: false,
                        autoplay: 3000,
                        loop: false,
                        speed: 1000,
                        autoplayDisableOnInteraction: false,
                        pagination: '.swiper-pagination',
                    });
                }, getCartNum: function () {
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
                        desc: $product.store_info || $product.store_name,
                        imgUrl: location.origin + $product.image,
                        link: location.href
                    });
                });
                this.$nextTick(function () {
                    this.$refs.store_desc.innerHTML = this.$refs.store_desc_temp.innerHTML;
                });
                this.getCartNum();
                this.init();
                this.setProductCardInfo();
            }
        });
    });</script>

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
