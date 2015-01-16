<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >
    var saleAfterGuid = '<s:property value="saleAfterWeiXiuGuid" />';    
    var tmp = '#FFFFFF';
    $(function () {
        $('tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });



    //页面刷新方法
    function pageLoad() {
        location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();

     }

</script>

<body>
    <form name="form1" method="post" id="form1">
    <div style="margin-top:5px;margin-left:5px;margin-right:5px;">     
        <table border="0" style="width:900px" >
         <!--按钮区域 sart-->
          <tr>
          <td align="right">
          <a onClick="return printThis();" id="lnkPrint" class="easyui-linkbutton" href="javascript:__doPostBack('lnkPrint','')">打印</a>
             
             
             <a onClick="return addWeiXiuTaoCan();" id="lnkTaoCan" class="easyui-linkbutton" href="javascript:__doPostBack('lnkTaoCan','')">新增套餐</a>
             
             
             <a onClick="return zhangTaoMdfSave();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
             
             
             
             <a onClick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>
          </td>
          </tr>
         <!--按钮区域 end-->
        </table>

        <table border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td style="vertical-align:middle;">
         <input name="btnWeiXiuListAdd" type="button" id="btnWeiXiuListAdd" value="维修项目" style="width:60px;height:30px;font-size:12px;" onClick="addWeiXiuXiangMuList()" /></td>
        </tr>
        </table>
        <table border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%"  >
        <!--维修项目 start-->
         
          <tr>
           <td style="width:30px;">NO.</td>
           <td style="width:50px;">工段</td>
           <td style="width:150px;">项目编号</td>
           <td style="width:360px;">维修内容</td>
           <td width="60px" style="text-align:right;">工时</td><td  width="60px" style="text-align:right;">工时费</td>
           <td  width="120px">帐套</td><td  width="150px">子帐套</td><td width="10px"></td>
          </tr>
         <s:iterator value="gongDanWeiXiuXiangMuLst" status="status">
         <tr >
           <td style="width:20px;text-align:center;"  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')" ><s:property value="#status.count" />
           <input type="hidden" name="weiXiu" value="40dfae53-7856-47df-9664-a1266379c298" />
           </td>
           <td  width='30px'>
           <select id='40dfae53-7856-47df-9664-a1266379c298GongDuanName' style="display:none;width:50px;"  ></select>
           <span id="40dfae53-7856-47df-9664-a1266379c298GongDuanNameB"><s:property value="txtGongDuanName" /></span>
            </td>
           <td  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')"><s:property value="txtXiangMuId" /></td>
           <td  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')"><s:property value="txtWeiXiuNeiRong" /></td>
           <td  style="text-align:right;" >
           <span id="40dfae53-7856-47df-9664-a1266379c298GongShiB" ><s:property value='txtGongShi' /></span>
           <input type="text" style="width:55px;display:none;"  class="easyui-numberbox" data-options="min:0,max:900,precision:2"  value="<s:property value='txtGongShi' />" id='40dfae53-7856-47df-9664-a1266379c298GongShi' />
           </td>
           <td style="text-align:right;"  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')"><s:property value="txtGongShiFei" /></td>
           <td><select id='40dfae53-7856-47df-9664-a1266379c298ZhangTao' style="display:none;width:75px;"  onchange=subZhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298') ></select>
           <span id="40dfae53-7856-47df-9664-a1266379c298ZhangTaoB">厂家保修</span></td>
           <td><select id='40dfae53-7856-47df-9664-a1266379c298SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="40dfae53-7856-47df-9664-a1266379c298SubZhangTaoB"></span></td>
           <td width="10px">
           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuXiangMu('40dfae53-7856-47df-9664-a1266379c298')"  />
           </td>
          </tr>
         </s:iterator>
         <tr>
           <td></td>
           <td>合计</td>
           <td></td>
           <td></td>
           <td style="text-align:right;">9.00</td>
           <td style="text-align:right;">900.00</td>
           <td></td>
           <td></td>
           <td width="10px"></td>
          </tr>
         
        <!--维修项目 end-->
        </table>


        <div  style="height:1px;"></div>
        <table border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td>
          <input name="btnWeiXiuWuLiao" type="button" id="btnWeiXiuWuLiao" value="物料选择" style="width:60px;height:30px;font-size:12px;" onClick="addWeiXiuWuLiaoList()" />



         </td>
        </tr>
        </table>
        <table  border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
        <!--维修物料 start-->
        
          <tr>
           <td  style="width:30px;">NO.</td>
           <td  style="width:200px;">商品编号</td>
           <td  style="width:240px;">商品名称</td>
           <td width="60" style="text-align:right;">所需数量</td>
           <td  width="60" style="text-align:right;">领用数量</td>
           <td  width="60" style="text-align:right;">退货数量</td>
           <td  width="60" style="text-align:right;">单价</td>
           <td  width="120">帐套</td><td  width="150">子帐套</td><td width="10"></td>
          </tr>
         
         <tr  id="abaa490a-116c-44b2-b1da-7cbba0615c23Tr">
           <td  onclick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:center;">1
           <input type="hidden" name="wuLiao" value="abaa490a-116c-44b2-b1da-7cbba0615c23" />
           </td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')" >0415231090</td><td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')" >机油滤清器滤芯组件</td>
           <td  style="text-align:right;">
           <input  id='abaa490a-116c-44b2-b1da-7cbba0615c23RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:right;">61.00</td>
           <td><select id='abaa490a-116c-44b2-b1da-7cbba0615c23ZhangTao' style="display:none;"  onchange=subZhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23') ></select>
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23ZhangTaoB">厂家保修</span></td>
           <td><select id='abaa490a-116c-44b2-b1da-7cbba0615c23SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23SubZhangTaoB'"></span></td>
           <td width="10">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('abaa490a-116c-44b2-b1da-7cbba0615c23')"  /></td>
          </tr>
         
         <tr  id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eTr">
           <td  onclick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"   style="text-align:center;">2
           <input type="hidden" name="wuLiao" value="51b97d10-c35b-42ff-bfdf-d2b63d304c8e" />
           </td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')" >0882380150</td><td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')" >雷克萨斯纯牌机动车辆制动液</td>
           <td  style="text-align:right;">
           <input  id='51b97d10-c35b-42ff-bfdf-d2b63d304c8eRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"   style="text-align:right;">4.00</td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"   style="text-align:right;">39.00</td>
           <td><select id='51b97d10-c35b-42ff-bfdf-d2b63d304c8eZhangTao' style="display:none;"  onchange=subZhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e') ></select>
           <span id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eZhangTaoB">厂家保修</span></td>
           <td><select id='51b97d10-c35b-42ff-bfdf-d2b63d304c8eSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eSubZhangTaoB'"></span></td>
           <td width="10">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('51b97d10-c35b-42ff-bfdf-d2b63d304c8e')"  /></td>
          </tr>
         
          <tr>
           <td></td>
           <td>合计</td><td></td>
           <td  style="text-align:right;">0.00</td>
           <td  style="text-align:right;">18.00</td>
           <td colspan="4">
           需求费用:0.0000 预估费用:1672.0000
           </td> 
           <td width="10"></td>
          </tr>
         
        <!--维修物料 end-->
        </table>

    </div>
    </form>

     
    <script language="javascript" type="text/javascript">
        function printThis() {
            window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date());
            return false;
        }

     
     var zhangTao =$.parseJSON('[{"zhangTaoName":"正常维修","zhangTaoList":[]},{"zhangTaoName":"厂家保修","zhangTaoList":[]},{"zhangTaoName":"大客户(月结)","zhangTaoList":[]},{"zhangTaoName":"保险","zhangTaoList":[]},{"zhangTaoName":"保险自付","zhangTaoList":[]},{"zhangTaoName":"内结","zhangTaoList":[{"zhangTaoName":"销售部支付"},{"zhangTaoName":"售后部支付"},{"zhangTaoName":"客户部支付"}]}]');
     var weiXiuGongDuanInfo ="<option value='机电'>机电</option><option value='保养'>保养</option><option value='钣金'>钣金</option><option value='美容'>美容</option><option value='喷漆'>喷漆</option";

     //维修项目修改
     function zhangTaoMdf(detailGuid,sort) {
         if (zhangTao == null) {return false;}
      var thisValue = $("#" + detailGuid + "ZhangTaoB").html();
      $("#"+detailGuid+"ZhangTaoB").css("display","none");
      $("#" + detailGuid + "SubZhangTaoB").css("display", "none");

      if (sort == "weiXiu") {
           if("6018" !="9999")
            {
                $("#" + detailGuid + "GongShiB").css("display", "none");  //取消工时修改
                $("#" + detailGuid + "GongShi").css("display", "block");  //取消工时修改
            }
          $("#" + detailGuid + "GongDuanNameB").css("display", "none");
          $("#" + detailGuid + "GongDuanName").css("display", "block");

          $("#" + detailGuid + "GongDuanName").empty();
          $("#" + detailGuid + "GongDuanName").append("<option value=''></option>" + weiXiuGongDuanInfo);
          $("#" + detailGuid + "GongDuanName").val($("#" + detailGuid + "GongDuanNameB").html());
      }

      $("#"+detailGuid+"ZhangTao").css("display","block");
      $("#"+detailGuid+"SubZhangTao").css("display","block");

      if (sort == "wuLiao") {
          $("#" + detailGuid + "RegQty").css("display", "block"); //需求数量
          $("#" + detailGuid + "RegQtyB").css("display", "none"); //需求数量
      
      }



      //生成select

      $("#" + detailGuid + "ZhangTao").empty();
      $("#" + detailGuid + "ZhangTao").append("<option value=''></option>");

      for (var i = 0; i < zhangTao.length; i++) {
         //帐套判断 start
          if ("0" == 1 && zhangTao[i].zhangTaoName !="正常维修") {
              if (zhangTao[i].zhangTaoName == thisValue) {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "' selected=true>" + zhangTao[i].zhangTaoName + "</option>");
              }
              else {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "'>" + zhangTao[i].zhangTaoName + "</option>");
              }
          }

          if ("0" != 1 && zhangTao[i].zhangTaoName != "保险" && zhangTao[i].zhangTaoName != "保险自付") {

              if (zhangTao[i].zhangTaoName == thisValue) {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "' selected=true>" + zhangTao[i].zhangTaoName + "</option>");
              }
              else {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "'>" + zhangTao[i].zhangTaoName + "</option>");
              }
          }
          //帐套判断 end
          
      }
      subZhangTaoMdf(detailGuid);
  }

  function subZhangTaoMdf(detailGuid) {
      if (zhangTao == null) { return false; }

      var thisZhangTao = $("#" + detailGuid + "ZhangTao").val(); ;
      var thisValue = $("#" + detailGuid + "SubZhangTaoB").html(); ;
      if (thisZhangTao == "") {return;}
      $("#" + detailGuid + "SubZhangTao").empty();
      $("#" + detailGuid + "SubZhangTao").append("<option value=''></option>");
      for (var i = 0; i < zhangTao.length; i++) {
          if (zhangTao[i].zhangTaoName == thisZhangTao) {
              for (var j = 0; j < zhangTao[i].zhangTaoList.length; j++) {
                  if (zhangTao[i].zhangTaoList[j].zhangTaoName == thisValue) {
                      $("#" + detailGuid + "SubZhangTao").append("<option value='" + zhangTao[i].zhangTaoList[j].zhangTaoName + "' selected=true>" + zhangTao[i].zhangTaoList[j].zhangTaoName + "</option>");
                  }
                  else {
                      $("#" + detailGuid + "SubZhangTao").append("<option value='" + zhangTao[i].zhangTaoList[j].zhangTaoName + "'>" + zhangTao[i].zhangTaoList[j].zhangTaoName + "</option>");
                  }     
              }
          }
      }



  }





  //避免多次重复提交操作
  function zhangTaoMdfSave() {
      //叠加数据 数据格式:类型，工时,帐套,子帐套
      var str = "";
      var obj1 = document.getElementsByName("weiXiu");
      var obj2 = document.getElementsByName("wuLiao");       
      for (var i = 0; i < obj1.length; i++) { 
          if ($("#" + obj1[i].value + "ZhangTao").css("display") == "block") {            
              //验证数据是否都填写 
              if ($("#" + obj1[i].value + "ZhangTao").val() == "") { $("#" + obj1[i].value + "ZhangTao").css("background-color", "red"); return false; }
              if ($("#" + obj1[i].value + "SubZhangTao").val() == "" && $("#" + obj1[i].value + "SubZhangTao option").length>1) { $("#" + obj1[i].value + "SubZhangTao").css("background-color", "red"); return false; }
              if ($("#" + obj1[i].value + "GongShi").val() == "") { $("#" + obj1[i].value + "GongShi").css("background-color", "red"); return false; }
            
               //叠加数据
              str +="weiXiu,"+$("#" + obj1[i].value + "GongShi").val()+","+$("#" + obj1[i].value + "ZhangTao").val()+","+$("#" + obj1[i].value + "SubZhangTao").val()+","+obj1[i].value+","+$("#" + obj1[i].value + "GongDuanName").val()+ "|";

          }
      } 
      for (var i = 0; i < obj2.length; i++) {
          if ($("#" + obj2[i].value + "ZhangTao").css("display") == "block") {
              //验证数据是否都填写
              if ($("#" + obj2[i].value + "ZhangTao").val() == "") { $("#" + obj2[i].value + "ZhangTao").css("background-color", "red"); return false; }
              if ($("#" + obj2[i].value + "SubZhangTao").val() == "" && $("#" + obj2[i].value + "SubZhangTao option").length >1) { $("#" + obj2[i].value + "SubZhangTao").css("background-color", "red"); return false; }

              //叠加数据
              str += "wuLiao,0," + $("#" + obj2[i].value + "ZhangTao").val() + "," + $("#" + obj2[i].value + "SubZhangTao").val() + "," + obj2[i].value + "," + $("#" + obj2[i].value + "RegQty").val() + "|";

          }
      }
    
      //所有修改
      if (str == "") {
          alert("修改完成！");
      } else {
          //发送数据值服务器端

      $.post("saleAfter_gongDanZhiZuoExec.aspx?d=" + new Date(), {
          "type": "weiXiuMdf",
          "saleAfterGuid": saleAfterGuid,
          "str": str
      }, function (data) {
          if (data == "ok") {
              alert("修改成功！");
              location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
          }
          else {
              alert(data);
          }
      });
      }


      return false;
  }


    </script>



    <script language="javascript" type="text/javascript">
        function addWeiXiuXiangMuList() {
            var u = "";
            
            if("6018" !="9999")
            {
             u = "../saleAfterManage/saleAfterGongDanZhiZuoAddWeiXiuXiangMu.action?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
            }else
            {
            u = "../saleAfterManage/saleAfter_gongDanZhiZuoAddWeiXiuXiangMuNew.aspx?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
            }
            var SizeZ = "dialogWidth:850px;dialogHeight:650px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u,"维修项目添加","height=400,width=730,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }

            return false;
        }


        function addWeiXiuXiangMu() {
           
            var u = "../saleAfterManage/saleAfter_gongDanZhiZuotmpAddWeiXiuXiangMu.aspx?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修项目添加L", "height=400,width=650,top=130,left=700,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }
            return false;
        }


        function delWeiXiuXiangMu(weiXiuXiangMuThisId) {

            $.messager.confirm('删除', '删除此维修项目?', function (r) {
                if (r) {

                    $.get("saleAfter_gongDanZhiZuoExec.aspx", {
                        "type": "weiXiuXiangMuDel",
                        "saleAfterGuid": saleAfterGuid,
                        "weiXiuXiangMuThisId": weiXiuXiangMuThisId
                    }, function (data) {
                        //刷新页面
                        if (data == "ok") {
                            location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
                        } else {
                            alert(data);
                        }
                    });

                }
            }); 

        }


        function addWeiXiuWuLiaoList() {
            var u = "../saleAfterManage/saleAfter_gongDanZhiZuoAddWeiXiuWuLiao.aspx?baoXianFlag=0&saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修物料添加", "height=400,width=730,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                 returnValue = window.showModalDialog(u, '', SizeZ);                 
                 location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }
            return false;
        }


        function delWeiXiuWuLiao(weiXiuWuLiaoDetailGuid) {
            $.messager.confirm('删除', '删除此维修项目?', function (r) {
                if (r) {

                    $.get("saleAfter_gongDanZhiZuoExec.aspx", {
                        "type": "weiXiuWuLiaoDel",
                        "saleAfterGuid": saleAfterGuid,
                        "weiXiuWuLiaoThisId": weiXiuWuLiaoDetailGuid
                    }, function (data) {
                        //刷新页面
                        if (data == "ok") {
                            $("#" + weiXiuWuLiaoDetailGuid + "Tr").css("display","none");
                            //location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
                        } else {
                            alert(data);
                        }
                    });

                }
            }); 
           
        }


        //套餐新增模块
        function addWeiXiuTaoCan() {
            var u = "../saleAfterManage/saleAfter_taoCanChoiceMain.aspx?baoXianFlag=0&saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修套餐添加", "");
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }
            location.href = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid=" +saleAfterGuid+ "&d=" + new Date();
            return false;
        }


        function winClose() {
            if (!confirm("您确定要退出？")) {
                return false;
            }
            try {
                parent.parent.parWinClose();
            } catch (e) {
                parent.window.opener = null;
                parent.window.close();
            }
            return false;
        }


    </script>

</body>
</html>