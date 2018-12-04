<?php if (!defined('THINK_PATH')) exit(); /*a:8:{s:62:"C:\soft\www\wx_new/application/wap/view/first/store\index.html";i:1540348972;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:68:"C:\soft\www\wx_new\application\wap\view\first\public\store_menu.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title><?php echo !empty($category)?$category['cate_name'] : '全部产品'; ?></title>
    <link rel="stylesheet" type="text/css" href="/public/static/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/font/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="/public/wap/first/crmeb/css/style.css?2"/>
<script type="text/javascript" src="/public/static/js/media.js"></script>
<script type="text/javascript" src="/public/static/plug/jquery-1.10.2.min.js"></script>

    
<script type="text/javascript" src="/public/wap/first/crmeb/js/base.js"></script>

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

<body style="background:#f7f7f7; overflow: hidden;">
<div id="product-list" class="product-sort">
    <section>
        <div class="search-wrapper" ref="head" @touchmove.prevent :class="{active:movingDirectionY == 1}">
            <form action="" method="post" @submit.prevent="searchProduct">
                <input type="text" v-model="keyword" placeholder="商品搜索: 请输入商品关键词"/>
            </form>
            <div class="menu"><a href="<?php echo url('store/category'); ?>"></a></div>
        </div>
        <div class="price-select flex" @touchmove.prevent ref="nav">
            <div class="item" :class="{ on:search.priceOrder =='' && search.salesOrder == '' && search.news == false}" @click="changeDefault">默认</div>
            <div class="item" :class="{'selected-up':search.priceOrder == 'asc','selected-down':search.priceOrder == 'desc','on':search.priceOrder!=''}" @click="changePriceOrder">价格<i class="icon"></i></div>
            <div class="item" :class="{'selected-up':search.salesOrder == 'asc','selected-down':search.salesOrder == 'desc','on':search.salesOrder!=''}" @click="changeSalesOrder">销量<i class="icon"></i></div>
            <div class="item" :class="{on:search.news == true}" @click="changeNews">新品</div>
            <div class="layout-vertical" :class="{on:vertical != true}" @click="vertical = !vertical"><span></span></div>
        </div>
        <div class="product-list" ref="bsDom" style="-webkit-overflow-scrolling: touch;">
            <div>
            <ul class="list-layout flex" :class="{vertical:vertical == true}">
                <li class="flex" v-for="item in group.list" v-cloak="">
                    <a class="flex" :href="productUrl(item.id)">
                        <div class="img"><img :src="item.image" /></div>
                        <div class="info-txt">
                            <p class="name" v-text="item.store_name"></p>
                            <span class="count">已售{{item.sales}}</span>
                            <p class="price">￥{{item.price}}</p>
                        </div>
                    </a>
                    <div class="buy-car" @click="shopCard(item)"></div>
                </li>
            </ul>
                <p class="loading-line" v-show="loading == true"><i></i><span>正在加载中</span><i></i></p>
                <p class="loading-line" v-show="loading == false && group.loaded == false" v-cloak="" @click="getList"><i></i><span>点击加载</span><i></i></p>
                <p class="loading-line" v-show="loading == false && group.loaded == true" v-cloak=""><i></i><span>没有更多了</span><i></i></p>
            </div>
        </div>
    </section>
    <div class="model-bg"></div>
    <div class="child-alink-bg" @touchmove.prevent v-show="showCategoryList == true" @click="showCategoryList = false" v-cloak=""></div>
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
</div>
<script>
   var base = new Base64();
    requirejs(['vue','store','better-scroll','helper','/public/wap/first/crmeb/module/store/shop-card.js'],function(Vue,storeApi,BScroll,$h,shopCard){
        shopCard.install(Vue);
        var cid = "<?php echo $cid; ?>";
        new Vue({
            el:"#product-list",
            components:{
                'shop-card':shopCard
            },
            data:{
                keyword:'<?php echo $keyword; ?>',
                categoryList:[],
                showCategoryList:false,
                childCategoryList:[],
                search:{
                    cInfo:{},
                    sInfo:{},
                    priceOrder:'',
                    salesOrder:'',
                    news:0,
                    keyword:'<?php echo $keyword; ?>'
                },
                group:{
                    first:0,
                    limit:20,
                    list:[],
                    loaded:false
                },
                loading: false,
                scroll:null,
                templateCategory:{},
                vertical:false,
                movingDirectionY:0,
                cid:'<?php echo $cid; ?>',
                sid:'<?php echo $sid; ?>'
            },
            watch:{
                movingDirectionY:function(n){
                    var that = this;
                    if(n == 1){
                        this.$refs.bsDom.style.height = (
                                document.documentElement.clientHeight -
                                this.$refs.nav.offsetHeight -
                                this.$refs.storeMenu.offsetHeight
                            )+'px';
                    }else{
                        this.$refs.bsDom.style.height = (
                                document.documentElement.clientHeight -
                                this.$refs.head.offsetHeight -
                                this.$refs.nav.offsetHeight -
                                this.$refs.storeMenu.offsetHeight
                            )+'px';
                    }
//                    setTimeout(function(){
//                        that.$nextTick(function(){
//                            that.scroll.refresh();
//                        });
//                    },400);
                },
                vertical:function(){
//                    this.$nextTick(function(){
//                        this.scroll.refresh();
//                    });
                },
                search:{
                    handler:function(v){
                        this.group = {
                            first:0,
                            limit:20,
                            list:[],
                            loaded:false
                        };
                        this.loading = false;
                        this.getList();
                    },
                    deep:true
                }
            },
            computed:{
                cate_name:function(){
                    if(this.search.sInfo.id != undefined && this.search.sInfo.id != 0)
                        return this.search.sInfo.cate_name;
                    else if(this.search.sInfo.id === 0 && this.search.cInfo.id != undefined)
                        return this.search.cInfo.cate_name;
                    else
                        return '默认';
                }
            },
            methods:{
                shopCard:function(product){
                    var that = this;
                    $h.loadFFF();
                    storeApi.getProductAttr(product.id,function(res){
                        var productValue = res.data.data.productValue;
                        $h.loadClear();
                        that.$shopCard({
                            product:product,
                            show:true,
                            onChange:function(values){
                                var checkedAttr = productValue[values.sort().join(',')];
                                if(undefined != checkedAttr){
                                    this.changeProduct({
                                        stock:checkedAttr.stock,
                                        price:checkedAttr.price,
                                        image:checkedAttr.image
                                    });
                                }
                            },
                            onCart:function(values,cartNum){
                                var checkedAttr = productValue[values.sort().join(',')];
                                storeApi.setCart({
                                    cartNum:cartNum,
                                    uniqueId:checkedAttr === undefined ? 0 : checkedAttr.unique,
                                    productId:product.id
                                },function () {
                                    $h.pushMsg('加入购物车成功!');
                                });
                                this.close();
                            },
                            onBuy:function(values,cartNum){
                                var checkedAttr = productValue[values.sort().join(',')];
                                storeApi.goBuy({
                                    cartNum:cartNum,
                                    uniqueId:checkedAttr === undefined ? 0 : checkedAttr.unique,
                                    productId:product.id
                                },function(cartId){
                                    location.href = $h.U({
                                        c:'store',
                                        a:'confirm_order',
                                        p:{cartId:cartId}
                                    });
                                });
                                this.close();
                            },
                            attrList:res.data.data.productAttr,
                            onClose:function(){
                                setTimeout(this.remove,550);
                            }
                        });
                    },function(){ $h.loadClear(); return true});

                },
                goCart:function(){
                    location.href = $h.U({
                        c:'store',
                        a:'cart'
                    });
                },
                productUrl:function(id){
                    return $h.U({c:'store',a:'detail',p:{id:id}});
                },
                searchProduct:function(){
                    if(this.keywrod == '') return;
                    if(this.keywrod == this.search.keyword) return;
                    this.search.keyword = this.keyword;
                    this.search.cInfo = {};
                    this.search.sInfo = {};
                    this.search.news = 0;
//                    this.scroll.scrollTo(0,0);
                },
                getList:function(){
                    if(this.loading) return;
                    var that = this,type = 'group',group = that.group;
                    if(group.loaded) return ;
                    this.loading = true;
                    storeApi.getProductList({
                        keyword:base.encode(this.search.keyword) || 0,
                        cId:this.cid || 0,
                        sId:this.sid || 0,
                        priceOrder:this.search.priceOrder || 0,
                        salesOrder:this.search.salesOrder || 0,
                        news:this.search.news || 0,
                        first:group.first,
                        limit:group.limit
                    },function(res){
                        var list = res.data.data,groupLength = group.list.length;
//                        that.scroll.stop();
                        group.loaded = list.length < group.limit;
                        group.first += list.length;
                        group.list = group.list.concat(list);
                        that.$set(that,type,group);
                        that.loading = false;
//                        that.$nextTick(function(){
//                            if(list.length || !groupLength) that.scroll.refresh();
//                            if(!groupLength) setTimeout(function(){that.scroll.scrollTo(0,0,300);},0);
//                            that.scroll.finishPullUp();
//                        });
                    },function(){that.loading = false});
                },
                bScrollInit:function () {
                    var that = this;
                    this.$refs.bsDom.style.height = (
                        document.documentElement.clientHeight -
                        this.$refs.head.offsetHeight -
                        this.$refs.nav.offsetHeight -
                        this.$refs.storeMenu.offsetHeight
                        )+'px';
                    this.$refs.bsDom.style.overflow = 'scroll';
//                    this.$refs.bsDom.getElementsByTagName('div')[0].style.position = 'relative';
//                    this.scroll = new BScroll(this.$refs.bsDom,{bounce:false,observeDOM:false,click:true,probeType:1,cancelable:false,snapThreshold:0.01,deceleration:0.0018, useTransform:false});
//                    this.movingDirectionY = this.scroll.movingDirectionY;
//                    this.scroll.on('pullingUp',function(){
//                        that.loading == false && that.getList();
//                    });
//                    this.scroll.on('flick',function(){
//                        that.movingDirectionY = that.scroll.movingDirectionY;
//                    });
                },
                changeDefault:function () {
                    this.search.salesOrder = '';
                    this.search.priceOrder = '';
                    this.search.news = false;
                },
                changeNews:function(){
                    this.search.salesOrder = '';
                    this.search.priceOrder = '';
                    this.search.news = !this.search.news;
                },
                changePriceOrder:function(){
                    if(this.search.priceOrder == '')
                        this.search.priceOrder = 'desc';
                    else if(this.search.priceOrder == 'desc')
                        this.search.priceOrder = 'asc';
                    else if(this.search.priceOrder == 'asc')
                        this.search.priceOrder = '';
                    this.search.salesOrder = '';
                    this.search.news = false;
                },
                changeSalesOrder:function(){
                    if(this.search.salesOrder == '')
                        this.search.salesOrder = 'desc';
                    else if(this.search.salesOrder == 'desc')
                        this.search.salesOrder = 'asc';
                    else if(this.search.salesOrder == 'asc')
                        this.search.salesOrder = '';
                    this.search.priceOrder = '';
                    this.search.news = false;
                },
                selectAll:function(){
                    if(!this.templateCategory.id) return ;
                    this.search.cInfo = {};
                    this.search.sInfo = {};
                    this.templateCategory = {};
                    this.childCategoryList = [];
                    this.showCategoryList = false;
                },
                changeCategory:function (category,index) {
                    this.templateCategory = category;
                    this.childCategoryList = [{'cate_name':'全部商品','id':0}];
                    this.childCategoryList = this.childCategoryList.concat(category.child);
                },
                changeChild:function(child){
                    this.search.sInfo = child;
                    this.search.cInfo = this.templateCategory;
                    this.showCategoryList = false;
                    this.search.keyword = this.keyword = '';
                }

            },
            mounted:function(){
                var that = this;
                this.bScrollInit();
                this.getList();
            }
        });
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
