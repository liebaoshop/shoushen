<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:64:"C:\soft\www\wx_new/application/wap/view/first/store\cut_con.html";i:1543377703;s:67:"C:\soft\www\wx_new\application\wap\view\first\public\requirejs.html";i:1538295312;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport"content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <meta name="browsermode" content="application"/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!-- 禁止百度转码 -->
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!-- uc强制竖屏 -->
    <meta name="screen-orientation" content="portrait">
    <!-- QQ强制竖屏 -->
    <meta name="x5-orientation" content="portrait">
    <link rel="stylesheet" href="/public/wap/first/bargain/css/reset.css">
    <link rel="stylesheet" href="/public/wap/first/bargain/css/base.css">
    <link rel="stylesheet" href="/public/wap/first/bargain/font/iconfont.css">
    <link rel="stylesheet" href="/public/wap/first/bargain/css/swiper.min.css">
    <link rel="stylesheet" href="/public/wap/first/bargain/css/style.css">
    <script src="/public/wap/first/bargain/js/media.js"></script>
    <script src="/public/wap/first/bargain/js/jquery-2.1.4.min.js"></script>
    <script src="/public/wap/first/bargain/js/swiper.min.js"></script>
    <script type="text/javascript" src="/public/static/plug/wxApi.js"></script>
    <script>
        $jssdk = function(){return <?=\service\WechatService::jsSdk()?>;}
    </script>
    <style>
        .selfEnd{display: none}
        .helpFriendEnd{display: none}
    </style>
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
    <title>砍价详情</title>
