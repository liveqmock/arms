
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style>
    .gvCss
    {
        width: 100%;
        border: 1px solid #999;
    }
    .gvCss td, th
    {
        word-break: keep-all;
        white-space: nowrap;
    }
    .searchDiv
    { margin-top:2px;
        }
     .searchDiv input
    {  width:100px;
        }
   .clickCSS{
          background-color:#FBEC88;
       }
      .mouseenterCSS{
       background-color:#EAF2FF;
      }
</style>
<body>
    <form name="form1" method="post" action="SaleCaiWuKuaiJiReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTM0MzA4MzQzMA9kFgICAw9kFgQCBA8QDxYGHg5EYXRhVmFsdWVGaWVsZAUOQ2FyTW9kbGVfQ2hlWGkeDURhdGFUZXh0RmllbGQFDkNhck1vZGxlX0NoZVhpHgtfIURhdGFCb3VuZGdkEBUXAAZDVDIwMGgFRVMyNTAGRVMzMDBoBUVTMzUwBUdTMjUwBkdTMzAwaAVHUzM1MAZHUzQ1MGgFR1g0MDAFSVMyNTAGSVMyNTBDBkxTNDYwTAdMUzYwMGhMBUxYNTcwBU5YMjAwBk5YMjAwdAZOWDMwMGgEUkMgRgVSWDI3MAVSWDM1MAVSWDQ1MAZSWDQ1MGgVFwAGQ1QyMDBoBUVTMjUwBkVTMzAwaAVFUzM1MAVHUzI1MAZHUzMwMGgFR1MzNTAGR1M0NTBoBUdYNDAwBUlTMjUwBklTMjUwQwZMUzQ2MEwHTFM2MDBoTAVMWDU3MAVOWDIwMAZOWDIwMHQGTlgzMDBoBFJDIEYFUlgyNzAFUlgzNTAFUlg0NTAGUlg0NTBoFCsDF2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZGQCDQ8QDxYGHwAFCHVzZXJOYW1lHwEFCHVzZXJOYW1lHwJnZBAVKQ0tLeivt+mAieaLqS0tCem7hOW9puWymgnlkLTmpI3mnpcJ5LiB5oux56WlCeWImOiLj+aFpwbogpbojrkJ57qq5Lyf5piOCeaItOWwj+a2mwnluoTnp4vpnJ4J5LuY5paH5am3CeadqOeip+mcngnmnZzmjK/ovokJ5YiY5YCp6Iq4CeWImOaZk+S4vQnnv4HkuL3ljY4G5ZSQ6JaHCeW8oOWwj+W8ugnlkajoi5HngbUJ56ug5qWa546yCea4qeWNjuWQmwnpvprmmI7oirMG6YKx6bmPCemZiOi/juacnQnmnpfkuK3ljY4J5qGC5qGl5p6XCeS4peWGsOWGsAnkuo7nh5Xpo54J5ZC05bCP54eVBuiClueOrgbnvZflqIEJ6b2Q5pmT5Y2OCemZiOi/nOa3swnpu4Tngb/plK4G5LiB5p2wBuadjuWotAnpgpPlsI/mmI4J5Y2i5reR5oWnBuaYk+aYjgbnjovno4oJ6ZmI5pm66IGqCei1tembheeQtBUpAAnpu4TlvablspoJ5ZC05qSN5p6XCeS4geaLseelpQnliJjoi4/mhacG6IKW6I65Cee6quS8n+aYjgnmiLTlsI/mtpsJ5bqE56eL6ZyeCeS7mOaWh+WptwnmnajnoqfpnJ4J5p2c5oyv6L6JCeWImOWAqeiKuAnliJjmmZPkuL0J57+B5Li95Y2OBuWUkOiWhwnlvKDlsI/lvLoJ5ZGo6IuR54G1CeeroOalmueOsgnmuKnljY7lkJsJ6b6a5piO6IqzBumCsem5jwnpmYjov47mnJ0J5p6X5Lit5Y2OCeahguahpeaelwnkuKXlhrDlhrAJ5LqO54eV6aOeCeWQtOWwj+eHlQbogpbnjq4G572X5aiBCem9kOaZk+WNjgnpmYjov5zmt7MJ6buE54G/6ZSuBuS4geadsAbmnY7lqLQJ6YKT5bCP5piOCeWNoua3keaFpwbmmJPmmI4G546L56OKCemZiOaZuuiBqgnotbXpm4XnkLQUKwMpZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkZBgBBRZndlNhbGVPcmRlckNhaVd1UmVwb3J0D2dkphmiTIwT6DyEHsXBwz1pQ5Kd0Z8=" />
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
        <div style="margin: 5px 0 0 5px;">
            <div>
                <table border="0" style="width: 98%; border-bottom: 1px solid #b8b8b8;">
                    <tr>
                        <td class="titlebg">
                            <span>财务报表</span>(销售财务报表)
                        </td>
                        <td align="right">
                          
                            <a onclick="return ajaxSubmit(this);" id="lnkbtnExcel" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkbtnExcel','')">导出</a>
                            
                        </td>
                    </tr>
                </table>
            </div>
           
            <div class="searchDiv">
                入库日期
                <input name="txtRuKuDate1" type="text" id="txtRuKuDate1" class="easyui-datebox" style="width:104px;" />
                -
                <input name="txtRuKuDate2" type="text" id="txtRuKuDate2" class="easyui-datebox" style="width:104px;" />
                车辆系列
                <select name="ddlCheXi" id="ddlCheXi" style="width:104px;">
	<option selected="selected" value=""></option>
	<option value="CT200h">CT200h</option>
	<option value="ES250">ES250</option>
	<option value="ES300h">ES300h</option>
	<option value="ES350">ES350</option>
	<option value="GS250">GS250</option>
	<option value="GS300h">GS300h</option>
	<option value="GS350">GS350</option>
	<option value="GS450h">GS450h</option>
	<option value="GX400">GX400</option>
	<option value="IS250">IS250</option>
	<option value="IS250C">IS250C</option>
	<option value="LS460L">LS460L</option>
	<option value="LS600hL">LS600hL</option>
	<option value="LX570">LX570</option>
	<option value="NX200">NX200</option>
	<option value="NX200t">NX200t</option>
	<option value="NX300h">NX300h</option>
	<option value="RC F">RC F</option>
	<option value="RX270">RX270</option>
	<option value="RX350">RX350</option>
	<option value="RX450">RX450</option>
	<option value="RX450h">RX450h</option>

