<html>
<head1>
    <title></title>

    <style type="text/css" >
       body
        {
            margin-top: 2px;
            margin-left: 5px;
            margin-bottom: 2px;
            background-color: #F9F8F5;
        }
        input
        {
        	font-size:12px;
        	}
    </style>

    <script language="javascript" type="text/javascript" >

        function pageShow(sort) {
        if(sort == -1)
        {
            parent.pageChange(-1);       
        }else{
            parent.pageChange(1);
        }
        }
    
    </script>

</head1>
<body>
    <form name="form1" method="post" action="ShouHouHuiFangBottom.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&amp;strNum=0&amp;g=339ea881-7f9f-400b-a386-40e47e829167" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE5NjY3NTc1OTJkZHhv5OWqj3a8RolleHxmZSpSH2Nj" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="62B35E38" />
</div>
      <table style="width:100%; height:28"  border="0">
        <tr>
            <td>
                <div align="center">
                    <input type="button" accesskey="P" name="btnUp" value="上一条"  style="border:0px;cursor:hand;"  onclick="pageShow(-1)"  />
                </div>
            </td>
            <td>
                <div align="center">
                    <input type="button" accesskey="N" name="btnDown" value="下一条"  style="border:0px;cursor:hand;"  onclick="pageShow(1)"    />
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>