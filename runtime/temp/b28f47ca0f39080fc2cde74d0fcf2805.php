<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:78:"C:\soft\www\wx_new/application/admin\view\ump\store_combination\order_pink.php";i:1540348972;s:62:"C:\soft\www\wx_new\application\admin\view\public\container.php";i:1538399108;s:63:"C:\soft\www\wx_new\application\admin\view\public\frame_head.php";i:1538032256;s:58:"C:\soft\www\wx_new\application\admin\view\public\style.php";i:1540348972;s:65:"C:\soft\www\wx_new\application\admin\view\public\frame_footer.php";i:1534565810;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if(empty($is_layui) || (($is_layui instanceof \think\Collection || $is_layui instanceof \think\Paginator ) && $is_layui->isEmpty())): ?>
    <link href="/public/system/frame/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <?php endif; ?>
    <link href="/public/static/plug/layui/css/layui.css" rel="stylesheet">
    <link href="/public/system/css/layui-admin.css" rel="stylesheet"></link>
    <link href="/public/system/frame/css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="/public/system/frame/css/animate.min.css" rel="stylesheet">
    <link href="/public/system/frame/css/style.min.css?v=3.0.0" rel="stylesheet">
    <script src="/public/system/frame/js/jquery.min.js"></script>
    <script src="/public/system/frame/js/bootstrap.min.js"></script>
    <script src="/public/static/plug/layui/layui.all.js"></script>
    <script>
        $eb = parent._mpApi;
        // if(!$eb) top.location.reload();
        window.controlle="<?php echo strtolower(trim(preg_replace("/[A-Z]/", "_\\0", think\Request::instance()->controller()), "_"));?>";
        window.module="<?php echo think\Request::instance()->module();?>";
    </script>



    <title></title>
    
<script src="/public/static/plug/sweetalert2/sweetalert2.all.min.js"></script>
<script src="/public/static/plug/moment.js"></script>
<link rel="stylesheet" href="/public/static/plug/daterangepicker/daterangepicker.css">
<script src="/public/static/plug/daterangepicker/daterangepicker.js"></script>

    <!--<script type="text/javascript" src="/static/plug/basket.js"></script>-->
<script type="text/javascript" src="/public/static/plug/requirejs/require.js"></script>
<?php /*  <script type="text/javascript" src="/static/plug/requirejs/require-basket-load.js"></script>  */ ?>
<script>
    requirejs.config({
        map: {
            '*': {
                'css': '/public/static/plug/requirejs/require-css.js'
            }
        },
        shim:{
            'iview':{
                deps:['css!iviewcss']
            },
            'layer':{
                deps:['css!layercss']
            }
        },
        baseUrl:'//'+location.hostname+'/public/',
        paths: {
            'static':'static',
            'system':'system',
            'vue':'static/plug/vue/dist/vue.min',
            'axios':'static/plug/axios.min',
            'iview':'static/plug/iview/dist/iview.min',
            'iviewcss':'static/plug/iview/dist/styles/iview',
            'lodash':'static/plug/lodash',
            'layer':'static/plug/layer/layer',
            'layercss':'static/plug/layer/theme/default/layer',
            'jquery':'static/plug/jquery/jquery.min',
            'moment':'static/plug/moment',
            'sweetalert':'static/plug/sweetalert2/sweetalert2.all.min'

        },
        basket: {
            excludes:['system/js/index','system/util/mpVueComponent','system/util/mpVuePackage']
//            excludes:['system/util/mpFormBuilder','system/js/index','system/util/mpVueComponent','system/util/mpVuePackage']
        }
    });
</script>
<script type="text/javascript" src="/public/system/util/mpFrame.js"></script>
    
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">

<div class="row">
    <div class="col-sm-12">
        <div class="ibox">
            <div class="ibox-content">
                <div class="row">
                </div>
                <div class="table-responsive" style="overflow:visible">
                    <table class="table table-striped  table-bordered">
                        <thead>
                        <tr>
                            <th class="text-center">编号</th>
                            <th class="text-center">用户名称</th>
                            <th class="text-center">用户头像</th>
                            <th class="text-center">订单编号</th>
                            <th class="text-center">金额</th>
                            <th class="text-center">订单状态</th>
                        </thead>
                        <tbody class="">
                        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <tr>
                            <td class="text-center">
                                <?php echo $vo['id']; ?>
                            </td>
                            <td class="text-center">
                                <?php echo $vo['nickname']; ?>/<?php echo $vo['uid']; ?>
                            </td>
                            <td class="text-center">
                                <img class="open_image" style="max-width: 80px;" data-image="<?php echo $vo['avatar']; ?>" src="<?php echo $vo['avatar']; ?>" alt="<?php echo $vo['nickname']; ?>">
                            </td>
                            <td class="text-center">
                                <a href="<?php echo Url('order.storeOrder/index'); ?>?real_name=<?php echo $vo['order_id']; ?>"><?php echo $vo['order_id']; ?></a>
                            </td>
                            <td class="text-center">
                                ￥<?php echo $vo['price']; ?>
                            </td>
                            <td class="text-center">
                                <?php if($vo['is_refund']): ?>
                                已退款
                                <?php else: ?>
                                未退款
                                <?php endif; ?>
                            </td>
                        </tr>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>



