<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:85:"/web/wwwroot/demo2.5.crmeb.net/application/admin/view/ump/store_combination/index.php";i:1535761992;s:74:"/web/wwwroot/demo2.5.crmeb.net/application/admin/view/public/container.php";i:1538399107;s:75:"/web/wwwroot/demo2.5.crmeb.net/application/admin/view/public/frame_head.php";i:1538032256;s:70:"/web/wwwroot/demo2.5.crmeb.net/application/admin/view/public/style.php";i:1540348972;s:77:"/web/wwwroot/demo2.5.crmeb.net/application/admin/view/public/frame_footer.php";i:1534565810;}*/ ?>
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
    
<script type="text/javascript" src="/public/static/plug/jquery.downCount.js"></script>

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

<div class="layui-fluid">
    <div class="layui-row layui-col-space15"  id="app">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">拼团产品搜索</div>
                <div class="layui-card-body">
                    <div class="alert alert-success alert-dismissable">
                        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                        目前拥有<?php echo $countCombination; ?>个拼团产品
                    </div>
                    <form class="layui-form">
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label">搜　　索：</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="store_name" lay-verify="store_name" style="width: 100%" autocomplete="off" placeholder="请输入产品名称,关键字,编号" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-inline">
                                <label class="layui-form-label">拼团状态：</label>
                                <div class="layui-input-inline">
                                    <select name="is_show" lay-verify="is_show">
                                        <option value="">全部</option>
                                        <option value="1">开启</option>
                                        <option value="0">关闭</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <button class="layui-btn layui-btn-sm" lay-submit="" lay-filter="search" style="font-size:14px;line-height: 9px;">
                                    <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>搜索</button>
                                <button lay-submit="export" lay-filter="export" class="layui-btn layui-btn-primary layui-btn-sm">
                                    <i class="layui-icon layui-icon-delete layuiadmin-button-btn" ></i> Excel导出</button>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    总展现量
                    <span class="layui-badge layuiadmin-badge">量</span>
                </div>
                <div class="layui-card-body">
                    <p class="layuiadmin-big-font"><?php echo $statistics['browseCount']; ?></p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    访客人数
                    <span class="layui-badge layuiadmin-badge">人</span>
                </div>
                <div class="layui-card-body">
                    <p class="layuiadmin-big-font"><?php echo $statistics['visitCount']; ?></p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    参与人数
                    <span class="layui-badge layuiadmin-badge">人</span>
                </div>
                <div class="layui-card-body">
                    <p class="layuiadmin-big-font"><?php echo $statistics['partakeCount']; ?></p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    成团数量
                    <span class="layui-badge layuiadmin-badge">量</span>
                </div>
                <div class="layui-card-body">
                    <p class="layuiadmin-big-font"><?php echo $statistics['pinkCount']; ?></p>
                </div>
            </div>
        </div>
        <!-- end-->
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">拼团产品列表</div>
                <div class="layui-card-body">
                    <table class="layui-hide" id="combinationList" lay-filter="combinationList"></table>
                    <script type="text/html" id="status">
                        <input type='checkbox' name='status' lay-skin='switch' value="{{d.id}}" lay-filter='status' lay-text='开启|关闭'  {{ d.is_show == 1 ? 'checked' : '' }}>
                    </script>
                    <script type="text/html" id="stopTime">
                        <div class="count-time-{{d.id}}" data-time="{{d._stop_time}}">
                            <span class="days">00</span>
                            :
                            <span class="hours">00</span>
                            :
                            <span class="minutes">00</span>
                            :
                            <span class="seconds">00</span>
                        </div>
                    </script>
                    <script type="text/html" id="barDemo">
                        <button type="button" class="layui-btn layui-btn-xs" onclick="dropdown(this)"><i class="layui-icon layui-icon-edit"></i>操作</button>
                        <ul class="layui-nav-child layui-anim layui-anim-upbit">
                            <li>
                                <a href="javascript:void(0);" onclick="$eb.createModalFrame('{{d.title}}-编辑','<?php echo Url('edit'); ?>?id={{d.id}}')"><i class="layui-icon layui-icon-edit"></i> 编辑</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" onclick="$eb.createModalFrame('{{d.title}}-编辑内容','<?php echo Url('edit_content'); ?>?id={{d.id}}')"><i class="fa fa-pencil"></i> 编辑内容</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="delstor" lay-event='delstor'><i class="layui-icon layui-icon-delete"></i> 删除</a>
                            </li>
                        </ul>
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>



