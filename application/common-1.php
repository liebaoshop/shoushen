<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件

/**
 * 敏感词过滤
 *
 * @param  string
 * @return string
 */
function sensitive_words_filter($str)
{
    header('content-type:text/html;charset=utf-8');
    if (!$str) return '';
    $file = ROOT_PATH. 'public/static/plug/censorwords/CensorWords';
    $words = file($file);
    foreach($words as $word)
    {
        $word = str_replace(array("\r\n","\r","\n"," "), '', $word);
        if (!$word) continue;

        $ret = @preg_match("/$word/", $str, $match);
        if ($ret) {
            return $match[0];
        }
    }
    return '';
}

/**获取时间段
 * @param $name
 * @param $param
 */
function gettimestamp($name = 'today',$param = ''){
    switch ($name){
        case 'today'://今天
            $timeamp['start'] = strtotime(date('Y-m-d'));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('+1 day')));
            break;
        case 'yesterday'://昨天
            $timeamp['start'] = strtotime(date('Y-m-d',strtotime('-1 day')));
            $timeamp['end'] = strtotime(date('Y-m-d'));
            break;
        case 'beforyesterday'://前天
            $timeamp['start'] = strtotime(date('Y-m-d',strtotime('-2 day')));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('-1 day')));
            break;
        case 'nowmonth'://本月
            $timeamp['start'] = strtotime(date('Y-m-01'));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('+1 day')));
            break;
        case 'permonth'://上月
            $timeamp['start'] = strtotime(date('Y-m-01',strtotime('-1 month')));
            $timeamp['end'] = strtotime(date('Y-m-01'));
            break;
        case 'preweek'://上周 注意我们是从周一开始算
            $timeamp['start'] = strtotime(date('Y-m-d',strtotime('-2 week Monday')));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('-1 week Monday +1 day')));
            break;
        case 'nowweek'://本周
            $timeamp['start'] = strtotime(date('Y-m-d',strtotime('-1 week Monday')));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('+1 day')));
            break;
        case 'preday'://30
            $timeamp['start'] = strtotime(date('Y-m-d'),strtotime($param.' day'));
            $timeamp['end'] = strtotime(date('Y-m-d'));
            break;
        case 'nextday'://30
            $timeamp['start'] = strtotime(date('Y-m-d'));
            $timeamp['end'] = strtotime(date('Y-m-d'),strtotime($param.' day'));
            break;
        case 'preyear'://去年
            $timeamp['start'] = strtotime(date('Y-01-01',strtotime('-1 year')));
            $timeamp['end'] = strtotime(date('Y-12-31',strtotime('-1 year')));
            break;
        case 'nowyear'://今年
            $timeamp['start'] = strtotime(date('Y-01-01'));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('+1 day')));
            break;
        case 'quarter'://季度
            $quarter = empty($param) ? ceil((date('n'))/3) : $param;//获取当前季度
            $timeamp['start'] = mktime(0, 0, 0,$quarter*3-2,1,date('Y'));
            $timeamp['end'] = mktime(0, 0, 0,$quarter*3+1,1,date('Y'));
//            $timeamp['end'] = mktime(23,59,59,$quarter*3,date('t',mktime(0, 0 , 0,$quarter*3,1,date("Y"))),date('Y'));
            break;
        default:
            $timeamp['start'] = strtotime(date('Y-m-d'));
            $timeamp['end'] = strtotime(date('Y-m-d',strtotime('+1 day')));
            break;
    }
    return $timeamp;
}