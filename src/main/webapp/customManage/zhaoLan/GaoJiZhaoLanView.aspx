
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	高级招揽
</title>
    <style type="text/css">
        .div
        {
            text-align: left;
            font-size: 9pt;
            width: 100%;
            background-color: #DFEFFF;
            padding-left: 1%;
            padding-top: 2px;
            padding-bottom: 2px;
            font-weight: 700;
        }
        .button
        {
            border-right: #666666 1px solid;
            border-top: #c8c8c8 1px solid;
            border-left: #c8c8c8 1px solid;
            border-bottom: #666666 1px solid;
            cursor: hand;
            font-weight: normal;
            font-size: 9pt;
            font-style: normal;
            font-variant: normal;
            background-color: #F6F6cc;
            vertical-align: middle;
        }
        .button1
        {
            height: 25px;
             background-color: #F9F8F5;
            }
        .divExQuery
        {
            width: 100%;
            height: 251px;
            text-align: center;
            overflow: scroll;
        }
        .Tablehead
        {
            font-size: 9pt;
            border-color: Black;
            border-width: 1px;
            font-family: "宋体";
            background-color: #B8CCE6;
            text-align: center;
        }
        .Tablerow1
        {
            font-size: 9pt;
            cursor: hand;
            color: #000000;
            font-family: "宋体";
        }
        .gvAlternatingRow
        {
            background-color: White;
            font-size: 9pt;
            cursor: hand;
            color: #000000;
            font-family: "宋体";
            text-align: center;
            height: 16px;
        }
        .hidGiv
        {
            display: none;
        }
        .ddlcss
        {
        	min-width:110px;
        	max-width:150px;
        }
        
        
#tabCondition
{
}
#tabCondition td
{
	height:15px;
}
/*
td
{
	font-size:9pt;
	color:#505050;
}*/


.tablehead
{
    font-size:9pt;
    color: black;
    font-family:  "宋体";
    background-color:#B8CCE6;
    text-align:center;
    margin:0px;
}
.tablerow
{
    font-size:9pt;

    border-collapse:collapse;
    color:#000000;
    font-family: "宋体";
    text-align:center;
    height:16px;
    
}
.comm
{
    font-size: 9pt;
    font-style: normal;
    font-family: "宋体"
}
.btnCss
{
	border-right: #666666 1px solid;
	border-top: #c8c8c8 1px solid; 
	font-weight: normal; 
	font-size: 9pt;
	border-left: #c8c8c8 1px solid;
	cursor: hand; 
	border-bottom: #666666 1px solid; 
	font-style: normal;
	background-color: #F6F6cc; 
	font-variant: normal;
	height:19px;
}
.inputTextCss
{
	border-right: #506646 0px solid;
	border-top: #506646 0px solid; 
	font-weight: normal; 
	font-size: 9pt;
	background: #f9f8f5;
	border-left: #506646 0px solid; 
	border-bottom: #506646 1px solid;
}
.btnHideCss
{
	border-right: #666666 1px solid;
	border-top: #c8c8c8 1px solid; 
	font-weight: normal; 
	font-size: 10pt;
	border-left: #c8c8c8 1px solid;
	cursor: hand; 
	border-bottom: #666666 1px solid; 
	font-style: normal;
	background-color: #F9F8F5; 
	font-variant: normal;
	width:86px;
	height:20px;
}
        /* 6列中列标题的样式,有3列标题*/
        .style1
        {
            background-color: #DFEFFF;
            text-align: left;
            height: 18;
            font-size:11pt;
            FONT-FAMILY: "宋体";
        }
        /* 6列中不是列标题的样式*/
        .tr_td
        { 
            text-align: left;
            height: 18;
            font-size:11pt;
            FONT-FAMILY: "宋体";
        }
        /* 按钮的样式*/
        .style3
        {
            border-right: #acb5b5 1px solid;
            border-top: #c4cccc 1px solid;
            background: url(../image/background_form_element.gif) #fefefe repeat-x;
            border-left: #acb5b5 1px solid;
            cursor: pointer;
            color: #222222;
            border-bottom: #6f7777 1px solid;
            height: 21px;
            padding-right: 5px;
            padding-left: 5px;
            padding-bottom: 1px;
            padding-top: 2px;
            font-family: "宋体" , "verdana" , "arial" , "helvetica" , "sans-serif";
            margin-left: 3px;
        }
    </style>





 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


    <script type="text/javascript" language="javascript">
    var changColorId="";//改变背景色id
    var changeColorColor="";//背景颜色
    var openStatus1,openStatus2;//打开状态1 2
    function changColor(obj)
    {
        changeColorColor=obj.style.backgroundColor;
         if(changColorId !="" && changColorId !=null)
        {
            changColorId.style.backgroundColor=changeColorColor;
        }
        obj.style.backgroundColor="#EEE3CB";
        changColorId = obj;
    }
    //单击此项改变背景色彩
    function changeColor(obj)
    {
        changColor(obj);
    }
    
