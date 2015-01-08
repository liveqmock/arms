

<html> 
    <title></title>
     

    <style type="text/css">
        body
        {
        	margin-top:0px;
        	margin-left:10px;
        	margin-right:0px;
        	margin-bottom:0px;
        	}
     td,div{
      font-size:12px;
      white-space:nowrap;
     }
    </style>

    <script language="javascript" type="text/javascript" >
        var changColorId = ""; //改变背景色id
        var changeColorColor = ""; //背景颜色
        //改变背景色函数
        function changColor(obj) {
            changeColorColor = obj.style.backgroundColor;
            if (changColorId != "" && changColorId != null) { changColorId.style.backgroundColor = changeColorColor; }
            obj.style.backgroundColor = "#EEE3CB";
            changColorId = obj;
        }


        function show(huiFangId, lianXiId) {
           
        }

        function pageGo() {
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

            return true;

        }

    </script>

<body>
    <form name="form1" method="post" action="customLianXiLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;dThu+Jan+08+2015+14%3a47%3a53+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEyMTg2MzE1NTcPZBYCZg9kFgJmDxYCHgtfIUl0ZW1Db3VudAIFFgoCAQ9kFgJmDxUGATEG5ZG85Ye6EjIwMTQtMTEtNiAxMTowMDo1NQbpmYjmiJAM5ZSu5ZCO5Zue6K6/cuWuouaIt+ivtOi9puWtkOmHjOWklumDveayoeaciea4hea0l+W5suWHgO+8jOS9oOS7rOi/mea0l+i9puaEn+inieavlOi+g+mprOiZju+8jOWwseaYr+maj+S+v+a0l+S4i+W6lOS7mOW3ruS6i+OAgmQCAg9kFgJmDxUGATIG5ZG85Ye6EzIwMTQtMTAtMTMgMTA6MTY6MTUG6ZmI5oiQDOWUruWQjuWbnuiuvwnojIPmraPlm71kAgMPZBYCZg8VBgEzBuWRvOWHuhIyMDE0LTgtMjcgMTU6NDY6NDkG6ZmI5oiQDOWUruWQjuWbnuiuvwbmu6HmhI9kAgQPZBYCZg8VBgE0BuWRvOWHuhIyMDE0LTUtMjUgMTA6NDc6NTgG6ZmI5oiQDOWUruWQjuWbnuiuvwbmu6HmhI9kAgUPZBYCZg8VBgE1BuWRvOWHuhIyMDE0LTMtMTIgMTA6MTc6NDAG6ZmI5oiQDOWUruWQjuWbnuiuvwbmu6HmhI9kZAOZ/e3NWUKzie+vl0cUeEABsTHh" />
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


    <div style="height:135px;width:98%;overflow:scroll;">
      <table  border="1" id="tb" style="border:1px solid gray;border-collapse:collapse;width:98%;" >
      
        <tr>
         <td style="width:30px;">NO.</td>
         <td>类型</td>
         <td>联系时间</td>
         <td>联系人</td>
         <td>联系类型</td>   
         <td>联系内容</td>    
        </tr>
        
        <tr  onclick="changColor(this);"   >
        <td  style="width:30px;text-align:center;">1</td>
        <td>呼出</td> 
         <td>2014-11-6 11:00:55</td>
         <td>陈成</td>
         <td>售后回访</td>   
         <td>客户说车子里外都没有清洗干净，你们这洗车感觉比较马虎，就是随便洗下应付差事。</td>    
        </tr>
        
        <tr  onclick="changColor(this);"   >
        <td  style="width:30px;text-align:center;">2</td>
        <td>呼出</td> 
         <td>2014-10-13 10:16:15</td>
         <td>陈成</td>
         <td>售后回访</td>   
         <td>范正国</td>    
        </tr>
        
        <tr  onclick="changColor(this);"   >
        <td  style="width:30px;text-align:center;">3</td>
        <td>呼出</td> 
         <td>2014-8-27 15:46:49</td>
         <td>陈成</td>
         <td>售后回访</td>   
         <td>满意</td>    
        </tr>
        
        <tr  onclick="changColor(this);"   >
        <td  style="width:30px;text-align:center;">4</td>
        <td>呼出</td> 
         <td>2014-5-25 10:47:58</td>
         <td>陈成</td>
         <td>售后回访</td>   
         <td>满意</td>    
        </tr>
        
        <tr  onclick="changColor(this);"   >
        <td  style="width:30px;text-align:center;">5</td>
        <td>呼出</td> 
         <td>2014-3-12 10:17:40</td>
         <td>陈成</td>
         <td>售后回访</td>   
         <td>满意</td>    
        </tr>
        
       </table>
    </div>
    <div>
    <!--分页代码start-->
    共4页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="4" id="txtMaxPage" style="display:none;" />

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C4493BE5" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAL8rMaRDALvvc5KAoW9wZcMAu6XvvQEBT6HT3cAVGyAfLnA8vgTq9PmWcY=" />
</div></form>

    <script language="javascript" type="text/javascript" >
    
    </script>


</body>
</html>