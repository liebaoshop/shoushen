<?php if (!defined('THINK_PATH')) exit(); /*a:8:{s:61:"C:\soft\www\wx_new/application/wap/view/first/store\cart.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:68:"C:\soft\www\wx_new\application\wap\view\first\public\store_menu.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
购物车
</title>
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

<div id="store-cart" class="buy-car">
    <section>
        <header v-show="validCartList.length > 0" v-cloak="">
            购物数量({{cartNumTotal()}})
            <span class="edit-hock fr">
                <i class="edits"></i>
                <em class="edit-txt" v-show="changeStatus == false" @click="changeStatus = !changeStatus">点击编辑</em>
                <em :class="{cancel:changeStatus == false}" @click="changeStatus = !changeStatus">取消编辑</em>
            </span>
        </header>
        <div class="pro-list" v-show="validCartList.length > 0" v-cloak="">
            <ul>
                <li class="flex" v-for="(cart,index) in validCartList" v-show="cart.is_del !== true">
                    <div class="selected">
                        <label class="well-check">
                            <input class="ckecks" type="checkbox" @change="checkedCart" v-model="cart.checked">
                            <i class="icon"></i>
                        </label>
                    </div>
                    <div class="pro-info clearfix">
                        <div class="img fl"><a :href="getStoreUrl(cart)"><img :src="cart.productInfo.image" /></a></div>
                        <div class="infos fl">
                            <div class="con-cell">
                                <p class="title" v-text="cart.productInfo.store_name"></p>
                                <p class="attr" v-text="getAttrValues(cart)"></p>
                                <span class="price"><i>￥</i>{{cart.truePrice}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="amount" v-show="changeStatus == false">
                        <div class="count">
                            <div class="reduction" @click="changeCartNum(cart,index,-1)">-</div>
                            <input type="number" v-model="cart.cart_num" required>
                            <div class="add" @click="changeCartNum(cart,index,1)">+</div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="tmp-invalid-list" v-show="invalidCartList.length >0" v-cloak="">
            <div class="title"><i class="line"></i><span>失效商品</span><i class="line"></i></div>
            <ul class="list-box" v-cloak="">
                <li class="flex" v-for="(cart,index) in invalidCartList">
                    <div class="picture"><img :src="cart.productInfo.image" /></div>
                    <div class="pro-info flex">
                        <p class="pro-title" v-text="cart.productInfo.store_name"></p>
                        <span class="price">已失效</span>
                    </div>
                    <div class="delete-btn" @click="removeInvalidCart(cart,index)"></div>
                </li>
            </ul>
        </div>
        <template v-if="invalidCartList.length == 0 && validCartList.length == 0">
            <div class="empty">
                <img src="/public/wap/first/crmeb/images/empty_cart.png">
                <template v-if="!loading">
                    <p>正在加载购物车数据中......</p>
                </template>
                <template v-else>
                    <p>暂无购物车信息，点击
                        <a href="<?php echo Url('Index/index'); ?>">立即添加</a>
                    </p>
                </template>
            </div>
        </template>
        <div style="height:1rem"></div>
        <div class="car-footer flex">
            <div class="selected">
                <label class="well-check">
                    <input class="ckecks" type="checkbox" v-model="checkedAll" @change="checkedAllCart">
                    <i class="icon"></i>
                </label>
                <span>全选</span>
            </div>
            <div class="all-price" v-show="changeStatus == false">合计：<span v-text="'￥'+totalPrice"></span></div>
            <div class="button">
                <span class="sub_btn" v-show="changeStatus == false" @click="submitCart">结算 ({{cartCount()}})</span>
                <span :class="{'delete_btn':changeStatus == false}" v-cloak="" @click="removeCart">点击删除</span>
            </div>
        </div>
        <div style="height:.92rem;"></div>
<?php
$request = \think\Request::instance();
$now_c = $request->controller();$now_a = $request->action();
$menu = [
    ['c'=>'Index','a'=>'index','name'=>'店铺主页','class'=>'home'],
    ['c'=>'Store','a'=>'category','name'=>'商品分类','class'=>'sort'],
    ['c'=>'Store','a'=>'cart','name'=>'购物车','class'=>'car'],
    ['c'=>'Service','a'=>'service_list','name'=>'联系卖家','class'=>'server'],
    ['c'=>'My','a'=>'index','name'=>'我的','class'=>'user'],
];
?>
<footer class="common-footer flex border-1px" ref="storeMenu" @touchmove.prevent>
    <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;        if(strtolower($now_c) == strtolower($vo['c']) && strtolower($now_a) == strtolower($vo['a'])){
            $href = 'javascript:void(0);';
            $checked = true;
        }else{
            $href = Url($vo['c'].'/'.$vo['a']);
            $checked = false;
        }
    ?>
    <a class="<?php echo $vo['class']; if($checked){echo' on ';} ?>" href="<?php echo $href; ?>">
        <span class="footer-icon icon"></span>
        <p><?php echo $vo['name']; ?></p>
    </a>
    <?php endforeach; endif; else: echo "" ;endif; ?>
</footer>
    </section>
</div>
<script type="text/javascript" src="/public/wap/first/crmeb/module/cart.js"></script>


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
