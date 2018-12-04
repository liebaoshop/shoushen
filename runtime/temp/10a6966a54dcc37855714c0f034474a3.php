<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:73:"C:\soft\www\wx_new/application/admin\view\wechat\store_service\create.php";i:1534566660;s:63:"C:\soft\www\wx_new\application\admin\view\public\frame_head.php";i:1538032256;s:63:"C:\soft\www\wx_new\application\admin\view\public\inner_page.php";i:1534566660;s:65:"C:\soft\www\wx_new\application\admin\view\public\inner_footer.php";i:1534566660;}*/ ?>

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



<link href="/public/system/frame/css/plugins/iCheck/custom.css" rel="stylesheet">
<script src="/public/static/plug/moment.js"></script>
<link rel="stylesheet" href="/public/static/plug/daterangepicker/daterangepicker.css">
<script src="/public/static/plug/daterangepicker/daterangepicker.js"></script>
<script src="/public/system/frame/js/plugins/iCheck/icheck.min.js"></script>
<style type="text/css">
    .form-inline .input-group{display: inline-table;vertical-align: middle;}
    .form-inline .input-group .input-group-btn{width: auto;}
    .form-add{position: fixed;left: 0;bottom: 0;width:100%;}
    .form-add .sub-btn{border-radius: 0;width: 100%;padding: 6px 0;font-size: 14px;outline: none;border: none;color: #fff;background-color: #2d8cf0;}
</style>
<div class="row">
    <div class="col-sm-12">
        <div class="ibox">
            <div class="ibox-content">
                <div class="row">
                    <div class="m-b m-l">
                        <form class="form-inline search" id="form" method="get">
                            <div class="input-group datepicker">
                                <input style="width: 200px;" type="text" id="data" class="input-sm form-control" name="data" value="<?php echo $where['data']; ?>" placeholder="请选择日期" >
                            </div>
                            <div class="input-group">
                                <input style="width: 200px;" type="text" name="nickname" value="<?php echo $where['nickname']; ?>" placeholder="请输入微信用户名称" class="input-sm form-control"> <span class="input-group-btn">
                                <button type="submit" class="btn btn-sm btn-primary"> <i class="fa fa-search"></i>搜索</button> </span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped  table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center"></th>
                                <th class="text-center">编号</th>
                                <th class="text-center">微信用户名称</th>
                                <th class="text-center">头像</th>
                                <th class="text-center">性别</th>
                                <th class="text-center">地区</th>
                                <th class="text-center">是否关注公众号</th>
                                <th class="text-center">首次关注时间</th>
                            </tr>
                        </thead>
                        <tbody class="">
                            <form method="post" class="sub-save">
                                <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                <tr>
                                    <td class="text-center">
                                        <label class="checkbox-inline i-checks">
                                            <input type="checkbox" name="ids[]" value="<?php echo $vo['uid']; ?>">
                                        </label>
                                    </td>
                                    <td class="text-center">
                                        <?php echo $vo['uid']; ?>
                                    </td>
                                    <td class="text-center">
                                        <?php echo $vo['nickname']; ?>
                                    </td>
                                    <td class="text-center">
                                        <img src="<?php echo $vo['headimgurl']; ?>" alt="<?php echo $vo['nickname']; ?>" title="<?php echo $vo['nickname']; ?>" style="width:50px;height: 50px;cursor: pointer;" class="head_image" data-image="<?php echo $vo['headimgurl']; ?>">
                                    </td>
                                    <td class="text-center">
                                        <?php if($vo['sex'] == 1): ?>
                                        男
                                        <?php elseif($vo['sex'] == 2): ?>
                                        女
                                        <?php else: ?>
                                        保密
                                        <?php endif; ?>
                                    </td>
                                    <td class="text-center">
                                        <?php echo $vo['country']; ?><?php echo $vo['province']; ?><?php echo $vo['city']; ?>
                                    </td>
                                    <td class="text-center">
                                        <?php if($vo['subscribe']): ?>
                                        关注
                                        <?php else: ?>
                                        取消
                                        <?php endif; ?>
                                    </td>
                                    <td class="text-center">
                                        <?php echo date("Y-m-d H:i:s",$vo['add_time']); ?>
                                    </td>
                                </tr>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </form>
                        </tbody>
                    </table>
                </div>
                <link href="/public/system/frame/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
<div class="row">
    <div class="col-sm-6">
        <div class="dataTables_info" id="DataTables_Table_0_info" role="alert" aria-live="polite" aria-relevant="all">共 <?php echo $total; ?> 项</div>
    </div>
    <div class="col-sm-6">
        <div class="dataTables_paginate paging_simple_numbers" id="editable_paginate">
            <?php echo $page; ?>
        </div>
    </div>
</div>
            </div>
        </div>
    </div>
</div>
<div class="form-add">
    <button type="submit" class="sub-btn">提交</button>
</div>
<script>
    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
    });
    $('.head_image').on('click',function (e) {
        var image = $(this).data('image');
        $eb.openImage(image);
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
    $(".sub-btn").on("click",function(){
        var formData = {checked_menus:[]};
        $("input[name='ids[]']:checked").each(function(){
            formData.checked_menus.push($(this).val());
        });
        $eb.axios.post("<?php echo $save; ?>",formData).then((res)=>{
            if(res.status && res.data.code == 200)
                return Promise.resolve(res.data);
            else
                return Promise.reject(res.data.msg || '添加失败,请稍候再试!');
        }).then((res)=>{
            $eb.message('success',res.msg || '操作成功!');
            $eb.closeModalFrame(window.name);
        }).catch((err)=>{
            this.loading=false;
            $eb.message('error',err);
        });
    })
</script>
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
