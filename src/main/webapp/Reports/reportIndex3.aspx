<html>
<head id="Head1"><title>
	报表导航第二版
</title>
    <script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script>
    <style type="text/css" >
    
     .c1
     {
     	background-color:#eaf2f7;border-bottom:#cccccc 1px solid;padding-left:10px;color:#308ac4;font-weight:bold;
     	height:35px;
     	}
     
     .c2
     {
     	padding-top:10px;
     	padding-left:28px;
     	padding-bottom:8px;
     	font-size:12px;
     	height:25px;
        border-bottom:#e7e7e7 1px dotted;
        cursor:hand;
        }
        
     	.c2b
     	{ 
     	background-image:url("HRcheckbox1.png");
     	background-position:5 -36;
     	background-repeat:no-repeat; 
     	width:25px;
     	height:20px;
     	float:left;
     	display:block;
        
        }
        
        .c2none
     	{ 
     	background-image:url("HRcheckbox1.png");
     	background-position:5 0;
     	background-repeat:no-repeat; 
     	width:25px;
     	height:20px;
     	float:left;
     	display:block;
        
        }
        
        body{
        margin:0 0 0 5;
        }
    </style>

    <script language="javascript" type="text/javascript" >

        function mover(id) {
            $("#" + id).css("background-position", "5 0");
        }

        function mout(id) {
            $("#" + id).css("background-position", "5 -36");
        }

        //根据权限显示
        function show(roleId, roleName) {
            parent.mdfMenu("cc1234567878", roleName, "../Reports/CommonReport.aspx?type=" + roleId);
        }

        //根据Url
        function showUrl(roleName, roleUrl) {
            parent.mdfMenu("cc1234567878", roleName, roleUrl);
        }

    </script>
</head>
<body>
    <form name="form1" method="post" action="reportIndex3.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTQwMTg3NDYyMGRkQuqRnVnhT9DCjkCjFYf7PNFxcEw=" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="27940F64" />
