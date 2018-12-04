<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:59:"C:\soft\www\wx_new/application/admin\view\public\notice.php";i:1534566660;}*/ ?>
<script>
    var $eb = parent._mpApi,back = <?=$backUrl?>;
    $eb.notice('<?php echo $type; ?>',{
        title:'<?php echo $msg; ?>',
        desc:'<?php echo $info; ?>' || null,
        duration:<?=$duration?>
    });
    !!back ? (location.replace(back)) : history.go(-1);
</script>