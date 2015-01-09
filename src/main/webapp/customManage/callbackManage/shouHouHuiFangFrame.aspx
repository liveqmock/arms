
<html>
    <title>售后回访</title>
    <script language="javascript" type="text/javascript">
     　
        //上一页
        function pageChange(sort) {
            var thisPage =0;
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
          document.getElementById("frmTianXie").src="ChuLiTianXie.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&cusGuid=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&strNum=0&huiFangId="+huiFangId+"&d="+new Date();
        }

        function lianXiRenFrameChange()
        {
           document.getElementById("FrameThird").src="../customInfo/LianXFrame.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&cusGuid=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&strNum=0&g=339ea881-7f9f-400b-a386-40e47e829167";
        }

    </script>

<frameset rows="145,185,*,50" cols="*" framespacing="0" frameborder="no" border="1">
  <frame src="../customInfo/LianXiRenInfo.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&cusGuid=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&strNum=0&g=339ea881-7f9f-400b-a386-40e47e829167" name="FrameTop" scrolling="No" id="FrameTop" noresize="noresize" title="FrameTop" />
  <frame src="../customInfo/LianXFrame.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&cusGuid=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&strNum=0&g=339ea881-7f9f-400b-a386-40e47e829167" name="FrameThird" id="FrameThird" scrolling="No" noresize="noresize" title="FrameThird" />
  <frame id="frmTianXie" src="ChuLiTianXie.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&cusGuid=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&strNum=0&g=339ea881-7f9f-400b-a386-40e47e829167" name="FrameTianXie"   noresize="noresize" id="FrameTianXie"  />
  <frame src="ShouHouHuiFangBottom.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&strNum=0&g=339ea881-7f9f-400b-a386-40e47e829167" name="FrameBottom"  noresize="noresize" id="FrameBottom" scrolling="No"/>
</frameset>
</html>