//     //跳转页面
    function pageGo()
    {
        var  myReg = /^\d+$/;  
        var pageN=document.getElementById("txtPage").value;
        var href = window.location.href;
        //判断新增条件是否有效
        if(!myReg.test(pageN))
        {
            alert("输入数字无效!请重新输入!");
            document.all.PageNo.value ="";
            document.all.PageNo.focus();
            return false;
        } 
        if(pageN >0)
        {
           alert("无此页面,请重新输入");
           document.all.PageNo.value ="";
        }
      
      }      
      

    //上一页
    function pagePrent()
    {
        var href = window.location.href;
        var pageEx = 1;//当前页
        if (eval(pageEx-1)<1 )
        {
            alert("当前为第一页");
        }
        else
        {
            if(href.indexOf("?")>0)
            {
                if(href.indexOf("&")>0)
                {
                    href=href.split("&pageEx=");
                    href = href[0]+"&pageEx="+eval(pageEx-1)+"";
                }
                else
                {
                    if(href.indexOf("pageEx")>0)
                    {
                        href=href.split("pageEx=");
                        href=href[0]+"pageEx="+eval(pageEx-1)+"";
                    }
                    else
                    {
                        href+="&pageEx="+eval(pageEx-1)+"";
                    }
                }
            }
            else
            {
                href=href+"?pageEx="+eval(pageEx-1)+"";
             }
          document.form1.action=href;
          document.form1.submit();
        }
    }

    //下一页
    function pageNext()
    {
        var href = window.location.href;
        var pageEx = 1;//当前页
        var pageAll = 0;//总页数
        if (eval(pageEx+1)>eval(pageAll) )
        {
            alert("当前为最后一页");
        }
        else
        {
          if(href.indexOf("?")>0)
            {
                if(href.indexOf("&")>0)
                {
                    href=href.split("&pageEx=");
                    href = href[0]+"&pageEx="+eval(pageEx+1)+"";
                }
                else
                {
                    if(href.indexOf("pageEx")>0)
                    {
                        href=href.split("pageEx=");
                        href=href[0]+"pageEx="+eval(pageEx+1)+"";
                    }
                    else
                    {
                        href+="&pageEx="+eval(pageEx+1)+"";
                    }
                }
            }
            else
            {
                href=href+"?pageEx="+eval(pageEx+1)+"";
            }
          document.form1.action=href;
          document.form1.submit();
        }
    }
    
     //查看详细
    function edit(guid,index)
    {
        if(!document.getElementById("btnSaveTask").disabled)
        {
            alert('请先保存客户记录');
            return;
        }
        var exTaskId="";
        var href ="commonZhaoLanFrame.aspx?cusGuid="+guid+"&TaskId="+exTaskId+"&num="+index+"&Type=高级招揽";
        var size="height=800,width=920,left=100,top=100,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes";
         var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + 'toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
        Default = window.open(href,"default",size);
        Default.focus();
    }
    
    //设置查询
     function btnSetQuery_onclick()
      {
          var exTaskId="";
           if(exTaskId.length<1)
           {
               alert('请选择一个要设置查询的招揽任务！');
               return false;       
           }
           var vr=window.showModalDialog("ZhaoLanYuewu_SetQuery.aspx","Query","dialogWidth:650px;dialogHeight:500px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;");
           if (vr!=null)
           {
                document.getElementById("hid1").value=vr;
           }
      }