</select>
                客户名称
                <input name="txtCustName" type="text" id="txtCustName" />
                  车辆收入
                <input name="txtCheLiangInCome1" type="text" id="txtCheLiangInCome1" style="width:50px;" />
                -
                <input name="txtCheLiangInCome2" type="text" id="txtCheLiangInCome2" style="width:50px;" />
                在库天数
                <input name="txtZaiKuDay1" type="text" id="txtZaiKuDay1" style="width:50px;" />
                -
                <input name="txtZaiKuDay2" type="text" id="txtZaiKuDay2" style="width:50px;" />
            </div>
            <div class="searchDiv">
                订单日期
                <input name="txtOrderDate1" type="text" id="txtOrderDate1" class="easyui-datebox" style="width:104px;" />
                -
                <input name="txtOrderDate2" type="text" id="txtOrderDate2" class="easyui-datebox" style="width:104px;" />
                车辆编号
                <input name="txtCheliangBianHao" type="text" id="txtCheliangBianHao" />
                销售顾问
                <select name="ddlSalors" id="ddlSalors" style="width:104px;">
	<option value="">--请选择--</option>
	<option value="黄彦岚">黄彦岚</option>
	<option value="吴植林">吴植林</option>
	<option value="丁拱祥">丁拱祥</option>
	<option value="刘苏慧">刘苏慧</option>
	<option value="肖莹">肖莹</option>
	<option value="纪伟明">纪伟明</option>
	<option value="戴小涛">戴小涛</option>
	<option value="庄秋霞">庄秋霞</option>
	<option value="付文婷">付文婷</option>
	<option value="杨碧霞">杨碧霞</option>
	<option value="杜振辉">杜振辉</option>
	<option value="刘倩芸">刘倩芸</option>
	<option value="刘晓丽">刘晓丽</option>
	<option value="翁丽华">翁丽华</option>
	<option value="唐薇">唐薇</option>
	<option value="张小强">张小强</option>
	<option value="周苑灵">周苑灵</option>
	<option value="章楚玲">章楚玲</option>
	<option value="温华君">温华君</option>
	<option value="龚明芳">龚明芳</option>
	<option value="邱鹏">邱鹏</option>
	<option value="陈迎朝">陈迎朝</option>
	<option value="林中华">林中华</option>
	<option value="桂桥林">桂桥林</option>
	<option value="严冰冰">严冰冰</option>
	<option value="于燕飞">于燕飞</option>
	<option value="吴小燕">吴小燕</option>
	<option value="肖玮">肖玮</option>
	<option value="罗威">罗威</option>
	<option value="齐晓华">齐晓华</option>
	<option value="陈远淳">陈远淳</option>
	<option value="黄灿键">黄灿键</option>
	<option value="丁杰">丁杰</option>
	<option value="李娴">李娴</option>
	<option value="邓小明">邓小明</option>
	<option value="卢淑慧">卢淑慧</option>
	<option value="易明">易明</option>
	<option value="王磊">王磊</option>
	<option value="陈智聪">陈智聪</option>
	<option value="赵雅琴">赵雅琴</option>

