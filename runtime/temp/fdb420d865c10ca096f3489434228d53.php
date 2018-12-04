<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:66:"C:\soft\www\wx_new/application/wap/view/first/my\edit_address.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\container.html";i:1534566660;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\head.html";i:1534566660;s:63:"C:\soft\www\wx_new\application\wap\view\first\public\style.html";i:1534566660;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;s:62:"C:\soft\www\wx_new\application\wap\view\first\public\foot.html";i:1534565810;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\right_nav.html";i:1534566660;}*/ ?>
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
    <title>添加地址</title>
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

<body style="font-size: .24rem !important;">
<div id="edit-address" class="user-add-address">
    <section>
        <form action="" method="post" @submit.prevent="submit" ref="form">
            <div class="address-info">
                <div class="item">
                    <label for="">姓名</label>
                    <input type="text" v-model="info.real_name" placeholder="请输入姓名"/>
                </div>
                <div class="item">
                    <label for="">联系电话</label>
                    <input type="tel" v-model="info.phone" placeholder="请输入联系电话"/>
                </div>
                <div class="item">
                    <label for="">所在地区</label>
                    <input class="select-add" readonly v-model="address" @click="selectAddress" type="text" placeholder="请选择"/>
                </div>
                <div class="item">
                    <label for="">详细地址</label>
                    <input type="text" v-model="info.detail" placeholder="请填写具体地址"/>
                </div>
                <div class="item">
                    <label for="">邮政编码</label>
                    <input type="tel" v-model="info.post_code" placeholder="请填写邮政编码(选填)"/>
                </div>
            </div>
            <div class="set-default">
                <label class="well-check">
                    <input class="ckecks" type="checkbox" v-model="info.is_default"><i class="icon"></i>
                    设为默认地址
                </label>
            </div>
            <button class="sub-btn" type="submit">立即保存</button>
        </form>
        <yd-cityselect :items="district" v-model="addressShow" :callback="changeAddress"></yd-cityselect>
    </section>
</div>
<script src="/public/static/plug/reg-verify.js"></script>
<script>
    requirejs(['vue','ydui','static/plug/ydui/province_city_area','helper','store'],function(Vue,ydui,district,$h,storeApi){
        $addressInfo = <?=json_encode($addressInfo)?>;
        Vue.use(ydui.default);
        new Vue({
            el:"#edit-address",
            data:{
                district:district,
                addressShow:false,
                info:{
                    id:$addressInfo.id || '',
                    address:{
                        province: $addressInfo.province || '',
                        city: $addressInfo.city || '',
                        district:$addressInfo.district || ''
                    },
                    post_code:$addressInfo.post_code || '',
                    detail:$addressInfo.detail || '',
                    real_name:$addressInfo.real_name || '',
                    phone:$addressInfo.phone || '',
                    is_default:$addressInfo.is_default == 1 || false
                }
            },
            computed:{
                address:function(){
                    var address = this.info.address;
                    if(address.province && address.city && address.district)
                        return address.province+' '+address.city+' '+address.district;
                    else
                        return '';
                }
            },
            methods:{
                changeAddress:function(res){
                    var address = this.info.address;
                    address.province = res.itemName1;
                    address.city = res.itemName2;
                    address.district = res.itemName3;
                },
                selectAddress:function(){
                    this.addressShow = true;
                    document.activeElement.blur();
                },
                submit:function(){
                    var address = this.info.address,that = this;
                    if($reg.isEmpty(this.info.real_name))
                        return $h.returnErrorMsg('请输入姓名');
                    if(!$reg.isPhone(this.info.phone))
                        return $h.returnErrorMsg('请输入正确的手机号');
                    if($reg.isEmpty(address.province) || $reg.isEmpty(address.city) || $reg.isEmpty(address.district))
                        return $h.returnErrorMsg('请选择所在地区');
                    if($reg.isEmpty(this.info.detail))
                        return $h.returnErrorMsg('请补充详细地址');
                    if(!$reg.isEmpty(this.info.post_code) && !$reg.isPostCode(this.info.post_code))
                        return $h.returnErrorMsg('请输入正确的邮政编码');
                    $h.load();
                    storeApi.editUserAddress(this.info,function(res){
                        $h.pushMsg('编辑收货地址成功',function(){
                            location.replace( document.referrer || $h.U({
                                c:'my',
                                a:'address'
                            }));
                        })
                    },function(){
                        $h.loadClear();
                        return true;
                    });
                }
            },
            mounted:function(){

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