</div>
    <div >
       <table border="0" cellpadding="0" cellspacing="0" style="width:98%;" >
          <tr style="display:none;">
          <td colspan="3" class="c1" style="height:35px;">报表中心</td>
          </tr>
          <tr>
          <td colspan="3" style="height:10px;"></td>
          </tr>
          <tr>
           <td style="width:450px;vertical-align:top;" >
           <!--column 1 start-->
            <table border="0" cellpadding="0" cellspacing="0" style="width:420px;" >
             
             <!--售前报表-->
             <tr><td class=c1 style="width:98%"  colspan="2">售前报表</td></tr>
             <tr>
             <td class=c2 ><span    ><span id='ccadf26c-656e-4a5b-be34-9e0cc1128989'  class="c2none"></span>潜在客户来源</span></td>
             <td class=c2 ></td>
             </tr>
             <tr>
             <td class=c2 ></td>
             <td class=c2 ></td>
             </tr>
            <tr>
            <td colspan="2" style="height:65px;">
            <!--占位符-->
            </td>
            </tr>


             <!--配件报表-->
             <tr><td class=c1 style="width:98%"  colspan="2">配件报表</td></tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('a65ad068-d702-4581-9550-e29f3e0e9cf2') onmouseout=mout('a65ad068-d702-4581-9550-e29f3e0e9cf2')  onclick=showUrl('采购入退库报表','../Reports/storeOther/storeOtherInsertReport.aspx') ><span id='a65ad068-d702-4581-9550-e29f3e0e9cf2'  class="c2b"></span>采购入退库报表</span></td>
             <td class=c2 ><span onmouseover=mover('3dd23dce-f5b6-442c-b7e1-08322e99bd13') onmouseout=mout('3dd23dce-f5b6-442c-b7e1-08322e99bd13')  onclick=show('storeOtherChuKuTuiKuSea','配件出库报表') ><span id='3dd23dce-f5b6-442c-b7e1-08322e99bd13'  class="c2b"></span>配件出库报表</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('c5221301-4d40-4805-b311-f556a1b35aff') onmouseout=mout('c5221301-4d40-4805-b311-f556a1b35aff')  onclick=showUrl('上架指示清单','../Reports/storeOther/storeOtherShangJiaZhiShiQingDan.aspx') ><span id='c5221301-4d40-4805-b311-f556a1b35aff'  class="c2b"></span>上架指示清单</span></td>
             <td class=c2 ><span onmouseover=mover('c6a6211c-de30-4e99-9331-57581e1401c4') onmouseout=mout('c6a6211c-de30-4e99-9331-57581e1401c4')  onclick=showUrl('订货分析报表','../Reports/storeOther/storeOtherOrderFenXi.aspx') ><span id='c6a6211c-de30-4e99-9331-57581e1401c4'  class="c2b"></span>订货分析报表</span></td>
            </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('08b5c03b-2337-42fa-ba3d-662abde6152e') onmouseout=mout('08b5c03b-2337-42fa-ba3d-662abde6152e')  onclick=showUrl('维修出退库报表','../Reports/storeOther/storeOtherWeiXiuOut.aspx') ><span id='08b5c03b-2337-42fa-ba3d-662abde6152e'  class="c2b"></span>维修出退库报表</span></td>
             <td class=c2 ><span onmouseover=mover('624dff0d-3bda-442a-a128-9e001ae318f4') onmouseout=mout('624dff0d-3bda-442a-a128-9e001ae318f4')  onclick=showUrl('销售出库报表','../Reports/storeOther/storeOtherSaleOut.aspx') ><span id='624dff0d-3bda-442a-a128-9e001ae318f4'  class="c2b"></span>销售出库报表</span></td>
             </tr> 
             
             <tr>
             <td class=c2 ><span onmouseover=mover('fc40e682-9df3-4251-a5ac-97e41ce35412') onmouseout=mout('fc40e682-9df3-4251-a5ac-97e41ce35412')  onclick=showUrl('月度库存分析报告','../Reports/storeOther/storeOtherKuCunReportByMonth.aspx') ><span id='fc40e682-9df3-4251-a5ac-97e41ce35412'  class="c2b"></span>月度库存分析报告</span></td>
             <td class=c2 ><span onmouseover=mover('d797dcc8-320d-4932-ba08-c86223f156a6') onmouseout=mout('d797dcc8-320d-4932-ba08-c86223f156a6')  onclick=showUrl('配件流动分析表','../Reports/storeOther/storeOtherAccessoriesReport.aspx') ><span id='d797dcc8-320d-4932-ba08-c86223f156a6'  class="c2b"></span>配件流动分析表</span></td>
             </tr>
             <tr> 
             <td class=c2 ><span onmouseover=mover('77e54186-533b-4a5a-8999-a632a505ac47') onmouseout=mout('77e54186-533b-4a5a-8999-a632a505ac47')  onclick=showUrl('库存统计分析','../Reports/storeOther/storeOtherKuCunTongJiList.aspx') ><span id='77e54186-533b-4a5a-8999-a632a505ac47'  class="c2b"></span>库存统计分析</span></td>
              <td class=c2 ><span    ><span id='5e46696a-f04a-44aa-85a4-e75e25fbf43b'  class="c2none"></span>精品出退库报表</span></td>
            
             </tr>
         
             <!--系统管理-->
             <tr><td class=c1 style="width:98%"  colspan="2">系统管理</td></tr>
             <tr>
             <td class=c2 style="display:none;" ><span  class=c2b></span><span style="color:red;font-weight:bold;">角色菜单列表(暂无)</span></td>
             <td class=c2 style="display:none;" ><span  class=c2b></span><span style="color:red;font-weight:bold;">人员角色统计(暂无)</span></td>
             </tr>
               <tr>
                        <td class="c1" style="width: 98%" colspan="2">
                            客服报表
                        </td>
                    </tr>
                    <tr>
                        <td class="c2">
                            <span onmouseover=mover('62fa8c6e-fe48-4c4b-a9de-cbd0eca184e0') onmouseout=mout('62fa8c6e-fe48-4c4b-a9de-cbd0eca184e0')  onclick=showUrl('基盘客户报表','../Reports/CustomManage/JiPanCust.aspx') ><span id='62fa8c6e-fe48-4c4b-a9de-cbd0eca184e0'  class="c2b"></span>基盘客户报表</span>
                        </td>
                        <td class="c2">
                            <span onmouseover=mover('d03c7893-713e-4f3f-894f-3b77eeaf1753') onmouseout=mout('d03c7893-713e-4f3f-894f-3b77eeaf1753')  onclick=showUrl('流失客户报表','../Reports/CustomManage/CustLiuShi.aspx') ><span id='d03c7893-713e-4f3f-894f-3b77eeaf1753'  class="c2b"></span>流失客户报表</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="c2">
                            <span onmouseover=mover('87b2da59-1f13-427f-8cd1-31f2fa92a85d') onmouseout=mout('87b2da59-1f13-427f-8cd1-31f2fa92a85d')  onclick=showUrl('客户进店报表','../Reports/CustomManage/CustLiuShi.aspx') ><span id='87b2da59-1f13-427f-8cd1-31f2fa92a85d'  class="c2b"></span>客户进店报表</span>
                        </td>
                        <td class="c2">
                            <span onmouseover=mover('0763c65c-d608-4e7e-9147-c85da99fcea1') onmouseout=mout('0763c65c-d608-4e7e-9147-c85da99fcea1')  onclick=showUrl('有效客户报表','../Reports/CustomManage/custYouXiaoKeHu.aspx') ><span id='0763c65c-d608-4e7e-9147-c85da99fcea1'  class="c2b"></span>有效客户报表</span>
                        </td>
                    </tr>
                      <tr>
                        <td class="c2">
                            <span onmouseover=mover('1f0cab7d-08b2-4ece-9eb8-fdcd051b9b46') onmouseout=mout('1f0cab7d-08b2-4ece-9eb8-fdcd051b9b46')  onclick=showUrl('客户明细报表','../Reports/CustomManage/custBaoYang.aspx') ><span id='1f0cab7d-08b2-4ece-9eb8-fdcd051b9b46'  class="c2b"></span>客户明细报表</span>
                        </td>
                        <td class="c2">
                           <span onmouseover=mover('d5404284-642a-4858-a6fe-c1e40cb5c717') onmouseout=mout('d5404284-642a-4858-a6fe-c1e40cb5c717')  onclick=showUrl('客户新增报表','../Reports/CustomManage/custAddReports.aspx') ><span id='d5404284-642a-4858-a6fe-c1e40cb5c717'  class="c2b"></span>客户新增报表</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="c2">
                            <span onmouseover=mover('31a9fa71-5348-4eed-bdbd-8e4b9c946e99') onmouseout=mout('31a9fa71-5348-4eed-bdbd-8e4b9c946e99')  onclick=showUrl('客户维修台次统计','../Reports/CustomManage/customTaiCiTongJi.aspx') ><span id='31a9fa71-5348-4eed-bdbd-8e4b9c946e99'  class="c2b"></span>客户维修台次统计</span>
                        </td>
                        <td class="c2">
                        </td>
                    </tr>
            </table>
           <!--column 1 end-->          
          </td>
          <td valign="top">
           <!--column 2 start-->
           <table border="0" cellpadding="0" cellspacing="0" style="width:420px;" >
                <!--销售报表-->
             <tr><td class=c1 style="width:98%"  colspan="2">销售报表</td></tr>           
             <tr>
             <td class=c2 ><span    ><span id='79cdb251-4d69-4f2c-b0c5-e537c4a51a81'  class="c2none"></span>人员业绩报表</span></td>
             <td class=c2 ><span    ><span id='1da79385-5529-41ff-a3b5-d2f07a8f5f42'  class="c2none"></span>整车收款统计</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='0be207ab-b562-4943-ba95-ffb253d20e18'  class="c2none"></span>原厂精品统计</span></td>
           <td class=c2 ><span    ><span id='30b3947f-8d1d-427d-8b02-f895c139a73e'  class="c2none"></span>定单进程分析</span></td>
             </tr>
             <tr>
               <td class=c2 ><span onmouseover=mover('39e8eb13-236e-4fce-a024-003843991a34') onmouseout=mout('39e8eb13-236e-4fce-a024-003843991a34')  onclick=showUrl('单车精品成本','../Reports/saleOrder/SaleOrderDanCheJPChengBen.aspx') ><span id='39e8eb13-236e-4fce-a024-003843991a34'  class="c2b"></span>单车精品成本</span></td>
              <td class=c2 ><span    ><span id='8f376e7f-18f0-49e8-b5c5-cac114e3a2a9'  class="c2none"></span>置换购车分析</span></td>
           
             
             </tr>
             <tr>
               <td class=c2 ><span    ><span id='232920f6-cf1b-450b-a2c6-8b245b1001d4'  class="c2none"></span>购车按揭分析</span></td>
                    <td class=c2 ><span    ><span id='87db864e-7841-4a89-a3c7-56ccf0c84395'  class="c2none"></span>定单评审记录</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='5a7470ce-d1a4-4a2c-b957-19878fa6db78'  class="c2none"></span>销售车型颜色分析</span></td>
             <td class=c2 ><span    ><span id='d113c620-d677-4bea-8413-48db84277776'  class="c2none"></span>新车库存周期</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='3f67d495-c239-47bc-94a7-127aea40e56d'  class="c2none"></span>购车性质分析</span></td>
             <td class=c2 ><span    ><span id='d5adbbe7-627f-4604-862f-3f5dd0727fe7'  class="c2none"></span>客户职业分析</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='f9bf0641-f4fb-46a6-8b28-6b60b60b9149'  class="c2none"></span>客户职业分析</span></td>
             <td class=c2 ><span    ><span id='6ed6c292-588c-4186-aae5-e11227f1ccac'  class="c2none"></span>回款周期分析</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('6daf21df-0445-457f-963d-11ce3923966e') onmouseout=mout('6daf21df-0445-457f-963d-11ce3923966e')  onclick=show('saleDingDanLieBiaoTongJi','定单列表分析') ><span id='6daf21df-0445-457f-963d-11ce3923966e'  class="c2b"></span>定单列表分析</span></td>
             <td class=c2 ><span onmouseover=mover('c66eb48f-3995-4b01-ad68-d45aec1634db') onmouseout=mout('c66eb48f-3995-4b01-ad68-d45aec1634db')  onclick=show('saleJiaoCheTongJiFenXi','交车统计分析') ><span id='c66eb48f-3995-4b01-ad68-d45aec1634db'  class="c2b"></span>交车统计分析</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='b85691ea-c4ff-4afe-aa59-edce8adc3073'  class="c2none"></span>车辆库存盘点</span></td>
             <td class=c2 ></td>
             </tr>
              
             <!--售后报表-->
             <tr><td class=c1 style="width:98%"  colspan="2">售后报表</td></tr>
             <tr>
             <td class=c2 ><span    ><span id='d9cf032f-10a4-49cc-9c60-a77a33b5093f'  class="c2none"></span>预约保养分析</span></td>
             <td class=c2 ><span    ><span id='8cff21b7-d0b0-4fd4-bae4-3e4ff118405a'  class="c2none"></span>有偿保养分析</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='c443b433-d2b3-4567-9fcc-35a9ac792429'  class="c2none"></span>单车产值分析</span></td>
             <td class=c2 ><span onmouseover=mover('4bc5cde7-89af-436f-9d9a-3f3bbaf7bf80') onmouseout=mout('4bc5cde7-89af-436f-9d9a-3f3bbaf7bf80')  onclick=showUrl('维修折扣分析','../Reports/saleAfter/saleAfterWeiXiuZheKouSea.aspx') ><span id='4bc5cde7-89af-436f-9d9a-3f3bbaf7bf80'  class="c2b"></span>维修折扣分析</span></td>
             </tr>
             <tr>
            <td class=c2 ><span onmouseover=mover('851c66de-fa48-459e-9edb-18f6ddaa845c') onmouseout=mout('851c66de-fa48-459e-9edb-18f6ddaa845c')  onclick=showUrl('班组工时统计','../Reports/saleAfter/saleAfterWeiXiuBanZhuGongShi.aspx') ><span id='851c66de-fa48-459e-9edb-18f6ddaa845c'  class="c2b"></span>班组工时统计</span></td>
             <td class=c2 ><span onmouseover=mover('bb38acd9-6cd1-4d2f-879e-de0b124841af') onmouseout=mout('bb38acd9-6cd1-4d2f-879e-de0b124841af')  onclick=showUrl('当日交车统计','../Reports/saleAfter/saleAfterDangRiJiaoCheTongJi.aspx') ><span id='bb38acd9-6cd1-4d2f-879e-de0b124841af'  class="c2b"></span>当日交车统计</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('1e557920-ad9f-4c7d-bad7-4850248ef795') onmouseout=mout('1e557920-ad9f-4c7d-bad7-4850248ef795')  onclick=show('saleAfterWeiXiuGongDanList','维修工单列表') ><span id='1e557920-ad9f-4c7d-bad7-4850248ef795'  class="c2b"></span>维修工单列表</span></td>
             <td class=c2 ><span onmouseover=mover('1947ce6f-7fb7-4f38-8a75-07207a1aa21f') onmouseout=mout('1947ce6f-7fb7-4f38-8a75-07207a1aa21f')  onclick=showUrl('工单费用列表','../Reports/saleAfter/saleAfterWeiXiuGongDanListShow.aspx') ><span id='1947ce6f-7fb7-4f38-8a75-07207a1aa21f'  class="c2b"></span>工单费用列表</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('5100eaa1-504a-41c4-bc7c-7e53ed00ddd2') onmouseout=mout('5100eaa1-504a-41c4-bc7c-7e53ed00ddd2')  onclick=showUrl('维修工时统计','../Reports/saleAfter/saleAfterWeiXiuGongShiTongJi.aspx') ><span id='5100eaa1-504a-41c4-bc7c-7e53ed00ddd2'  class="c2b"></span>维修工时统计</span></td>
             <td class=c2 ><span onmouseover=mover('75038082-e618-4434-b2d2-7dfae44b1b74') onmouseout=mout('75038082-e618-4434-b2d2-7dfae44b1b74')  onclick=showUrl('厂家保修月报','../Reports/saleAfter/saleAfterChangJiaBaoXiuReport.aspx') ><span id='75038082-e618-4434-b2d2-7dfae44b1b74'  class="c2b"></span>厂家保修月报</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('116d6836-a7e9-43aa-9a37-a275ebdd603a') onmouseout=mout('116d6836-a7e9-43aa-9a37-a275ebdd603a')  onclick=showUrl('大客户维修月报','../Reports/saleAfter/saleAfterDaKeHuReport.aspx') ><span id='116d6836-a7e9-43aa-9a37-a275ebdd603a'  class="c2b"></span>大客户维修月报</span></td>
             <td class=c2 ><span onmouseover=mover('18d03cf1-d846-460c-aa90-b7b39850fd70') onmouseout=mout('18d03cf1-d846-460c-aa90-b7b39850fd70')  onclick=showUrl('维修项目下载','../Reports/saleAfter/saleAfterWeiXiuXiangMuSea.aspx') ><span id='18d03cf1-d846-460c-aa90-b7b39850fd70'  class="c2b"></span>维修项目下载</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('17aaf819-f162-41fa-9248-0ddb65e85756') onmouseout=mout('17aaf819-f162-41fa-9248-0ddb65e85756')  onclick=showUrl('服务顾问业绩','../Reports/saleAfter/saleAfterFuWuGuWenInfoSea.aspx') ><span id='17aaf819-f162-41fa-9248-0ddb65e85756'  class="c2b"></span>服务顾问业绩</span></td>
             <td class=c2 ><span onmouseover=mover('02083369-4d50-42e8-9bbd-c3c77825ea06') onmouseout=mout('02083369-4d50-42e8-9bbd-c3c77825ea06')  onclick=showUrl('维修配件折扣表','../Reports/saleAfter/saleAfterWeiXiuWuLiaoZheKouSea.aspx') ><span id='02083369-4d50-42e8-9bbd-c3c77825ea06'  class="c2b"></span>维修配件折扣表</span></td>
             
             </tr>
      
             </table>
           <!--column 2 end-->          
          </td>
          <td valign="top">
           <!--column 3 start-->
            <table border="0" cellpadding="0" cellspacing="0" style="width:420px;" >
             
              <!--客服报表-->
             <tr><td class=c1 style="width:98%"  colspan="2">客服报表</td></tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('e839d6f2-24d3-4a21-8d65-cbe013f6b240') onmouseout=mout('e839d6f2-24d3-4a21-8d65-cbe013f6b240')  onclick=show('customSaleAfterHuiFangReport','客户回访报表') ><span id='e839d6f2-24d3-4a21-8d65-cbe013f6b240'  class="c2b"></span>客户回访报表</span></td>
             <td class=c2 ><span onmouseover=mover('e4b2a223-eacd-4c00-8ff3-57fcff4d46b4') onmouseout=mout('e4b2a223-eacd-4c00-8ff3-57fcff4d46b4')  onclick=show('customSaleAfterYuYueReport','预约管理报表') ><span id='e4b2a223-eacd-4c00-8ff3-57fcff4d46b4'  class="c2b"></span>预约管理报表</span></td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('c7b729fd-94a9-45f1-a268-626611de2072') onmouseout=mout('c7b729fd-94a9-45f1-a268-626611de2072')  onclick=showUrl('定保招揽报表','../Reports/CustomManage/CustomDingBaoZhaoLan.aspx') ><span id='c7b729fd-94a9-45f1-a268-626611de2072'  class="c2b"></span>定保招揽报表</span></td>
             <td class=c2 ></td>
             </tr>
            <td colspan="2" style="height:65px;">
            <!--占位符-->
            </td>
            </tr>


            
             <!--财务报表-->
             <tr><td class=c1 style="width:98%"  colspan="2">财务报表</td></tr>
             <tr>
              <td class=c2 ><span onmouseover=mover('23164e3e-602b-4a4b-b567-28df4fe4a013') onmouseout=mout('23164e3e-602b-4a4b-b567-28df4fe4a013')  onclick=showUrl('销售财务报表','../Reports/Financial/SaleOrderCaiWuReport.aspx') ><span id='23164e3e-602b-4a4b-b567-28df4fe4a013'  class="c2b"></span>销售财务报表</span></td>
             <td class=c2 ><span onmouseover=mover('3a42ecbb-e69d-4365-850a-48c709be1341') onmouseout=mout('3a42ecbb-e69d-4365-850a-48c709be1341')  onclick=showUrl('销售会计报表','../Reports/Financial/SaleCaiWuKuaiJiReport.aspx') ><span id='3a42ecbb-e69d-4365-850a-48c709be1341'  class="c2b"></span>销售会计报表</span></td>
             </tr>
             <tr>
             <td class=c2 >          
             <span onmouseover=mover('76b9bac9-5572-4fe6-b1cb-10d6ceb66f11') onmouseout=mout('76b9bac9-5572-4fe6-b1cb-10d6ceb66f11')  onclick=showUrl('服务财务报表','../Reports/Financial/saleAfterWeiXiuFuWuCaiWu.aspx') ><span id='76b9bac9-5572-4fe6-b1cb-10d6ceb66f11'  class="c2b"></span>服务财务报表</span>
             </td>
              <td class=c2 ><span onmouseover=mover('c743d421-e928-45d4-9369-220e30186d5e') onmouseout=mout('c743d421-e928-45d4-9369-220e30186d5e')  onclick=showUrl('维修利润报表','../Reports/Financial/saleAfterWeiXiuLiRunDetail.aspx') ><span id='c743d421-e928-45d4-9369-220e30186d5e'  class="c2b"></span>维修利润报表</span>
             </td>
             </tr>
             <tr>
             <td class=c2 ><span onmouseover=mover('8bf48549-362a-4e53-baa6-c638c6384f33') onmouseout=mout('8bf48549-362a-4e53-baa6-c638c6384f33')  onclick=showUrl('售后产值利润报表','../Reports/Financial/saleAfterWeiXiuLiRunByDay.aspx') ><span id='8bf48549-362a-4e53-baa6-c638c6384f33'  class="c2b"></span>售后产值利润报表</span></td>
             <td class=c2 ><span onmouseover=mover('d9a0f8cf-ee03-4a81-bf0e-147012d69646') onmouseout=mout('d9a0f8cf-ee03-4a81-bf0e-147012d69646')  onclick=showUrl('维修日汇总','../Reports/Financial/SaleAfterWeiXiuRiHuiZong.aspx') ><span id='d9a0f8cf-ee03-4a81-bf0e-147012d69646'  class="c2b"></span>维修日汇总</span></td>
             </tr>
             <tr>
             <td class=c2 ><span    ><span id='1188dcec-8ee8-4037-a8c7-81f3b7e2d2e8'  class="c2none"></span>收款管理</span></td>
             <td class="c2"></td>
             </tr>
              <tr>
              <td colspan="2" style="height:65px;">
            <!--占位符-->
            </td>
             </tr>

         


            </table>      
           <!--column 3 end-->          
          </td>
          </tr>


       </table>

    </div>
    </form>
</body>
</html>