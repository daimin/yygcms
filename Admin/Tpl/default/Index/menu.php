
<html>
<head>
<title>menu</title>
<!-- 设置资源的的初始化路径 -->
<link rel="stylesheet" href="__PUBLIC__/admin/css/base.css" type="text/css" />
<link rel="stylesheet" href="__PUBLIC__/admin/css/menu.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="__PUBLIC__/admin/js/frame/menu.js"></script>
<script type="text/javascript">
function saySorry(){
	alert("暂未实现，敬请期待！");
	return false;
}
</script>
<style type="text/css">
.menu-item{
    display: none;
}
</style>
<base target="main" />
</head>
<body target="main">
<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
  <tr>
    <td style='padding-left:3px;padding-top:8px' valign="top">
	<!-- Item 1 Strat -->
   <dl class='bitem'>
        <dt onClick='showHide("items1_1")'><b>首页内容管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/index/")?>'  target='main'>首页</a></div>
              </div>
            </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/dnews/")?>' target='main'>新闻动态</a></div>
              </div>
               </li>
              <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/dcast/")?>' target='main'>案例动态</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("CuXiaoSignup/")?>' target='main'>促销在线报名</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
      <dl class='bitem'>
        <dt onClick='showHide("items1_2")'><b>360产品</b></dt>
        <dd style='display:block' class='sitem' id='items1_2'>
          <ul class='sitemu'>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/360taocan/")?>' target='main'>360套餐</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/360cailiao/")?>' target='main'>360材料</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
       <dl class='bitem'>
        <dt onClick='showHide("items1_3")'><b>看设计</b></dt>
        <dd style='display:block' class='sitem' id='items1_3'>
          <ul class='sitemu'>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("SheJiTeam/")?>' target='main'>设计团队</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("SheJiTeam/yudinglist/")?>' target='main'> 预订列表</a></div>
              </div>
               </li>
               
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("DesignStyle/")?>' target='main'>设计风格</a></div>
              </div>
               </li>
              
          </ul>
        </dd>
      </dl>
      <dl class='bitem'>
        <dt onClick='showHide("items1_4")'><b>家装追踪</b></dt>
        <dd style='display:block' class='sitem' id='items1_4'>
          <ul class='sitemu'>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("DecoTrace/")?>' target='main'>家装追踪管理</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
      <dl class='bitem'>
        <dt onClick='showHide("items1_5")'><b>看服务</b></dt>
        <dd style='display:block' class='sitem' id='items1_5'>
          <ul class='sitemu'>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editOneSite/type/onesite/")?>' target='main'>家装一站</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
          <dl class='bitem'>
        <dt onClick='showHide("items1_6")'><b>看我们</b></dt>
        <dd style='display:block' class='sitem' id='items1_6'>
          <ul class='sitemu'>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editLookUs/type/aboutus/")?>' target='main'>关于我们</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editLookUs/type/contactus/")?>' target='main'>联系我们</a></div>
              </div>
               </li>
                <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editLookUs/type/rongyu/")?>' target='main'>企业荣誉</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editLookUs/type/zhinan/")?>' target='main'>装修指南</a></div>
              </div>
               </li>
                <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editLookUs/type/zhaopin/")?>' target='main'>招贤纳士</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/dnews/")?>' target='main'>企业新闻</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("YuDing/index/")?>' target='main'>在线预订</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("MsgBoard/index/")?>' target='main'>留言板</a></div>
              </div>
               </li>
              <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/ketang/")?>' target='main'>家装课堂</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
      <dl class='bitem'>
        <dt onClick='showHide("items1_7")'><b>看工程</b></dt>
        <dd style='display:block' class='sitem' id='items1_7'>
          <ul class='sitemu'>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/Gongchengbaozhang/")?>' target='main'>工程保障</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/index/type/Cailiaobaozhang/")?>' target='main'>材料保障</a></div>
              </div>
               </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("Content/editProject/type/huanbaobaozhang/")?>' target='main'>环保保障</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
      <?php if(is_admin()){?>
    <dl class='bitem'>
        <dt onClick='showHide("items1_22")'><b>用户管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_22'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("AdminMgr/add")?>'  target='main'>新增用户</a></div>
              </div>
            </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("AdminMgr")?>' target='main'>用户列表</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
      <dl class='bitem'>
        <dt onClick='showHide("items1_82")'><b>系统管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_82'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("SysMgr")?>'  target='main'>系统设置</a></div>
              </div>
            </li>
               <li>
              <div class='items'>
                <div class='fllct'><a href='<?php echo site_url("SysMgr/backup")?>' target='main'>数据备份</a></div>
              </div>
               </li>
          </ul>
        </dd>
      </dl>
           <?php }?>
      <!-- Item 1 End -->
      <!-- Item 2 Strat -->

      <!-- Item 2 End -->
	  </td>
  </tr>
</table>
</body>
</html>
