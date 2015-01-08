<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><title>
    客户新增
</title><link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=20130306" />
    <script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> 
    <script src="../js/birthDate.js?a=123" type="text/javascript"></script> 
    <script src="../js/common.js?a=2014081611" type="text/javascript"></script> 
     <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
 
</head>

<style type="text/css"> 
 td,div
 {
   font-size:12px;
   
 }
        
.tabs {
font-family:Verdana,Arial,sans-serif;
font-size:12px;
line-height:14px;
position: relative;
padding: 1px; zoom: 1; 
}
 
.tabs ul {
background-color: #fff;
color:#222222;
font-weight:bold;
display:block;
border-bottom:1px solid #AAAAAA;
height:28px; 
padding:0; margin:0; 
padding-left:200px;}
 
.tabs ul li 
{-moz-border-radius-topleft:4px;
-moz-border-radius-topright:4px;border-bottom:0 none !important;float:left;
list-style:none;margin:0 0.2em 1px 0;padding:0;position:relative;top:1px;white-space:nowrap;color:#555555;font-weight:blod;}
.tabs ul li.tabs_active {margin-bottom:0;padding-bottom:1px;background-color:#fff;  border:1px solid #aaa;color:#333;}
.tabs ul li.tabs_hover{margin-bottom:0;padding-bottom:1px;background-color:#fff;border:1px solid #999;}
.tabs ul li a {float:left;padding:0.5em 1em;text-decoration:none;cursor:pointer;color:#777;}
.tabs ul li.tabs_active a {color:#333;}
.tabs ul li.tabs_active a {color:#555555;}
 
 
input
{
    border:none;
    width:125px;
    }
td
{
    height:30px;
    border:1px solid #9a9a9a;
    }
.requireSpan
{
    color:Blue;
    }
</style>

 
<body>
    <form name="form1" method="post" action="customNewAdd.aspx?custId=80e1c393-1e7e-4aed-a87f-298427632abf&amp;d=Tue+Jan+06+2015+08%3a14%3a39+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AA8E297A" />
</div>


    <div style="width:900px;">
      <div id="tabs" class="tabs" style="width:900px;">
        <ul>        
            <li id="a" ><a href="#tabs-1" onclick="show(1)">车主信息</a></li>       
            <li id="b"><a href="#tabs-2" onclick="show(2)">联系人信息</a></li> 
            <li id="c"><a href="#tabs-3" onclick="show(3)">车辆信息</a></li> 
        </ul>
      </div>
      
      <!--车主信息 start-->
      <div id="aDiv" style="margin:2 0 0 5;display:none;" >
        <br />
        <span style="font-weight:bold;font-size:12px;color:Red;">请先填写证件类型及证件号码</span>
        <table border="0" cellpadding="0" cellspacing="0" width="900px"  style="border-collapse:collapse;border:1px solid #9a9a9a" >
         <tr>
         <td onclick="lianXiRenToCheZhu()"><span class="requireSpan">*</span>客户类型：</td><td style="width:125px;">
         <input name="txtCustId" type="text" value="80e1c393-1e7e-4aed-a87f-298427632abf" id="txtCustId" />
         <select name="ddlCustSort" id="ddlCustSort" style="border:none;width:100%;background-color: Transparent;">
    <option selected="selected" value="普通客户">普通客户</option>
    <option value="普通客户">普通客户</option>
    <option value="内部员工">内部员工</option>
    <option value="定点单位">定点单位</option>
    <option value="延保客户">延保客户</option>

</select></td>
         <td><span class="requireSpan">*</span>车主名：</td><td><input name="txtCheZhuName" type="text" value="唐洋" maxlength="100" id="txtCheZhuName" /></td>
         <td>
         <select name="ddlCheZhuTelSort" id="ddlCheZhuTelSort" style="border:none;width:100%;">
    <option value="车主电话">车主电话</option>
    <option selected="selected" value="车主手机">车主手机</option>

</select>
         </td><td>
         <input name="txtCheZhuTel" type="text" value="13265821118" maxlength="12" id="txtCheZhuTel" />
         </td>
         <td>内线:</td>
         <td><input name="txtCheZhuTelNeiXian" type="text" maxlength="5" id="txtCheZhuTelNeiXian" /> </td>
        </tr>

         <tr>
             <td></td><td></td>
             <td><span class="requireSpan"></span>住宅电话：</td><td><input name="txtCheZhuZhuZhaiTel" type="text" maxlength="12" id="txtCheZhuZhuZhaiTel" /></td>
             <td><span class="requireSpan"></span>传真：    </td><td><input name="txtCheZhuChuanZhen" type="text" maxlength="12" id="txtCheZhuChuanZhen" /></td>
             <td><span class="requireSpan">*</span>车主手机：</td><td><input name="txtCheZhuMob" type="text" value="13265821118" maxlength="12" id="txtCheZhuMob" /></td>
         </tr>

         <tr>
         <td><span class="requireSpan"></span>企业类别:</td>
         <td>
         <select name="ddlCheZhuQiYeSort" id="ddlCheZhuQiYeSort" style="border:none;width:100%;">
    <option selected="selected" value=""></option>

</select>
         </td>
         <td>称谓：</td>
         <td><select name="ddlCheZhuChengWei" id="ddlCheZhuChengWei" style="border:none;width:100%;">
    <option selected="selected" value=""></option>
    <option value="MR">先生</option>
    <option value="MRS">女士</option>
    <option value="MS">小姐</option>

</select> </td>
         <td>性别：
         <select name="ddlSex" id="ddlSex" style="border:none;width:40px;">
    <option value=""></option>
    <option value="男">男</option>
    <option value="女">女</option>

</select>
         </td>
         <td>
         婚姻状况：
          <select name="ddlCheZhuHunYinZhuangKuang" id="ddlCheZhuHunYinZhuangKuang" style="border:none;width:50px;">
    <option selected="selected" value=""></option>
    <option value="已婚">已婚</option>
    <option value="未婚">未婚</option>
    <option value="离异">离异</option>
    <option value="丧偶">丧偶</option>

</select>
         </td>
         <td>子女数目：</td>
         <td>
         <input name="txtCheZhuZiNvQty" type="text" value="0" id="txtCheZhuZiNvQty" class="easyui-numberbox" data-options="min:0,max:500,precision:0" />
         </td>
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>证件类型：</td>
         <td><select name="ddlCheZhuCardSort" id="ddlCheZhuCardSort" style="border:none;width:100%;">
    <option value="港澳身份证">港澳身份证</option>
    <option value="护照">护照</option>
    <option selected="selected" value="身份证">身份证</option>
    <option value="身份证">身份证</option>
    <option value="组织机构代码">组织机构代码</option>

</select></td>
         <td><span class="requireSpan">*</span>证件号码：</td><td colspan="3">
         <input name="txtCheZhuCardNo" type="text" value="23333333333" maxlength="20" id="txtCheZhuCardNo" onblur="checkCardNo();" style="width:400px;" />
         <a href="#"  onclick="showCustInfo();">?</a>
         </td>
         <td><span class="requireSpan">*</span>生日:</td>
         <td>
         <input name="txtCheZhuShengRi" type="text" id="txtCheZhuShengRi" class="inputCss easyui-datebox" /></td>
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>所属区域：</td>
         <td colspan="7">

         <div id="cheZhu">
    
            <select name="ddlCheZhuP" onchange="javascript:setTimeout('__doPostBack(\'ddlCheZhuP\',\'\')', 0)" id="ddlCheZhuP" style="border:none;width:100px">
        <option value="">请选择</option>
        <option selected="selected" value="广东省">广东省</option>
        <option value="北京市">北京市</option>
        <option value="天津市">天津市</option>
        <option value="河北省">河北省</option>
        <option value="山西省">山西省</option>
        <option value="内蒙古区">内蒙古区</option>
        <option value="辽宁省">辽宁省</option>
        <option value="吉林省">吉林省</option>
        <option value="黑龙江省">黑龙江省</option>
        <option value="上海市">上海市</option>
        <option value="江苏省">江苏省</option>
        <option value="浙江省">浙江省</option>
        <option value="安徽省">安徽省</option>
        <option value="福建省">福建省</option>
        <option value="江西省">江西省</option>
        <option value="山东省">山东省</option>
        <option value="河南省">河南省</option>
        <option value="湖北省">湖北省</option>
        <option value="湖南省">湖南省</option>
        <option value="广西省">广西省</option>
        <option value="海南省">海南省</option>
        <option value="重庆市">重庆市</option>
        <option value="四川省">四川省</option>
        <option value="贵州省">贵州省</option>
        <option value="云南省">云南省</option>
        <option value="西藏区">西藏区</option>
        <option value="陕西省">陕西省</option>
        <option value="甘肃省">甘肃省</option>
        <option value="青海省">青海省</option>
        <option value="宁夏区">宁夏区</option>
        <option value="新疆区">新疆区</option>
        <option value="台湾省">台湾省</option>
        <option value="香港特区">香港特区</option>
        <option value="澳门特区">澳门特区</option>

    </select>省(直辖市)
            <select name="ddlCheZhuC" onchange="javascript:setTimeout('__doPostBack(\'ddlCheZhuC\',\'\')', 0)" id="ddlCheZhuC" style="border:none;width:100px">
        <option value="">请选择</option>
        <option selected="selected" value="深圳市">深圳市</option>
        <option value="广州市">广州市</option>
        <option value="韶关市">韶关市</option>
        <option value="珠海市">珠海市</option>
        <option value="汕头市">汕头市</option>
        <option value="佛山市">佛山市</option>
        <option value="江门市">江门市</option>
        <option value="湛江市">湛江市</option>
        <option value="茂名市">茂名市</option>
        <option value="肇庆市">肇庆市</option>
        <option value="惠州市">惠州市</option>
        <option value="梅州市">梅州市</option>
        <option value="汕尾市">汕尾市</option>
        <option value="河源市">河源市</option>
        <option value="阳江市">阳江市</option>
        <option value="清远市">清远市</option>
        <option value="东莞市">东莞市</option>
        <option value="中山市">中山市</option>
        <option value="潮州市">潮州市</option>
        <option value="揭阳市">揭阳市</option>
        <option value="云浮市">云浮市</option>

    </select>市(地区)
            <select name="ddlCheZhuA" onchange="javascript:setTimeout('__doPostBack(\'ddlCheZhuA\',\'\')', 0)" id="ddlCheZhuA" style="border:none;width:100px">
        <option value="">请选择</option>
        <option value="南山区">南山区</option>
        <option value="罗湖区">罗湖区</option>
        <option value="福田区">福田区</option>
        <option selected="selected" value="宝安区">宝安区</option>
        <option value="龙岗区">龙岗区</option>
        <option value="盐田区">盐田区</option>
        <option value="龙华新区">龙华新区</option>
        <option value="光明新区">光明新区</option>
        <option value="坪山新区">坪山新区</option>

    </select>区(县)
           
</div>

           <!--隐藏域 start-->
           <input name="txtCheZhuP" type="text" value="广东省" id="txtCheZhuP" style="display:none;" />
           <input name="txtCheZhuC" type="text" value="深圳市" id="txtCheZhuC" style="display:none;" />
           <input name="txtCheZhuA" type="text" value="宝安区" id="txtCheZhuA" style="display:none;" />
           <!--隐藏域 end-->
         </td>
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>车主地址：</td>
         <td colspan="7">
          <input name="txtCheZhuAdd" type="text" value="广东省深圳南山区海印长城1期4栋5C" id="txtCheZhuAdd" style="width:700px;" />
         </td>
         </tr>

         <!--20130827新加入客户识别信息-->
         <tr>
         <td>所属行业：</td>
         <td><select name="ddlCheZhuSuoShuHangYe" id="ddlCheZhuSuoShuHangYe" style="border:none;width:125px;">
    <option selected="selected" value=""></option>

</select> </td>
         <td>关系类型：</td>
         <td><select name="ddlCheZhuGuanXiSort" id="ddlCheZhuGuanXiSort" style="border:none;width:125px;">
    <option value="紧密">紧密</option>
    <option value="良好">良好</option>
    <option value="普通">普通</option>
    <option value="紧张">紧张</option>
    <option selected="selected" value=""></option>

</select> </td>
         <td>家庭类型：</td>
         <td><select name="ddlCheZhuJiaTingSort" id="ddlCheZhuJiaTingSort" style="border:none;width:125px;">
    <option value="未婚">未婚</option>
    <option value="已婚有小孩">已婚有小孩</option>
    <option value="已婚无小孩">已婚无小孩</option>
    <option value="其他">其他</option>
    <option selected="selected" value=""></option>

</select> </td>
         <td>职业类型：</td>
         <td><select name="ddlCheZhuZhiYeSort" id="ddlCheZhuZhiYeSort" style="border:none;width:125px;">
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="其他">其他</option>
    <option value="其他">其他</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="其他">其他</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="其他">其他</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option selected="selected" value=""></option>

</select> </td>         
         </tr>

         <tr>
         <td>客户来源：</td>
         <td><input name="txtCheZhuLaiYuan" type="text" maxlength="10" id="txtCheZhuLaiYuan" /></td>
         <td>年龄区间：</td>
         <td><select name="ddlCheZhuNianLing" id="ddlCheZhuNianLing" style="border:none;width:125px;">
    <option selected="selected" value="不清楚">不清楚</option>
    <option value="20岁以下">20岁以下</option>
    <option value="21~25岁">21~25岁</option>
    <option value="26~30岁">26~30岁</option>
    <option value="31~35岁">31~35岁</option>
    <option value="36~40岁">36~40岁</option>
    <option value="41~45岁">41~45岁</option>
    <option value="46~50岁">46~50岁</option>
    <option value="51~55岁">51~55岁</option>
    <option value="56~60岁">56~60岁</option>
    <option value="60岁以上">60岁以上</option>

</select> </td>
         <td>收入区间：</td>
         <td><select name="ddlCheZhuShouRu" id="ddlCheZhuShouRu" style="border:none;width:125px;">
    <option selected="selected" value="不清楚">不清楚</option>
    <option value="3000以下">3000以下</option>
    <option value="3000~5999元">3000~5999元</option>
    <option value="6000~9999元">6000~9999元</option>
    <option value="10000~14999元">10000~14999元</option>
    <option value="15000~19999元">15000~19999元</option>
    <option value="20000~30000元">20000~30000元</option>
    <option value="30000元以上">30000元以上</option>

</select> </td>
         <td>爱好：</td>
         <td><input name="txtCheZhuAiHao" type="text" maxlength="20" id="txtCheZhuAiHao" /> </td>         
         </tr>

         <tr>
         <td>学历：</td>
         <td><select name="ddlCheZhuXueLi" id="ddlCheZhuXueLi" style="border:none;width:125px;">
    <option selected="selected" value="不清楚">不清楚</option>
    <option value="小学">小学</option>
    <option value="初中">初中</option>
    <option value="高中/中专/技校">高中/中专/技校</option>
    <option value="大专">大专</option>
    <option value="本科">本科</option>
    <option value="硕士">硕士</option>
    <option value="博士">博士</option>

</select> </td>
         <td>E-Mail：</td>
         <td><input name="txtCheZhuEMail" type="text" maxlength="50" id="txtCheZhuEMail" /> </td>
         <td>购车次数：</td>
         <td><input name="txtCheZheGouCheQty" type="text" value="1" maxlength="3" id="txtCheZheGouCheQty" class="easyui-numberbox" data-options="min:0,max:30,precision:0" /> </td>
         <td></td>
         <td></td>         
         </tr>
         <tr>
         <td>工作单位：</td>
         <td colspan="7">
         <input name="txtCheZhuGongZuoDanWei" type="text" maxlength="60" id="txtCheZhuGongZuoDanWei" style="width:98%;" />
         </td>
         </tr>

          
        </table>
      </div>

      <!--车主信息 end-->

      <!--联系人信息 start-->
      <div id="bDiv" style="margin:2 0 0 5;display:none;" >
        <br />
        <table border="0" cellpadding="0" cellspacing="0" width="900px"  style="border-collapse:collapse;border:1px solid #9a9a9a" >
         <tr>
         <td onclick="cheZhuToLianXiRen()"><span class="requireSpan">*</span>联系人姓名：</td><td><input name="txtLianXiRenName" type="text" value="唐洋" maxlength="20" id="txtLianXiRenName" /></td>
         <td><span class="requireSpan">*</span>性别：</td><td><select name="ddlLianXiRenSex" id="ddlLianXiRenSex" style="border:none;width:125px">
    <option selected="selected" value="男">男</option>
    <option value="男">男</option>
    <option value="女">女</option>

</select></td>
         <td><span class="requireSpan">*</span>联系人电话：</td><td><input name="txtLianXiRenTel" type="text" value="13265821118" maxlength="14" id="txtLianXiRenTel" /></td>
         <td><span class="requireSpan">*</span>联系人手机：</td><td><input name="txtLianXiRenMob" type="text" value="13265821118" maxlength="14" id="txtLianXiRenMob" /></td>
         </tr>

         <tr>
         <td></td><td></td>
         <td>称谓：</td>
         <td><select name="ddlLianXiRenChengWei" id="ddlLianXiRenChengWei" style="border:none;width:100%;">
    <option selected="selected" value="MR">先生</option>
    <option value="MRS">女士</option>
    <option value="MS">小姐</option>

</select> </td>
         <td>身份：</td>
         <td><select name="ddlLianXiRenShenFen" id="ddlLianXiRenShenFen" style="border:none;width:100%;">
    <option selected="selected" value=""></option>

</select> </td>
         <td>职位：</td>
         <td>
         <select name="ddlLianXiRenZhiWei" id="ddlLianXiRenZhiWei" style="border:none;width:100%;">

    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="其他">其他</option>
    <option value="其他">其他</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="其他">其他</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="其他">其他</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option value="老师">老师</option>
    <option value="公务员">公务员</option>
    <option value="个体">个体</option>
    <option value="公司管理人员">公司管理人员</option>
    <option value="医生">医生</option>
    <option selected="selected" value=""></option>

</select> </td>
         </tr>

         <tr>

         <td><span class="requireSpan">*</span>证件类型：</td><td><select name="ddlLianXiCardSort" id="ddlLianXiCardSort" style="border:none;width:100%;">
    <option selected="selected" value="身份证">身份证</option>
    <option value="港澳身份证">港澳身份证</option>
    <option value="护照">护照</option>
    <option value="身份证">身份证</option>
    <option value="组织机构代码">组织机构代码</option>

</select></td>
         <td><span class="requireSpan">*</span>证件号码：</td><td colspan="3">
         <input name="txtLianXiRenCardNo" type="text" value="5464454" maxlength="20" id="txtLianXiRenCardNo" onblur="cardNoToDate('txtLianXiRenCardNo','txtLianXiRenBirthday')" style="width:200px;" /></td>
         <td><span class="requireSpan">*</span>联系人生日：</td>
         <td><input name="txtLianXiRenBirthday" type="text" id="txtLianXiRenBirthday" class="inputCss easyui-datebox" /> </td>
        
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>所属区域：</td>
         <td colspan="7"> 
         <div id="lianXiRen">
    
          <select name="ddlLianXiRenP" onchange="javascript:setTimeout('__doPostBack(\'ddlLianXiRenP\',\'\')', 0)" id="ddlLianXiRenP" style="border:none;width:100px">
        <option value="">请选择</option>
        <option selected="selected" value="广东省">广东省</option>
        <option value="北京市">北京市</option>
        <option value="天津市">天津市</option>
        <option value="河北省">河北省</option>
        <option value="山西省">山西省</option>
        <option value="内蒙古区">内蒙古区</option>
        <option value="辽宁省">辽宁省</option>
        <option value="吉林省">吉林省</option>
        <option value="黑龙江省">黑龙江省</option>
        <option value="上海市">上海市</option>
        <option value="江苏省">江苏省</option>
        <option value="浙江省">浙江省</option>
        <option value="安徽省">安徽省</option>
        <option value="福建省">福建省</option>
        <option value="江西省">江西省</option>
        <option value="山东省">山东省</option>
        <option value="河南省">河南省</option>
        <option value="湖北省">湖北省</option>
        <option value="湖南省">湖南省</option>
        <option value="广西省">广西省</option>
        <option value="海南省">海南省</option>
        <option value="重庆市">重庆市</option>
        <option value="四川省">四川省</option>
        <option value="贵州省">贵州省</option>
        <option value="云南省">云南省</option>
        <option value="西藏区">西藏区</option>
        <option value="陕西省">陕西省</option>
        <option value="甘肃省">甘肃省</option>
        <option value="青海省">青海省</option>
        <option value="宁夏区">宁夏区</option>
        <option value="新疆区">新疆区</option>
        <option value="台湾省">台湾省</option>
        <option value="香港特区">香港特区</option>
        <option value="澳门特区">澳门特区</option>

    </select>省(直辖市)
          <select name="ddlLianXiRenC" onchange="javascript:setTimeout('__doPostBack(\'ddlLianXiRenC\',\'\')', 0)" id="ddlLianXiRenC" style="border:none;width:100px">
        <option value="">请选择</option>
        <option selected="selected" value="深圳市">深圳市</option>
        <option value="广州市">广州市</option>
        <option value="韶关市">韶关市</option>
        <option value="珠海市">珠海市</option>
        <option value="汕头市">汕头市</option>
        <option value="佛山市">佛山市</option>
        <option value="江门市">江门市</option>
        <option value="湛江市">湛江市</option>
        <option value="茂名市">茂名市</option>
        <option value="肇庆市">肇庆市</option>
        <option value="惠州市">惠州市</option>
        <option value="梅州市">梅州市</option>
        <option value="汕尾市">汕尾市</option>
        <option value="河源市">河源市</option>
        <option value="阳江市">阳江市</option>
        <option value="清远市">清远市</option>
        <option value="东莞市">东莞市</option>
        <option value="中山市">中山市</option>
        <option value="潮州市">潮州市</option>
        <option value="揭阳市">揭阳市</option>
        <option value="云浮市">云浮市</option>

    </select>市(地区)
          <select name="ddlLianXiRenA" id="ddlLianXiRenA" style="border:none;width:100px">
        <option value="">请选择</option>
        <option value="南山区">南山区</option>
        <option value="罗湖区">罗湖区</option>
        <option value="福田区">福田区</option>
        <option selected="selected" value="宝安区">宝安区</option>
        <option value="龙岗区">龙岗区</option>
        <option value="盐田区">盐田区</option>
        <option value="龙华新区">龙华新区</option>
        <option value="光明新区">光明新区</option>
        <option value="坪山新区">坪山新区</option>

    </select>区(县)
          
</div>

              <input name="txtLianXiRenP" type="text" value="广东省" id="txtLianXiRenP" style="display:none;" />
              <input name="txtLianXiRenC" type="text" value="深圳市" id="txtLianXiRenC" style="display:none;" />
              <input name="txtLianXiRenA" type="text" value="宝安区" id="txtLianXiRenA" style="display:none;" />
         </td>
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>车主地址：</td>
         <td colspan="7">
          <input name="txtLianXiRenAdd" type="text" value="广东省深圳南山区海印长城1期4栋5C" maxlength="200" id="txtLianXiRenAdd" style="width:700px;" />
         </td>
         </tr>
         <tr>
         <td><span class="requireSpan"></span>驾照类型：</td><td><select name="ddlLianXiRenJiaZhaoSort" id="ddlLianXiRenJiaZhaoSort" style="border:none;width:125px">
    <option value="A">A(1年)</option>
    <option value="B">B(1年)</option>
    <option selected="selected" value="C">C(6年)</option>

</select></td>
         <td><span class="requireSpan"></span>驾照日期：</td><td><input name="txtLianXiRenJiaZhaoDate" type="text" id="txtLianXiRenJiaZhaoDate" class="inputCss easyui-datebox" /> </td>
         <td><span class="requireSpan"></span>初领驾照日期：</td><td><input name="txtLianXiRenFirstJiaZhaoDate" type="text" id="txtLianXiRenFirstJiaZhaoDate" class="inputCss easyui-datebox" /> </td>
         <td><span class="requireSpan"></span>驾照所属地区：</td><td><input name="txtLianXiRenJiaZhaoArea" type="text" id="txtLianXiRenJiaZhaoArea" /> </td>
         </tr>

         <tr>
        
         <td>联系人特征：</td><td><input name="txtLianXiRenTeZheng" type="text" id="txtLianXiRenTeZheng" /> </td>
         <td>E-Mail：</td><td><input name="txtLianXiRenEMail" type="text" id="txtLianXiRenEMail" /> </td>
         <td></td><td></td>
         <td></td><td></td>
         </tr>
         <tr>
         <td>工作单位：</td>
         <td colspan="7">
         <input name="txtLianXiRenGongZuoDanWei" type="text" maxlength="60" id="txtLianXiRenGongZuoDanWei" style="width:98%;" />
         </td>
         </tr>
         <tr>
         <td>接待提醒：</td>
         <td colspan="7">
         <input name="txtCheLiangJieDaiTiXing" type="text" maxlength="100" id="txtCheLiangJieDaiTiXing" style="width:98%;font-size:12px;font-weight:bold;color:Blue;" />
         </td>
         </tr>


         </table>
         </div>
      <!--联系人信息 end-->
 

     <!--车辆信息 start-->
     <div id="cDiv" style="margin:2 0 0 5;display:none;" >
       <br />
        <span style="font-weight:bold;font-size:12px;color:Red;">一辆车只能属于一个客户</span> 
        <a onclick="return changeVehicleId();" id="lnkRebindVehicle" class="easyui-linkbutton" href="javascript:__doPostBack('lnkRebindVehicle','')">绑定车辆</a>
        <a onclick="return addVehicleId();" id="lnkAddVehicle" class="easyui-linkbutton" href="javascript:__doPostBack('lnkAddVehicle','')">新增车辆</a>
         

        <table border="0" cellpadding="0" cellspacing="0" width="700px"  style="border-collapse:collapse;border:1px solid #9a9a9a;" >
        
      
         <tr>
         <td style="font-weight:bold;color:Blue;width:90px;">[1]车牌号码：</td>
         <td style="width:80px;">粤B9E6V9</td>
         <td style="width:65px;">车架号码：</td><td  style="width:125px;">JTHKR5BH1E2214889</td>
         <td style="width:65px;">发动机号:</td><td  style="width:100px;">23333</td>
         <td style="width:65px;">变速箱号:</td><td  style="width:100px;">322222</td>
         </tr>
         <tr>
         <td>制造厂商：</td><td>雷克萨斯</td>
         <td>车系：</td><td>CT200h</td>
         <td>车型代码：</td><td>32222</td>
         <td>车身颜色：</td><td>珍珠白</td>
         </tr>
         <tr>
         <td>购车日期：</td><td>1900-01-01</td>
         <td>年审日期：</td><td></td>
         <td>自店销售：</td><td style="font-size:12px;font-weight:bold;color:Blue;"></td>
         <td></td><td></td>
         </tr>
         <tr>
         <td>客户来源：</td><td  style="font-size:12px;font-weight:bold;color:Blue;"></td>
         <td>销售员：</td><td></td>
         <td>销售单号：</td><td></td>
         <td></td><td>           
          <a onclick=mdfCheLiangInfo('b3a58fd0-467d-41b1-8b60-e682224c4519')  class="easyui-linkbutton" >修改车辆</a>
          </td>
         </tr>
        
       </table>
       
     </div>
     <!--车辆信息 end-->      

      <div style="height:5px;"></div>

      <!--按钮区域 start-->
      <div align="center" id="btnBottomDiv" >
         
         <a onclick="return saveCheck(1);" id="lnkMdf" class="easyui-linkbutton" href="javascript:__doPostBack('lnkMdf','')">修改</a>
         <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
         <a onclick="return sendVip();" id="lnkSendVip" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSendVip','')">传送客户资料</a>
      </div>
      <!--按钮区域 end-->
    </div>
    

</form>
     <script language="javascript" type="text/javascript" >

         
         //各类验证 satrt
         function changeColor(id,sort)
         {
           if(sort =="red")
           {
            $("#"+id).css("background-color", "red");
           }else
           {
            $("#"+id).css("background-color", "white");
           }
         }


         //证件号码是否重复验证
         var oldCusId ="";
         function checkCardNo() {
             $.get("customNewCheck.aspx?d=" + new Date(), {
                 type: "checkCardNo",
                 cusid: "80e1c393-1e7e-4aed-a87f-298427632abf",
                 cheZhuCardNo: $("#txtCheZhuCardNo").val(),
                 cheZhuCardNoSort: $("#ddlCheZhuCardSort").val()
             }, function (data) {         
                 if (data != "ok") {
                     oldCusId = data.split("|")[1];
                     changeColor("txtCheZhuCardNo","red");
                 } else {
                     oldCusId ="";
                     changeColor("txtCheZhuCardNo","white");
                 }
             });
         
             cardNoToDate('txtCheZhuCardNo','txtCheZhuShengRi');
         }

         //各类验证 end


         function showCustInfo()
          {
             if(oldCusId.length == 36)
             {
               z = window.open('../customManage/customNewAdd.aspx?custId='+oldCusId+'&d=' + new Date(), '新增客户信息2', 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no, status=no')
                z.focus();

             }
          }

         //车辆资料修改
         function mdfCheLiangInfo(vehicleId) {
             location.href = "customNewVehicleAdd.aspx?vehicleId="+vehicleId+"&d="+new Date();
             return false;
         }

         //车辆资料新增
         function addVehicleId() {            
             location.href = "customNewVehicleAdd.aspx?custId=80e1c393-1e7e-4aed-a87f-298427632abf&d=" + new Date();
             return false;
         }

         //车辆车主转换
         function changeVehicleId() {
             location.href = "customVehicleChange.aspx?custId=80e1c393-1e7e-4aed-a87f-298427632abf&d=" + new Date();
             return false;
         }

         //客户资料同联系人资料的相互写入
     

         //传送客户资料至VIP
         function sendVip() {
           
             $.get("DCHVIPInterface.aspx?d=" + new Date(),
             { type: "C", thisGuid: "80e1c393-1e7e-4aed-a87f-298427632abf" }, function (data) {
                alert(data);
             });

             return false;
         }

         var tmp = "a";
         function show(sort) {
             if ($("#" + tmp + "Div").length > 0) { $("#" + tmp + "Div").hide(); }
             if (sort == 1) { $("#" + tmp).removeClass(); $("#a").addClass("tabs_active"); tmp = "a";$("#btnBottomDiv").css("display","block"); }
             if (sort == 2) { $("#" + tmp).removeClass(); $("#b").addClass("tabs_active"); tmp = "b";$("#btnBottomDiv").css("display","block"); }
             if (sort == 3) { $("#" + tmp).removeClass(); $("#c").addClass("tabs_active"); tmp = "c";$("#btnBottomDiv").css("display","none"); } 

             $("#" + tmp + "Div").show();
         }


         //车主资料传送至 --- 联系人资料
         function cheZhuToLianXiRen() {
             if ($("#txtCheZhuName").val() != "") { $("#txtLianXiRenName").val($("#txtCheZhuName").val()); }
             if ($("#ddlSex").val() != "") { $("#ddlLianXiRenSex").val($("#ddlSex").val()); }
             if ($("#txtCheZhuTel").val() != "") { $("#txtLianXiRenTel").val($("#txtCheZhuTel").val()); }
             if ($("#txtCheZhuMob").val() != "") { $("#txtLianXiRenMob").val($("#txtCheZhuMob").val()); }
             if ($("#ddlCheZhuCardSort").val() != "") { $("#ddlLianXiCardSort").val($("#ddlCheZhuCardSort").val()); }
             if ($("#txtCheZhuCardNo").val() != "") { $("#txtLianXiRenCardNo").val($("#txtCheZhuCardNo").val()); }
             if ($("#ddlCheZhuP").val() != "") { $("#ddlLianXiRenP").val($("#ddlCheZhuP").val()); }

             //下拉框 复制

             selectCopy("ddlCheZhuC", "ddlLianXiRenC");
             selectCopy("ddlCheZhuA", "ddlLianXiRenA");

             if ($("#ddlCheZhuC").val() != "") { $("#ddlLianXiRenC").val($("#ddlCheZhuC").val()); }


             if ($("#ddlCheZhuA").val() != "") { $("#ddlLianXiRenA").val($("#ddlCheZhuA").val()); }


             if ($("#txtCheZhuAdd").val() != "") { $("#txtLianXiRenAdd").val($("#txtCheZhuAdd").val()); }

         }





         //联系人资料传送至 ---车主资料
         function lianXiRenToCheZhu() {
             selectCopy("ddlLianXiRenC", "ddlCheZhuC");
             selectCopy("ddlLianXiRenA", "ddlCheZhuA");

             if ($("#txtLianXiRenName").val() != "") { $("#txtCheZhuName").val($("#txtLianXiRenName").val()); }
             if ($("#ddlLianXiRenSex").val() != "") { $("#ddlSex").val($("#ddlLianXiRenSex").val()); }
             if ($("#txtLianXiRenTel").val() != "") { $("#txtCheZhuTel").val($("#txtLianXiRenTel").val()); }
             if ($("#txtLianXiRenMob").val() != "") { $("#txtCheZhuMob").val($("#txtLianXiRenMob").val()); }
             if ($("#ddlLianXiCardSort").val() != "") { $("#ddlCheZhuCardSort").val($("#ddlLianXiCardSort").val()); }
             if ($("#txtLianXiRenCardNo").val() != "") { $("#txtCheZhuCardNo").val($("#txtLianXiRenCardNo").val()); }
             if ($("#ddlLianXiRenP").val() != "") { $("#ddlCheZhuP").val($("#ddlLianXiRenP").val()); }
             if ($("#ddlLianXiRenC").val() != "") { $("#ddlCheZhuC").val($("#ddlLianXiRenC").val()); }
             if ($("#ddlLianXiRenA").val() != "") { $("#ddlCheZhuA").val($("#ddlLianXiRenA").val()); }
             if ($("#txtLianXiRenAdd").val() != "") { $("#txtCheZhuAdd").val($("#txtLianXiRenAdd").val()); }
         }



         //select 复制 ---源Id 目标值Id
         function selectCopy(sourceId, objId) {

             $("#" + objId + " option").remove();
             $("#" + sourceId + " option").each(function () {
                 $("#" + objId).append("<option value='" + $(this).val() + "'>" + $(this).text() + "</option>");
             });

         }


         $(function () {
             show(1);
             $("#txtCustId").css("display", "none");            
         });

         var btnFlag = "0";
         function saveCheck(sort) {
          

                 if ($("#ddlCheLiangZhiZaoShang").val() != "") {
                     $("#txtCheLiangZhiZaoShang").val($("#ddlCheLiangZhiZaoShang").val());
                 }
                 if ($("#ddlCheLiangCheXi").val() != "") {
                     $("#txtCheLiangCheXi").val($("#ddlCheLiangCheXi").val());
                 }

                 //车主省 市 区导入
                 if ($("#ddlCheZhuP").val() != "") {
                     $("#txtCheZhuP").val($("#ddlCheZhuP").val());
                 }
                  
                 if ($("#ddlCheZhuC").val() != "") {
                     $("#txtCheZhuC").val($("#ddlCheZhuC").val());
                 }
                 if ($("#ddlCheZhuA").val() != "") {
                     $("#txtCheZhuA").val($("#ddlCheZhuA").val());
                 }

                 if ($("#ddlLianXiRenP").val() != "") {
                     $("#txtLianXiRenP").val($("#ddlLianXiRenP").val());
                 }
                 if ($("#ddlLianXiRenC").val() != "") {
                     $("#txtLianXiRenC").val($("#ddlLianXiRenC").val());
                 }
                 if ($("#ddlLianXiRenA").val() != "") {
                     $("#txtLianXiRenA").val($("#ddlLianXiRenA").val());
                 }

           



             var err = "";
             if (btnFlag == "0") { btnFlag = "1"; } else { return false; }


             //验证必须填项
             if ($.trim($("#txtCheZhuName").val()) == "") { err += "车主信息->车主姓名不能为空！\n"; }
             if ($.trim($("#txtCheZhuTel").val()) == "") { err += "车主信息->车主联系电话不能为空！\n"; }
             if ($.trim($("#txtCheZhuMob").val()) == "") { err += "车主信息->车主手机不能为空！\n"; }
             if ($.trim($("#ddlCheZhuCardSort").val()) == "") { err += "车主信息->证件类型不能为空！\n"; }
             if ($.trim($("#txtCheZhuCardNo").val()) == "") { err += "车主信息->证件号码不能为空！\n"; }
             if ($.trim($("#txtCheZhuP").val()) == "") { err += "车主信息->所属区域省份不能为空！\n"; }
             if ($.trim($("#txtCheZhuC").val()) == "") { err += "车主信息->所属区域市不能为空！\n"; }
             if ($.trim($("#txtCheZhuA").val()) == "") { err += "车主信息->所属区域地区不能为空！\n"; }
             if ($.trim($("#txtCheZhuAdd").val()) == "") { err += "车主信息->联系地址不能为空！\n"; }
             if ($.trim($("#txtLianXiRenName").val()) == "") { err += "联系人信息->联系人姓名不能为空！\n"; }
             if ($.trim($("#ddlLianXiRenSex").val()) == "") { err += "联系人信息->联系人性别不能为空！\n"; }
             if ($.trim($("#txtLianXiRenTel").val()) == "") { err += "联系人信息->联系人电话不能为空！\n"; }
             if ($.trim($("#txtLianXiRenMob").val()) == "") { err += "联系人信息->联系人手机不能为空！\n"; }
             if ($.trim($("#ddlLianXiCardSort").val()) == "") { err += "联系人信息->联系人证件类型不能为空！\n"; }
             if ($.trim($("#txtLianXiRenCardNo").val()) == "") { err += "联系人信息->联系人证件号码不能为空！\n"; }
             //if ($.trim($("#txtLianXiRenBirthday").val()) == "") { err += "联系人信息->联系人生日不能为空！\n"; }
             if ($.trim($("#txtLianXiRenP").val()) == "") { err += "联系人信息->联系人所在省份不能为空！\n"; }
             if ($.trim($("#txtLianXiRenC").val()) == "") { err += "联系人信息->联系人所在市不能为空！\n"; }
             if ($.trim($("#txtLianXiRenA").val()) == "") { err += "联系人信息->联系人所在区不能为空！\n"; }
             if ($.trim($("#txtLianXiRenAdd").val()) == "") { err += "联系人信息->联系人地址不能为空！\n"; }
             //if ($.trim($("#ddlLianXiRenJiaZhaoSort").val()) == "") { err += "联系人信息->联系人证件类型不能为空！\n"; }
             //if ($.trim($("#txtLianXiRenJiaZhaoDate").val()) == "") { err += "联系人信息->联系人证件号码不能为空！\n"; }        
              

             //数据录入格式是否正确验证
             if(err =="")
             {
                if($("#ddlCheZhuTelSort").val()=="车主手机"){ 
                      if(!checkMobile($("#txtCheZhuTel").val())){ err+="车主手机填写错误！";changeColor("txtCheZhuTel","red"); } else{changeColor("txtCheZhuTel","white");}
                }else
               {
                 if(!checkTel($("#txtCheZhuTel").val())){ err+="车主电话填写错误！";changeColor("txtCheZhuTel","red"); } else{changeColor("txtCheZhuTel","white");}
               }



               if(!checkTel($("#txtCheZhuZhuZhaiTel").val())){ err+="车主住宅电话填写错误！";changeColor("txtCheZhuZhuZhaiTel","red"); } else{changeColor("txtCheZhuZhuZhaiTel","white");}
               if(!checkTel($("#txtCheZhuChuanZhen").val())){ err+="车主传真填写错误！";changeColor("txtCheZhuChuanZhen","red"); } else{changeColor("txtCheZhuChuanZhen","white");}
               if(!checkMobile($("#txtCheZhuMob").val())){ err+="车主手机填写错误！";changeColor("txtCheZhuMob","red"); } else{changeColor("txtCheZhuMob","white");}
              
               if(!checkMobile($("#txtLianXiRenMob").val())){ err+="联系人手机填写错误！";changeColor("txtLianXiRenMob","red"); } else{changeColor("txtLianXiRenMob","white");}
               

             }





             if (err != "") { alert(err); btnFlag = "0"; return false; }

             if (sort == "0") {
                 __doPostBack('lnkSave', '');
             } else {
                 __doPostBack('lnkMdf', '');
             }
             return false;
         }


         function winClose() {

             window.opener = null;
             window.close();


         }


         function cardNoToDate(id1, id2) {
             var v1 = $("#" + id1).val();
             var v2 = getBirth(v1);
             try {
                 $("#" + id2).datebox('setValue', v2)
             } catch (e) {
                 $("#" + id2).val(v2);
             }
         }


     </script>
</body>
</html>