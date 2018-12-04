<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:60:"C:\soft\www\wx_new/application/wap/view/first/my\notice.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>消息通知</title>
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

   <div class="text-list" id="notice-list" v-cloak="">
        <section ref="bsDom">
            <ul style="-webkit-overflow-scrolling : touch;">
                <li v-for="item in noticelist.lists" :nid="item.id">
                    <div class="admin">
                        <span class="icon" v-if="item.is_see == 0"></span>
                        {{item.user}}
                        <span class="add_time">{{item.add_time}}</span>
                    </div>
                    <div class="text-wrapper">
                        <div class="title">{{item.title}}</div>
                        <div class="text-box">{{item.content}}</div>
                    </div>
                    <div class="link-more">
                        <span class="more-btn" @click="seeNotice">查看全文>></span>
                    </div>
                </li>
                <p class="loading-line" v-show="noticelist.loading == 1"><i></i><span>正在加载中</span><i></i></p>
                <p class="loading-line" v-show="noticelist.loading == 0 && noticelist.lastpage == 0"><i></i><span>加载更多</span><i></i></p>
                <p class="loading-line" v-show="noticelist.loading == 0 && noticelist.lastpage == 1"><i></i><span>没有更多了</span><i></i></p>
            </ul>
        </section>
    </div>
    <script type="text/javascript">
    (function(){
        require(['vue','axios','better-scroll','helper','store'],function(Vue,axios,BScroll,$h,storeApi){
            new Vue({
                el:"#notice-list",
                data:{
                    noticelist: {lists: [],page: 0,lastpage: 0,loading: 0,limit:8},
                    scroll:null
                },
                methods: {
                    initNoticeList: function(){
                        this.noticelist.lists = [];
                        this.noticelist.page = 0;
                        this.noticelist.lastpage = 0;
                        this.noticelist.loading = 0;
                        this.getNoticeList();
                    },
                    getNoticeList: function(){
                        var that = this;
                        if(that.noticelist.loading || that.noticelist.lastpage)return;
                        that.noticelist.loading = 1;//开启加载开关
                        storeApi.getNoticeList({
                            page:that.noticelist.page,
                            limit:that.noticelist.limit
                        },function(res){
                            that.noticelist.loading = 0;
                            if(res.data.code == 200){
                                var re_data = res.data.data;
                                that.noticelist.lastpage = re_data.lastpage;
                                that.noticelist.lists = that.noticelist.lists.concat(re_data.list);
                                if(!re_data.lastpage)that.noticelist.page++;//如果不是最后一页当前页码加1
                                that.$nextTick(function(){
                                    that.scroll.refresh();
                                    that.scroll.finishPullUp();
                                });
                            }
                        },function(){that.noticelist.loading = false});
                    },
                    bScrollInit: function(){
                        var that = this;
                        this.$refs.bsDom.style.height = document.documentElement.clientHeight +'px';
                        this.$refs.bsDom.style.overflow = 'hidden';
                        this.scroll = new BScroll(this.$refs.bsDom,{click:true,probeType:1,cancelable:false,deceleration:0.005,snapThreshold:0.01});
                        this.scroll.on('pullingUp',function(){
                            that.noticelist.loading == 0 && that.getNoticeList();
                        })
                    },
                    seeNotice: function(event){
                        var element = $(event.target).parents("li");
                        if(element.find(".admin .icon").length > 0){
                            storeApi.seeNotice({
                                nid:element.attr("nid")
                            },function(res){
                                if(res.data.code == 200)element.find(".admin .icon").remove();
                            },function(){ $h.loadClear(); });

                            this.initText(element);
                        }else{
                            this.initText(element);
                        }
                    },
                    initText: function(element){
                        var status = element.find(".text-box").hasClass('active');
                        if(status){
                            element.find(".text-box").removeClass("active");
                            $(event.target).text("查看全文>>");
                            $(event.target).css("color","#fc641c");
                            this.scroll.refresh();
                        }else{
                           element.find(".text-box").addClass('active');
                           $(event.target).text("点击收起>>");
                           $(event.target).css("color","#1cb0fc");
                           this.scroll.refresh();
                        }
                    }
                },
                mounted:function(){
                    this.bScrollInit();
                    this.initNoticeList();
                }
            })
        })
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