</select>
                  应收账款
                <input name="txtWeiJiaoJinE1" type="text" id="txtWeiJiaoJinE1" style="width:50px;" />
                -
                <input name="txtWeiJiaoJinE2" type="text" id="txtWeiJiaoJinE2" style="width:50px;" />
                车辆成本
                <input name="txtCheLiangChengBen1" type="text" id="txtCheLiangChengBen1" style="width:50px;" />
                -
                <input name="txtCheLiangChengBen2" type="text" id="txtCheLiangChengBen2" style="width:50px;" />
            </div>
            <div class="searchDiv">
                开票日期
                <input name="txtKaiPiaoDate1" type="text" value="2014-12-07" id="txtKaiPiaoDate1" class="easyui-datebox" style="width:104px;" />
                -
                <input name="txtKaiPiaoDate2" type="text" id="txtKaiPiaoDate2" class="easyui-datebox" style="width:104px;" />
                 　车架号
                <input name="txtCheJiaHao" type="text" id="txtCheJiaHao" />
                发票号码
                <input name="txtFaPiaoHaoMa" type="text" id="txtFaPiaoHaoMa" />
                机构名称
                <input name="txtGroupNames" type="text" value="深业雷克" id="txtGroupNames" onclick="groupselect()" style="width:118px;" />
                      　　　　　　　 <a onclick="return ajaxSubmit(this);" id="lnkbtnSearch" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-search'" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a>
                                <input type="hidden" name="hidGroupIds" id="hidGroupIds" value="6018" />
            </div>
           
        </div>
        <div style="margin-top: 10px; width: 98%; background:#efefef; overflow: auto; height:500px;">
            <div>

</div>
        </div>
        <div>
            <!--分页代码start-->
            共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border: none; border-bottom: 1px solid black; width: 30px;" />
            <a onclick="return pageGo(this);" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
            <!--分页代码end-->
        </div>
        <input name="txtMaxPage" type="text" id="txtMaxPage" style="display: none;" />
        <input type="hidden" name="HidAllResult" id="HidAllResult" />
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F1056BAF" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWWwKdqpW9DwLZkqmUDAL2v8epBgL2v4uYDAKuuJDGCwKdwqPjCwLfweOnDwKi28WHAQKi24GxBQKBweOnDwLk2sWHAQLk2oGxBQLL85/JAgLL86+ZDwLzxOOnDwLzxPelDwLe9pv1CwKGoIy8CgKlgMGwCgK2w5PzCwK2w6P3CwKd3NGBAQKW+rbxDAKqx+fwCAKx0K3EBAKU6cvRAgKU6evSAgLxmfnCDQKfo7DwAgKfo7TwAgLfrrPTBwLfrp/4DgK50eGdCAK20eGdCAL18ZPPCgK8g7K+BgLIncOCBwK/vrGCAwKMt5LlAQLDraKXCAKW7bbMAgKGnOLZCAKD9ZSBCwKcofLgAwKzktDuDALw8r3dAwKdgZWhBgLG9Me2DwK9kK2gBALvzfeMCwKMxr38AgLE8by8AQKV5LGUAgKsuuP5AwKG/unMDwKdgZXdAQKzzZ6eAgLtiduJBgKh3beMCwLpttH6AwKp6OfmAQLavvDjCgKxkv/TDwKW7YLPCwLVmpWABgLYjJnLDAKvsZb2CALMy5uiBAKj+NnpCALequmDBgLd0L/hCwK5rvqPDgKRqIHgCAKZk/GSCALs2ry6AgLt0uOPCwKwtNqiDQLLnfi3BwKc9ODvBAKc9JyBDwKokY6OBALX1bTOBQL+8uS9DgKLn66yCQLy6sPyAQKU5vu4AwKalaGpBgLvvc5KAoW9wZcMAu6XvvQEAq6t7s0HWKZSmG0H+ylsJVv2vPJeXa187zg=" />
</div></form>
    <script language="javascript" type="text/javascript">

        function pageGo(obj) {
            var t = document.getElementById("txtThisPage");
            var myReg = /^\d+$/;
            var pageN = t.value;
            if (!myReg.test(pageN)) {
                alert("输入数字无效!请重新输入!");
                t.value = "";
                t.focus();
                return false;
            }

            if (parseFloat(t.value) < 1) { t.value = "1"; }

            if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                t.value = document.getElementById("txtMaxPage").value;
            }

            //  __doPostBack('lnkbtnSearch', '');
            ajaxSubmit(obj);

            return false;
        }
        function groupselect() {
            var href = "../../Index/groupSelect.aspx";
            var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue != "") {
                var s = returnValue.split("|");
                $("#hidGroupIds").val(s[0]);
                $("#txtGroupNames").val(s[1]);
            }

        }
$(function(){
         $("#gvSaleOrderCaiWuReport > tbody >tr").mouseenter(function(){
               
               if($(this).hasClass("clickCSS")){

               }else{
                 $(this).addClass("mouseenterCSS");
               }
               
           })
               .mouseleave(function(){
             
            if($(this).hasClass("clickCSS")){

              }else{
                 $(this).removeClass("mouseenterCSS");
               }
              
          })
              .click(function(){
                if($(this).hasClass("clickCSS")){
                 $(this).removeClass("clickCSS");
              }else{
               $(this).removeClass("mouseenterCSS");
               $(this).addClass("clickCSS");
              }
          });
      });
    </script>
</body>
</html>