//点击添加按钮
    function AddExTask_Click() 
    {
       var vs=window.showModalDialog('ZhaoLanRenWuAdd.aspx',"Add",'dialogWidth:650px;dialogHeight:370px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;');
       if (vs!=null)
       {
            document.getElementById("hid2").value=vs;
       }
    }
//点击修改按钮
    function UpdateExTask_Click()
    {
       var exTaskId="";
       if(exTaskId.length<1)
       {
           alert('请选择一个要修改的招揽任务！');
           return false;       
       }
       //showModalDialog
       var vt=window.showModalDialog("ZhaoLanRenWuAdd.aspx?ID="+exTaskId,"Update","dialogWidth:650px;dialogHeight:370px;center:yes;edge:sunken;help:no;resizable:no;scroll:auto;status:no;");
       if (vt!=null)
       {
            document.getElementById("hid3").value=vt;
            return true;
       }
       return false;
    }
    //获取strCusGuid中客户唯一标识Guid
        function getCusGuid(i)
        {
            var strCusGuid1="".split(",");
            if(eval(i)>=(strCusGuid1.length-1)||eval(i)<0)
            {
                return "error";
            }
            else
            {
                return strCusGuid1[i];
            }
        }
        //获取strTaskId中任务ID
        function getTaskId()
        {
            var exTaskId="";
            return exTaskId;
        }
        function OpenQuery()
        {
            var TaskId="";
            var cusId="a17a7061-9f34-4ede-828b-3b1396ec4eaf";
            if(TaskId.length<10)
            {
                alert('请选择一个任务!');
                return false;
            }
            var vt=window.showModalDialog("ZhaoLanYeWuFrame.aspx?cusId="+cusId+"&TaskId="+TaskId,"OpenQuery","dialogWidth:990px;dialogHeight:600px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;");
             if (vt!=null)
            {
                document.getElementById("hid3").value=vt;
                return true;
            }
               return false;
        }
        function childRefresh()
        {
            document.getElementById("btnQueryExCond").click();
        }
    </script>
<body bgcolor="#F9F8F5" style="margin-top: 23px;">
    <form name="form1" method="post" action="GaoJiZhaoLanView.aspx" id="form1" style="text-align: center; width: 100%;">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwMTQ5NjEzNDcPZBYCAgEPZBYEAgkPPCsADQBkAhgPEA8WBh4ORGF0YVZhbHVlRmllbGQFBlN0YXRlcx4NRGF0YVRleHRGaWVsZAUGU3RhdGVzHgtfIURhdGFCb3VuZGdkEBUEAAnmnKrlrozmiJAJ5bey5a6M5oiQBuWFs+mXrRUEAAnmnKrlrozmiJAJ5bey5a6M5oiQBuWFs+mXrRQrAwRnZ2dnZGQYAQUHZ2l2VGFzaw9nZPERqn/o22YLgVaPOHUO1lI5oSXH" />
</div>

    <div class="div">
        <input type="submit" name="btnAddExTask" value="增加" onclick="return AddExTask_Click();" id="btnAddExTask" class="button1" />
        <input type="submit" name="btnUpdateExTask" value="修改" onclick="return UpdateExTask_Click();" id="btnUpdateExTask" class="button1" />
        <input type="submit" name="btnDeleteExTask" value="删除" onclick="return confirm('你确定要删除该任务吗？');" id="btnDeleteExTask" class="button1" />
        <input type="submit" name="btnQueryCustoms" value="选择客户" onclick="return OpenQuery();" id="btnQueryCustoms" class="button1" />
        <span id="Label1">任务名称：</span>
        <input name="txtTaskName" type="text" id="txtTaskName" />
        <span id="Label2">任务说明：</span>
        <input name="txtTaskShuoMing" type="text" id="txtTaskShuoMing" />
        <input type="submit" name="btnQueryTask" value="查询" id="btnQueryTask" class="button1" />
    </div>
        <div>
    <div>

