
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
        <dt onClick='showHide("items1_11")'><b>发布管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_11'>
          <ul class='sitemu'>
              <?php
                foreach($categorys as $category) {
                    ?>
                    <li>
                        <div class='items'>
                            <div class='fllct'><a href='<?php echo site_url("content/category/code/".$category['pagecode']) ?>' target='main'><?php echo $category['name'] ?></a></div>
                        </div>
                    </li>
                    <?php
                }
              ?>
          </ul>
        </dd>
      </dl>
        <dl class='bitem'>
            <dt onClick='showHide("items1_12")'><b>内容管理</b></dt>
            <dd style='display:block' class='sitem' id='items1_12'>
                <ul class='sitemu'>
                    <li>
                        <div class='items'>
                            <div class='fllct'><a href='<?php echo site_url("category/mgr/")?>'  target='main'>设置分类</a></div>
                        </div>
                    </li>
                    <li>
                        <div class='items'>
                            <div class='fllct'><a href='<?php echo site_url("comment/mgr/")?>'  target='main'>评论管理</a></div>
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
