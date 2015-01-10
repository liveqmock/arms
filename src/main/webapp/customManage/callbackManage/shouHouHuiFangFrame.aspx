
<html>
    <title>售后回访</title>
    <script language="javascript" type="text/javascript">
     　
        //上一页
        function pageChange(sort) {
            var thisPage =1;
            if(sort ==-1)
            {
            thisPage =thisPage-1;
            }else
            {
             thisPage =thisPage+1;
            }
             var t = opener.billShowChange(thisPage);
            
        }



        function showLianXiInfo(huiFangId)
        { 
          document.getElementById("frmTianXie").src="ChuLiTianXie.aspx?vehicleId=e5334cf9-689c-4dbc-a038-16ba2677f95a&saleAfterGuid=5ed15866-0a40-4fff-ac4b-a28bf3f01bd8&cusGuid=e5334cf9-689c-4dbc-a038-16ba2677f95a&strNum=1&huiFangId="+huiFangId+"&d="+new Date();
        }

        function lianXiRenFrameChange()
        {
           document.getElementById("FrameThird").src="../customInfo/LianXFrame.aspx?vehicleId=e5334cf9-689c-4dbc-a038-16ba2677f95a&saleAfterGuid=5ed15866-0a40-4fff-ac4b-a28bf3f01bd8&cusGuid=e5334cf9-689c-4dbc-a038-16ba2677f95a&strNum=1&g=b76fc132-c3f4-4ee9-a59e-4b9fc45b7adf";
        }

    </script>

<frameset rows="145,185,*,50" cols="*" framespacing="0" frameborder="no" border="1">
  <frame src="../customInfo/LianXiRenInfo.aspx?vehicleId=e5334cf9-689c-4dbc-a038-16ba2677f95a&saleAfterGuid=5ed15866-0a40-4fff-ac4b-a28bf3f01bd8&cusGuid=e5334cf9-689c-4dbc-a038-16ba2677f95a&strNum=1&g=b76fc132-c3f4-4ee9-a59e-4b9fc45b7adf" name="FrameTop" scrolling="No" id="FrameTop" noresize="noresize" title="FrameTop" />
  <frame src="../customInfo/LianXFrame.aspx?vehicleId=e5334cf9-689c-4dbc-a038-16ba2677f95a&saleAfterGuid=5ed15866-0a40-4fff-ac4b-a28bf3f01bd8&cusGuid=e5334cf9-689c-4dbc-a038-16ba2677f95a&strNum=1&g=b76fc132-c3f4-4ee9-a59e-4b9fc45b7adf" name="FrameThird" id="FrameThird" scrolling="No" noresize="noresize" title="FrameThird" />
  <frame id="frmTianXie" src="ChuLiTianXie.aspx?vehicleId=e5334cf9-689c-4dbc-a038-16ba2677f95a&saleAfterGuid=5ed15866-0a40-4fff-ac4b-a28bf3f01bd8&cusGuid=e5334cf9-689c-4dbc-a038-16ba2677f95a&strNum=1&g=b76fc132-c3f4-4ee9-a59e-4b9fc45b7adf" name="FrameTianXie"   noresize="noresize" id="FrameTianXie"  />
  <frame src="ShouHouHuiFangBottom.aspx?vehicleId=e5334cf9-689c-4dbc-a038-16ba2677f95a&strNum=1&g=b76fc132-c3f4-4ee9-a59e-4b9fc45b7adf" name="FrameBottom"  noresize="noresize" id="FrameBottom" scrolling="No"/>
</frameset>
</html>