</div>
      </div>
    <div>
        <div class="div">
            <span id="lblCurrentPage"></span>
            <input name="txtPage" type="text" id="txtPage" style="height:22px;width:55px;" />
            <input type="submit" name="lnkGoTo" value="跳转" id="lnkGoTo" class="button1" />
            <input type="submit" name="lnkFirst" value="首页" id="lnkFirst" class="button1" />
            <input type="submit" name="lnkPrev" value="上一页" id="lnkPrev" class="button1" />
            <input type="submit" name="lnkNext" value="下一页" id="lnkNext" class="button1" />
            <input type="submit" name="lnkLast" value="末页" id="lnkLast" class="button1" />
            <input name="hid1" type="hidden" id="hid1" />
            <input name="hid2" type="hidden" id="hid2" />
            <input name="hid3" type="hidden" id="hid3" />
            <input name="hid4" type="hidden" id="hid4" value="0" />
            <br />
        </div>
    </div>
    <div id="taskName" class="div" style="background-color: WHITE; padding-left: 3%;">
    </div>
    <div class="div" style="text-align: left;">
          
                    查询条件：
                    <select name="ddlQueryCond" id="ddlQueryCond" style="width:12%;">

</select>
                    查询值:
                    <input name="txtQueryExCond" type="text" id="txtQueryExCond" style="width:12%;" />
                    招揽状态:
                    <select name="ddlZhaoLanState" id="ddlZhaoLanState" style="width:12%;">
	<option selected="selected" value=""></option>
	<option value="未完成">未完成</option>
	<option value="已完成">已完成</option>
	<option value="关闭">关闭</option>

</select>
                    <input type="submit" name="btnQueryExCond" value="查找" id="btnQueryExCond" class="button1" />
                    <input type="submit" name="btnSaveTask" value="保存招揽客户" id="btnSaveTask" class="button1" />
   
    </div>
    <div id="givExQueryTable" class="divExQuery">
    </div>
    <div class="div">
        <span id="alarmInfo" style="font: 10pt red;">
            <input type="submit" name="btnPageUp" value="上一页" onclick="pagePrent();" id="btnPageUp" class="button1" />
            <input type="submit" name="btnPageDown" value="下一页" onclick="pageNext();" id="btnPageDown" class="button1" />
        </span><span>共0页,共有0条符合条件 当前第1页跳到</span>
        <input type="text" accesskey="P" name="PageNo" size="4" style="border-right: #506646 0px solid;
            border-top: #506646 0px solid; font-weight: normal; font-size: 9pt; background: #f9f8f5;
            border-left: #506646 0px solid; border-bottom: #506646 1px solid" />
        <input type="submit" name="btnPageGo" value="转 到" onclick="pageGo();" id="btnPageGo" class="button1" />
   
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3F091F16" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWHALNm5K9CwKgg9nwCQLjvJ2TCQKX+Iv/DgLE9LPmBwLg8bSMBAKYqeWoAwLwnpfcAwLEhPSGBAKP9qL+BAKd0cfTBwLXleKtAgKSw9qBBQKOw+6BBAK+mfWHCAK+meGsDwK+mc3RBgK+mbn2DQLcuorDBgKXtrCUBgLXo4H/AwKf94H/AwLa+4fXBQKBoJKEBgL499a3CwLaxvPWDgKlvKWfBwLJxovuAWxKecInlo+5cVZi3EN1xrdfdtdW" />
</div></form>
</body>
</html>