</head>
<body style="background-color:#ff3d3d;">
<div class="cut-con">
    <div class="cut-bg">
        <div class="header acea-row row-center-wrapper"><?php echo $lookCount; ?><span>人查看</span><?php echo $shareCount; ?><span>人分享</span><?php echo $userCount; ?><span>人报名</span></div>
        <div class='activity-rules'>
            <div class='activity'>活动</div>
            <div>规则</div>
        </div>
        <div class='time'>活动结束倒计时<span class="time_d"></span>天<span class="time_h"></span>时<span class="time_m"></span>分<span class="time_s"></span>秒</div>
    </div>
    <div class='cut-padding'>
        <div class='figure'>
            <div  class='cut-write acea-row'>
                <div class="picture"><img src='<?php echo $bargain['image']; ?>'  alt="<?php echo $bargain['title']; ?>"></div>
                <div class="figure-con acea-row row-column-all">
                    <div class='write-text ovf2'><?php echo $bargain['title']; ?></div>
                    <div class='write-yuan'>原价￥<?php echo $bargain['price']; ?></div>
                    <div class='write-num'>最低￥<span><?php echo $bargain['min_price']; ?></span></div>
                </div>
            </div>
        </div>
        <?php if(!$bargainUid  || $bargainUid == $userInfo['uid']): ?>
        <div class='cut-tip'>已有<span><?php echo $count; ?></span>位好友成功帮您砍价</div>
        <?php elseif($bargainUid  && $bargainUid != $userInfo['uid']): ?>
        <div class='cut-tip acea-row row-center-wrapper'><img src="<?php echo $userInfoBargain['avatar']; ?>"><?php echo $userInfoBargain['nickname']; ?> 邀请您帮忙砍价</div>
        <?php endif; ?>
        <div class='cut-pro'>距离目标还有<?php echo $price; ?>元</div>
        <!-- 进度条 -->
        <div class="progress compressing"><div class="bar" style="width: 100%;"></div></div>
        <div class='pro-money acea-row row-between'>
            <div class='original-price'>
                <div>原价</div>
                <div>￥<?php echo $bargain['price']; ?></div>
            </div>
            <div class='target-price'>
                <div>目标</div>
                <div>￥<?php echo $bargain['min_price']; ?></div>
            </div>
        </div>
        <?php if(!$bargainUid || $bargainUid == $userInfo['uid']): ?><!--  砍价人页面 -->
        <?php if($price): ?>
        <div class='cut-but selfStart'>喊好友帮砍一刀</div>
        <div class="shares-model" style="display: none;"><img style="position: fixed;left: 0;top: 0;width: 100%;height: 100%;" src="/public/wap/first/crmeb/images/share-info.png"></div>
        <?php else: ?>
        <div class='cut-tip selfOrder'>恭喜您成功砍到最低价，快去支付订单吧！</div>
        <div class='cut-but selfOrder goOrder'>立即支付订单</div>
        <?php endif; elseif($bargainUid && $bargainUid != $userInfo['uid']): ?><!--  帮忙砍价的页面 -->
        <?php if($userInfoBargainBool == 2): ?>
        <div class='cut-tip helpFriendEnd'>已帮助好友砍价</div>
        <div class='cut-but helpFriendEnd'><a href="<?php echo Url('store/cut_con',array('id'=>$bargain['id'])); ?>">我也要参与</a></div>
        <?php else: ?>
        <div class='cut-but helpFriendStart bargain'>帮好友砍一刀</div>
        <?php endif; endif; ?>
        <div class='cut-but cut-but2 selfEnd'>活动已结束</div>
        <div class="cut-but3 selfOrder selfEnd"><a href="<?php echo Url('store/cut_list'); ?>">低价拿更多商品</a></div>
        <div class='bargain-list'>
            <div class='list-title'>
                <span>砍价帮</span>
            </div>
            <ul class='cut-ul'>
                <?php if(is_array($userHelpList) || $userHelpList instanceof \think\Collection || $userHelpList instanceof \think\Paginator): $i = 0; $__LIST__ = $userHelpList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <li class='cut-item acea-row row-wrap-all'>
                    <div class='li-pic acea-row row-middle'>
                        <img src='<?php echo $vo['avatar']; ?>'>
                        <div>
                            <div class='pic-title ovf'><?php echo $vo['nickname']; ?></div>
                        </div>
                    </div>
                    <div class="cut-price">砍掉<?php echo $vo['price']; ?>元</div>
                </li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <div class='cut-display'>· 只显示最近15个好友砍价纪录 ·</div>
        </div>
        <div class='bargain-list bargain-list2'>
            <div class='list-title'>
                <span>商品详情</span>
            </div>
            <div class='shop-con'>
                <?php echo $description; ?>
            </div>
        </div>
    </div>
    <div class='popup'>
        <div class='popup-title'>活动规则<span class='iconfont icon-guanbi'></span></div>
        <?php if($rule): ?>
            <?php echo $rule; else: ?>
            <ul class='popup-con'>
                <li>1.点击上方按钮“我也要玩”参加活动。</li>
                <li>2.报名者自己点击【自砍一刀】随机减少价格。</li>
                <li>3.点击右上角…朋友也能帮你减。</li>
                <li>4.奖品份数有限，达标就会减少一份，份数领完则无法继续报名！</li>
                <li>5.完成后，马上下订单！</li>
            </ul>
        <?php endif; ?>
    </div>
    <div class="mask"></div>
    <div class='popup2'>
        <div class='popup2-bg'><span class='iconfont icon-guanbi'></span></div>
        <div class='popup2-con'>您已砍掉<span><?php echo $selfCutPrice; ?></span>元，分享给好友帮忙砍价！</div>
        <button class='popup2-bnt'>砍价成功</button>
    </div>
    <div class="mask2"></div>
</div>
<!--  location.origin + "<?php echo Url('store/cut_con',array('id'=>$bargain['id'],'bargainUid'=>$userInfoBargain['uid'])); ?>-->
<script>
        window.$bargain = <?php echo json_encode($bargain);?>;
        window.$bargainUid = "<?php echo $bargainUid; ?>";
        window.$selfCut = "<?php echo $selfCut; ?>";
        window.$userInfoBargainBool = "<?php echo $userInfoBargainBool; ?>";
        window.$userInfo = <?php echo json_encode($userInfo);?>;
        window.url = location.origin + "/wap/store/cut_con/id/"+<?php echo $bargain['id']; ?>+"/bargainUid/"+<?php echo $userInfoBargain['uid']; ?>;

