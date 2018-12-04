<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:61:"C:\soft\www\wx_new/application/wap/view/first/my\collect.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>已收藏商品</title>
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

<body style="background:#fff;">
<div id="collect" class="user-collection-list">
    <section ref="bsDom">
        <div>
        <ul>
            <li class="border-1px" v-for="(item,index) in data.list" :class="{fail:item.is_fail == true}" v-cloak="">
                <a :href="productUrl(item)">
                    <div class="picture"><img :src="item.image" /></div>
                    <div class="info-content flex">
                        <p class="pro-tit" v-text="item.store_name"></p>
                        <p class="price">
                            <span v-text="'￥'+item.price"></span>
                            <span class="old-price">￥{{item.ot_price}}</span>
                        </p>
                        <p class="count">{{ item.is_fail == true ? '已失效' : '已售'+item.sales }}</p>
                    </div>
                </a>
                <div class="collection-delete" @click="removeCollect(item,index)"></div>
            </li>
        </ul>
            <p style="background-color: #fff;" class="loading-line" v-show="loading == true"><i></i><span>正在加载中</span><i></i></p>
            <p style="background-color: #fff;" class="loading-line" v-show="loading == false && data.loaded == false" v-cloak=""><i></i><span>加载更多</span><i></i></p>
            <p style="background-color: #fff;" class="loading-line" v-show="loading == false && data.loaded == true" v-cloak=""><i></i><span>没有更多了</span><i></i></p>
        </div>

    </section>
</div>
<script>
    require(['vue','axios','better-scroll','helper','store'],function(Vue,axios,BScroll,$h,storeApi){
        new Vue({
            el:"#collect",
            data:{
                data:{
                    first:0,
                    limit:8,
                    list:[],
                    loaded:false,
                    top:0
                },
                loading: false,
                scroll:null
            },
            methods:{
                removeCollect:function (product,index){
                    var that = this;
                    storeApi.removeCollectProduct(product.pid,function(){
                        that.data.list.splice(index,1);
                    });
                },
                productUrl:function(product){
                    return product.is_fail == true ? 'javascript:void(0);' : $h.U({c:'store',a:'detail',p:{id:product.pid}});
                },
                getList:function(){
                    if(this.loading) return ;
                    var that = this,group = that.data;
                    if(group.loaded) return ;
                    this.loading = true;
                    storeApi.getCollectProduct({
                        first:group.first,
                        limit:group.limit
                    },function(res){
                        var list = res.data.data;
                        group.loaded = list.length < group.limit;
                        group.first += list.length;
                        group.list = group.list.concat(list);
                        that.loading = false;
                        that.$set(that,'data',group);
                        that.$nextTick(function(){
                            if(list.length) that.bScrollInit();
                            that.scroll.finishPullUp();
                        });
                    },function(err){that.loading = false; return true;});
                },
                bScrollInit:function () {
                    var that = this;
                    if(this.scroll === null){
                        this.$refs.bsDom.style.height = (document.documentElement.clientHeight)+'px';
                        this.$refs.bsDom.style.overflow = 'hidden';
                        this.scroll = new BScroll(this.$refs.bsDom,{click:true,probeType:1,cancelable:false,deceleration:0.005,snapThreshold:0.01});
                        this.scroll.on('pullingUp',function(){
                            that.loading == false && that.getList();
                        })
                    }else{
                        this.scroll.refresh();
                    }

                }
            },
            mounted:function(){
                this.bScrollInit();
                this.getList();
            }
        })
    })
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
