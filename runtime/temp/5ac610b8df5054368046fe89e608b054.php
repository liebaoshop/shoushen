<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:76:"C:\soft\www\wx_new/application/admin\view\wechat\store_service\chat_user.php";i:1534566660;s:63:"C:\soft\www\wx_new\application\admin\view\public\frame_head.php";i:1538032256;s:65:"C:\soft\www\wx_new\application\admin\view\public\inner_footer.php";i:1534566660;}*/ ?>

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



<div class="row">
    <div class="col-sm-12">
        <div class="ibox">
            <div class="ibox-content">
                <div class="table-responsive">
                    <table class="table table-striped  table-bordered">
                        <thead>
                        <tr>
                            <th class="text-center">用户名称</th>
                            <th class="text-center">用户头像</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody class="">
                        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <tr>
                            <td class="text-center"><?php echo $vo['nickname']; ?></td>
                            <td class="text-center"><img src="<?php echo $vo['headimgurl']; ?>" class="head_image" data-image="<?php echo $vo['headimgurl']; ?>" width="35" height="35"></td>
                            <td class="text-center">
                                <button class="btn btn-info btn-xs" type="button" onclick="window.location.href='<?php echo Url('chat_list',array('uid'=>$now_service['uid'],'to_uid'=>$vo['uid'])); ?>'"><i class="fa fa-commenting-o"></i> 查看对话</button>
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
<script src="/public/system/frame/js/content.min.js"></script>
<script src="/public/system/frame/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/public/system/frame/js/plugins/jsKnob/jquery.knob.js"></script>
<script src="/public/system/frame/js/plugins/jasny/jasny-bootstrap.min.js"></script>
<script src="/public/system/frame/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="/public/system/frame/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
<script src="/public/system/frame/js/plugins/nouslider/jquery.nouislider.min.js"></script>
<script src="/public/system/frame/js/plugins/switchery/switchery.js"></script>
<script src="/public/system/frame/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
<script src="/public/system/frame/js/plugins/iCheck/icheck.min.js"></script>
<script src="/public/system/frame/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/public/system/frame/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/public/system/frame/js/plugins/clockpicker/clockpicker.js"></script>
<script src="/public/system/frame/js/plugins/cropper/cropper.min.js"></script>
<script src="/public/system/frame/js/plugins/peity/jquery.peity.min.js"></script>
<script src="/public/system/frame/js/plugins/iCheck/icheck.min.js"></script>
</body>
</html>