</script>
<script>
    requirejs(['helper', 'store'], function ($h, storeApi) {
        var wxApi = mapleWx($jssdk(), function () {
            this.onMenuShareAll({
                title: $bargain.title,
                desc: '快帮'+$bargain.title+'来砍价',
                imgUrl: location.origin + $bargain.image,
                link: url
            });
        });
        if($userInfoBargainBool == 2){
            $('.helpFriendEnd').show();
            $('.helpFriendStart').hide();
        }
        if($selfCut == 0){
            $(".popup2").hide();
            $(".mask2").hide();
        }
        $('.selfStart').show();
        $('.selfStart').on('click',function () {
            $('.shares-model').css('display', 'block');
            $('.shares-model').on('click' , function(){
                $(this).css('display', 'none');
            });
            storeApi.addBargainShare({
                bargainId: $bargain.id
            });
        })
        $('.goOrder').on('click',function () {
            storeApi.goBuy({
                cartNum: $bargain.num,
                bargainId: $bargain.id,
                productId: $bargain.product_id,
            }, function (cartId) {
                location.href = $h.U({c: 'store', a: 'confirm_order',q:'cartId='+cartId});
            });
        });
        $('.bargain').on('click',function () {
            storeApi.bargainFriends({
                bargainId:$bargain.id,
                bargainUserId:$bargainUid
            },function (res) {
                if(res.data.data.status == 'SUCCESS'){
                    $h.pushMsg(res.data.msg,function () {
                        $('.helpFriendStart').hide();
                        $('.helpFriendEnd').show();
                    })
                }else if(res.data.data.status == 'ERROR'){
                    $h.pushMsg(res.data.msg,function () {

                    })
                }
            })
        })
        $(".activity-rules").on("click",function(){
            $(".popup").show();
            $(".mask").show();
        });
        $(".mask").on("click",function () {
            $(".popup").hide();
            $(".mask").hide();
        });
        $(".popup-title .iconfont").on("click",function () {
            $(".popup").hide();
            $(".mask").hide();
        });
        $(".mask2").on("click",function () {
            $(".popup2").hide();
            $(".mask2").hide();
        });
        $(".popup2-bg .iconfont").on("click",function () {
            $(".popup2").hide();
            $(".mask2").hide();
        });
        show_time();
        function show_time(){
            var time_start = new Date().getTime();
            var time_end =  $bargain.stop_time;
            var time_distance = time_end - time_start/1000;
            if(time_distance>0){
                // 天
                var int_day = Math.floor(time_distance/(60*60*24));
                // 时
                var int_hour = Math.floor(time_distance/(60*60))-(int_day*24);
                // 分
                var int_minute = Math.floor(time_distance/60)-(int_day*24*60)-(int_hour*60);
                // 秒
                var int_second = Math.floor(time_distance)-(int_day*24*60*60)-(int_hour*60*60)-(int_minute*60);
                // 时分秒为单数时、前面加零
                if(int_day < 10){
                    int_day = "0" + int_day;
                }
                if(int_hour < 10){
                    int_hour = "0" + int_hour;
                }
                if(int_minute < 10){
                    int_minute = "0" + int_minute;
                }
                if(int_second < 10){
                    int_second = "0" + int_second;
                }
                // 显示时间
                $(".time_d").text(int_day);
                $(".time_h").text(int_hour);
                $(".time_m").text(int_minute);
                $(".time_s").text(int_second);
            }else {
                $('.selfEnd').show();
                $('.selfStart').hide();
                $('.selfOrder').hide();
                $('.helpFriendStart').hide();
                $('.helpFriendEnd').hide();
                // 显示时间
                $(".time_d").text("00");
                $(".time_h").text("00");
                $(".time_m").text("00");
                $(".time_s").text("00");
            }
            // 设置定时器
            setTimeout(show_time,1000);
        }
    })
</script>
</body>
</html>