<script>
    $(".open_image").on('click',function (e) {
        var image = $(this).data('image');
        $eb.openImage(image);
    })
    $('.btn-danger').on('click',function (e) {
        window.t = $(this);
        var _this = $(this),url =_this.data('url');
        $eb.$swal('delete',function(){
            $eb.axios.get(url).then(function(res){
                if(res.status == 200 && res.data.code == 200) {
                    $eb.$swal('success',res.data.msg);
                }else
                    return Promise.reject(res.data.msg || '收货失败')
            }).catch(function(err){
                $eb.$swal('error',err);
            });
        },{'title':'您确定要修改收货状态吗？','text':'修改后将无法恢复,请谨慎操作！','confirm':'是的，我要修改'})
    })
    $('.offline_btn').on('click',function (e) {
        window.t = $(this);
        var _this = $(this),url =_this.data('url'),pay_price =_this.data('pay');
        $eb.$swal('delete',function(){
            $eb.axios.get(url).then(function(res){
                if(res.status == 200 && res.data.code == 200) {
                    $eb.$swal('success',res.data.msg);
                }else
                    return Promise.reject(res.data.msg || '收货失败')
            }).catch(function(err){
                $eb.$swal('error',err);
            });
        },{'title':'您确定要修改已支付'+pay_price+'元的状态吗？','text':'修改后将无法恢复,请谨慎操作！','confirm':'是的，我要修改'})
    })

    $('.add_mark').on('click',function (e) {
        var _this = $(this),url =_this.data('url'),id=_this.data('id');
        $eb.$alert('textarea',{},function (result) {
            if(result){
                $.ajax({
                    url:url,
                    data:'remark='+result+'&id='+id,
                    type:'post',
                    dataType:'json',
                    success:function (res) {
                        console.log(res);
                        if(res.code == 200) {
                            $eb.$swal('success',res.msg);
                        }else
                            $eb.$swal('error',res.msg);
                    }
                })
            }else{
                $eb.$swal('error','请输入要备注的内容');
            }
        });
    })
    $('.save_mark').on('click',function (e) {
        var _this = $(this),url =_this.data('url'),id=_this.data('id'),make=_this.data('make');
        $eb.$alert('textarea',{title:'请修改内容',value:make},function (result) {
            if(result){
                $.ajax({
                    url:url,
                    data:'remark='+result+'&id='+id,
                    type:'post',
                    dataType:'json',
                    success:function (res) {
                        console.log(res);
                        if(res.code == 200) {
                            $eb.$swal('success',res.msg);
                        }else
                            $eb.$swal('error',res.msg);
                    }
                })
            }else{
                $eb.$swal('error','请输入要备注的内容');
            }
        });
    })
    var dateInput =$('.datepicker');
    dateInput.daterangepicker({
        autoUpdateInput: false,
        "opens": "center",
        "drops": "down",
        "ranges": {
            '今天': [moment(), moment().add(1, 'days')],
            '昨天': [moment().subtract(1, 'days'), moment()],
            '上周': [moment().subtract(6, 'days'), moment()],
            '前30天': [moment().subtract(29, 'days'), moment()],
            '本月': [moment().startOf('month'), moment().endOf('month')],
            '上月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        "locale" : {
            applyLabel : '确定',
            cancelLabel : '清空',
            fromLabel : '起始时间',
            toLabel : '结束时间',
            format : 'YYYY/MM/DD',
            customRangeLabel : '自定义',
            daysOfWeek : [ '日', '一', '二', '三', '四', '五', '六' ],
            monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月',
                '七月', '八月', '九月', '十月', '十一月', '十二月' ],
            firstDay : 1
        }
    });
    dateInput.on('cancel.daterangepicker', function(ev, picker) {
        $("#data").val('');
    });
    dateInput.on('apply.daterangepicker', function(ev, picker) {
        $("#data").val(picker.startDate.format('YYYY/MM/DD') + ' - ' + picker.endDate.format('YYYY/MM/DD'));
    });
</script>


</div>
</body>
</html>