<script src="/public/system/js/layuiList.js"></script>
<script>
    layList.form.render();
    layList.tableList('combinationList',"<?php echo Url('get_combination_list'); ?>",function () {
        return [
            {field: 'id', title: '编号', sort: true,event:'id'},
            {field: 'image', title: '拼团图片',templet: '<p><img src="{{d.image}}" alt="{{d.title}}" class="open_image" data-image="{{d.image}}"></p>'},
            {field: 'title', title: '拼团名称'},
            {field: 'ot_price', title: '原价'},
            {field: 'price', title: '拼团价'},
            {field: 'stock', title: '库存'},
            {field: 'people', title: '拼团人数',templet: '<span>【{{d.people}}】人</span>'},
            {field: 'count_people_browse', title: '访客人数'},
            {field: 'browse', title: '展现量'},
            {field: 'count_people_all', title: '参与人数',templet: '<span>【{{d.count_people_all}}】人</span>'},
            {field: 'count_people_pink', title: '成团数量',templet: '<span>【{{d.count_people_pink}}】团</span>'},
            {field: 'browse', title: '浏览量'},
            {field: 'is_show', title: '产品状态',templet:"#status"},
            {field: '_stop_time', title: '结束时间',width:'8%',toolbar: '#stopTime'},
            {fixed: 'right', title: '操作', align: 'center', toolbar: '#barDemo'}
        ]
    });
    layList.search('search',function(where){
        layList.reload(where);
        setTime();
    });
    layList.search('export',function(where){
        location.href=layList.U({c:'ump.store_combination',a:'save_excel',q:{
            is_show:where.is_show,
            store_name:where.store_name
        }});
    })
    setTime();
    window.$combinationId = <?php echo json_encode($combinationId);?>;
    function setTime() {
        setTimeout(function () {
            $.each($combinationId,function (index,item) {
               if($('.count-time-'+item).attr('data-time')!=undefined){
                    $('.count-time-'+item).downCount({
                        date: $('.count-time-'+item).attr('data-time'),
                        offset: +8
                    });
               }
            })
        },3000);
    }
    layList.switch('status',function (odj,value,name) {
        if (odj.elem.checked == true) {
            layList.baseGet(layList.Url({
                c: 'ump.store_combination',
                a: 'set_combination_status',
                p: {status: 1, id: value}
            }), function (res) {
                layList.msg(res.msg);
            });
        } else {
            layList.baseGet(layList.Url({
                c: 'ump.store_combination',
                a: 'set_combination_status',
                p: {status: 0, id: value}
            }), function (res) {
                layList.msg(res.msg);
            });
        }
    })
    layList.tool(function (event,data,obj) {
        switch (event) {
            case 'delstor':
                var url=layList.U({c:'ump.store_combination',a:'delete',q:{id:data.id}});
                $eb.$swal('delete',function(){
                    $eb.axios.get(url).then(function(res){
                        if(res.status == 200 && res.data.code == 200) {
                            $eb.$swal('success',res.data.msg);
                            obj.del();
                        }else
                            return Promise.reject(res.data.msg || '删除失败')
                    }).catch(function(err){
                        $eb.$swal('error',err);
                    });
                })
                break;
        }
    })
    $(document).click(function (e) {
        $('.layui-nav-child').hide();
    })
    function dropdown(that) {
        var oEvent = arguments.callee.caller.arguments[0] || event;
        oEvent.stopPropagation();
        var offset = $(that).offset();
        var index = $(that).parents('tr').data('index');
        $('.layui-nav-child').each(function (key) {
            if (key != index) {
                $(this).hide();
            }
        })
        if($(document).height() < offset.top+$(that).next('ul').height()){
            $(that).next('ul').css({
                'padding': 10,
                'top': offset.top-$(that).next('ul').height()-30,
                'min-width': 'inherit',
                'left': offset.left - $(that).width() / 2,
                'position': 'fixed'
            }).toggle();
        }else{
            $(that).next('ul').css({
                'padding': 10,
                'top': offset.top + 30,
                'min-width': 'inherit',
                'left': offset.left - $(that).width() / 2,
                'position': 'fixed'
            }).toggle();
        }
    }
</script>


</div>
</body>
</html>
