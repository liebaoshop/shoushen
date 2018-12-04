<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:61:"C:\soft\www\wx_new/application/wap/view/first/my\balance.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>我的账户</title>
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
    
<style>
    .loading-line{background-color: #fff;}
</style>

    <script type="text/javascript" src="/public/wap/first/crmeb/js/common.js"></script>
</head>
<body>

<body style="background:#f5f5f5;">
<div id="user-balance" class="user-balance">
    <section>
        <header ref="head" @touchmove.prevent="">
            <div class="count-wrapper">
                <p>当前余额（元）</p>
                <span class="count-txt"><?php echo $userInfo['now_money']; ?></span>
                <div class="text-bar"></div>
            </div>
            <div class="link-list">
                <ul>
                    <li class="border-1px">
                        <a href="javascript:void(0);" @click="showRechargeCard = true">
                            <i class="icon icon-money"></i>立即充值
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo url('index/index'); ?>">
                            <i class="icon icon-mall"></i>进入商城
                        </a>
                    </li>
                </ul>
            </div>
        </header>
        <div class="list-info">
            <div class="link-list" ref="nav" @touchmove.prevent="">
                <ul>
                    <li class="border-1px"><i class="icon"></i>余额明细</li>
                </ul>
            </div>
            <div class="info-list" ref="bsDom">
                <div style="-webkit-overflow-scrolling : touch; position: relative;">
                <ul>
                    <li class="border-1px flex" v-for="item in group.list" v-cloak="">
                        <div class="txt-content">
                            <p v-text="item.mark"></p>
                            <span v-text="item.add_time"></span>
                        </div>
                        <div class="count" :class="{increase:item.pm == 1}">{{item.pm == 1 ? '+' : '-'}}{{item.number}}</div>
                    </li>
                </ul>
                    <p class="loading-line" v-show="loading == true"><i></i><span>正在加载中</span><i></i></p>
                    <p class="loading-line" v-show="loading == false && group.loaded == false" v-cloak=""><i></i><span>加载更多</span><i></i></p>
                    <p class="loading-line" v-show="loading == false && group.loaded == true" v-cloak=""><i></i><span>没有更多了</span><i></i></p>
                </div>
            </div>
        </div>
        <div class="model-bg" @touchmove.prevent @click="showRechargeCard = false" :class="{on:showRechargeCard == true}"></div>
        <div class="card-model" :class="{up:showRechargeCard == true}">
            <div id="selects-wrapper" class="selects-info" style="max-height: 4.96rem;">
                <div class="payplay-wrapper">
                    <div class="info-wrapper">
                        <div class="tit">输入充值金额</div>
                        <div class="money">
                            <span>￥</span>
                            <input v-model="rechargePrice" type="number" placeholder="0.00"/>
                        </div>
                        <div class="tips">充值提示：单次充值金额不能低于<span>{{minRecharge}}元</span></div>
                        <button class="pay-btn" @click="toRecharge">点击进行微信支付</button>
                    </div>
                </div>
            </div>
            <div class="model-close" @click="showRechargeCard = false"></div>
        </div>
    </section>
</div>
<script>
    (function(){
        var minRecharge = '<?=$userMinRecharge?>';
        requirejs(['vue','helper','better-scroll','store'],function(Vue,$h,BScroll,storeApi){
            var wxApi = mapleWx($jssdk());
            new Vue({
                el:'#user-balance',
                data:{
                    showRechargeCard:false,
                    minRecharge:minRecharge,
                    rechargePrice:'',
                    group:{
                        first:0,
                        limit:20,
                        list:[],
                        loaded:false
                    },
                    loading: false,
                    scroll:null,
                },
                watch:{
                    showRechargeCard:function(){
                        this.rechargePrice = '';
                    }
                },
                methods:{
                    getList:function(){
                        if(this.loading) return;
                        var that = this,type = 'group',group = that.group;
                        if(group.loaded) return ;
                        this.loading = true;
                        storeApi.getUserBalanceList({
                            first:group.first,
                            limit:group.limit
                        },function(res){
                            var list = res.data.data,groupLength = group.list.length;
                            that.scroll.stop();
                            group.loaded = list.length < group.limit;
                            group.first += list.length;
                            group.list = group.list.concat(list);
                            that.$set(that,type,group);
                            that.loading = false;
                            that.$nextTick(function(){
                                if(list.length || !groupLength) that.scroll.refresh();
                                if(!groupLength) setTimeout(function(){that.scroll.scrollTo(0,0,300);},0);
                                that.scroll.finishPullUp();
                            });
                        },function(){that.loading = false});
                    },
                    toRecharge:function(){
                        if(rechargePrice == '') return ;
                        var rechargePrice = parseFloat(this.rechargePrice);
                        if(rechargePrice != this.rechargePrice || rechargePrice <= 0)
                            return $h.pushMsgOnce('请输入正确的充值金额');
                        if(rechargePrice < minRecharge)
                            return $h.pushMsgOnce('充值金额不能低于'+parseFloat(minRecharge));
                        this.showRechargeCard = false;
                        this.rechargePrice = '';
                        storeApi.userWechatRecharge(rechargePrice,function(res){
                            wxApi.chooseWXPay(res.data.data,function(){
                                that.showRechargeCard = false;
                                $h.pushMsgOnce('成功充值'+rechargePrice);
                            });
                        });
                    },
                    bScrollInit:function () {
                        var that = this;
                        this.$refs.bsDom.style.height = (
                                document.documentElement.clientHeight -
                                this.$refs.head.offsetHeight -
                                this.$refs.nav.offsetHeight - 6.5
                            )+'px';
                        this.$refs.bsDom.style.overflow = 'hidden';
                        this.scroll = new BScroll(this.$refs.bsDom,{observeDOM:false,useTransition:false,click:true,probeType:1,cancelable:false,deceleration:0.005,snapThreshold:0.01});
                        this.scroll.on('pullingUp',function(){
                            that.loading == false && that.getList();
                        })
                    }
                },
                mounted:function(){
                    this.bScrollInit();
                    this.getList();
                }
            })
        });
    })();
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
