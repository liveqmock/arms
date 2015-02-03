
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1">
    <link href="../style/default/navigation.css" rel="stylesheet" type="text/css" />
    <title>
    导航图
</title>
     <script src="../js/frame/jquery.js" type="text/javascript"></script>
     <script src="../js/frame/interface.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#dock2").css("bottom", $(document).height() / 2);
            dock();
            $(".dock-item2").click(function () {
                $(".preview").hide();
                if ($("#dock2")[0].style.bottom != "20px") {
                    var objId = $(this)[0].id;
                    $("#dock2").animate({ bottom: "20px" }, 500, "linear", function () {

                        dock();

                        switch (objId) {
                            case "_pre_sales":
                                display_process("pre_sales");
                                break;
                            case "_vehicle":
                                display_process("vehicle");
                                break;
                            case "_sales":
                                display_process("sales");
                                break;
                            case "_sale":
                                display_process("sale");
                                break;
                            case "_accessories":
                                display_process("accessories");
                                break;
                        }
                    });
                }
                else {

                    switch ($(this)[0].id) {
                        case "_pre_sales":
                            display_process("pre_sales");
                            break;
                        case "_vehicle":
                            display_process("vehicle");
                            break;
                        case "_sales":
                            display_process("sales");
                            break;
                        case "_sale":
                            display_process("sale");
                            break;
                        case "_accessories":
                            display_process("accessories");
                            break;
                    }
                }
            });
        });

        function dock() {

            $('#dock2').Fisheye({
                maxWidth: 55,
                items: 'a',
                itemsText: 'span',
                container: '.dock-container2',
                itemWidth: 50,
                proximity: 50,
                alignment: 'left',
                valign: 'bottom',
                halign: 'center'
            });
        }

        function display_process(idName) {

            $("#" + idName).fadeIn("slow");
        }
        </script>

        <style type="text/css" >
        
        button
        {
            width:120px;
            height:100px;
            }
        </style>

    </head>
<body>
    <form name="form1" method="post" action="navigationPicture.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNzQ2MDg0MjI1D2QWAgIDD2QWKgIDDxYCHghkaXNhYmxlZGRkAgUPFgIfAAUIZGlzYWJsZWRkAgcPFgIfAAUIZGlzYWJsZWRkAgkPFgIfAAUIZGlzYWJsZWRkAgsPFgIfAAUIZGlzYWJsZWRkAg0PFgIfAAUIZGlzYWJsZWRkAg8PFgIfAGRkAhEPFgIfAGRkAhMPFgIfAAUIZGlzYWJsZWRkAhUPFgIfAGRkAhcPFgIfAAUIZGlzYWJsZWRkAhkPFgIfAAUIZGlzYWJsZWRkAhsPFgIfAGRkAh0PFgIfAGRkAh8PFgIfAGRkAiEPFgIfAGRkAiMPFgIfAGRkAiUPFgIfAGRkAicPFgIfAGRkAikPFgIfAGRkAisPFgIfAGRkZFCyRkN91yeYqljIdXRT1H4zoBdZ" />
</div>

<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="674C49FE" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAgKO4o3iBQLprcDWA9nXpWWAWCwrkdD5QS9dSl/rbjhF" />
</div>
    <input name="pathapp" type="hidden" id="pathapp" />
    <div class="dock" id="dock2">
      <div class="dock-container2">
          <a class="dock-item2" id="_sales" href="javascript:void(0);"><span>销售管理</span><img src="../style/navigation/2313.png" alt="销售管理" /></a>
          <a class="dock-item2" id="_sale" href="javascript:void(0);"><span>售后管理</span><img src="../style/navigation/xtsz.png" alt="售后管理" /></a>
          <a class="dock-item2" id="_accessories" href="javascript:void(0);"><span>配件管理</span><img src="../style/navigation/ck.png" alt="配件管理" /></a>
      </div>
    </div>.
    
        
        <div id="sales" class="preview">
            <table align="center" width="350px" height="350px">
                <caption><b>销售管理</b></caption>
                <tr>
                    <td align="center">
                        <button id="butC1" type="button" onclick="parent.mdfMenu('','定单管理','../SaleOrder_Manage/OrderManageList.aspx')">
                            <img alt="" width="64px" height="64px" src="../style/navigation/chcsye.gif" />
                            <div class="pre_title">定单管理</div>
                        </button>
                    </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butC2" type="button" onclick="parent.mdfMenu('','配车管理','../SaleOrder_Manage/OrderCustList.aspx')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/gh.gif" /><div
                            class="pre_title">
                            配车管理</div></button>
                    </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butC3" type="button" onclick="parent.mdfMenu('','开票查询','../FinancialManage/CarSaleJiDongCheFaPiaoList.aspx')" disabled="disabled">
                        <img alt="" width="64px" height="64px" src="../style/navigation/pzcx.gif" /><div
                            class="pre_title">
                            开票查询</div></button>
                    </td>
                </tr>
                <tr>
                    <td align="center"></td>
                    <td align="center"></td>
                    <td align="center"></td>
                    <td align="center"></td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/B.png" /></td>
                </tr>
                 <tr>
                     <td align="center">
                        <button id="butC4" type="button" onclick="parent.mdfMenu('','交车登记','../SaleOrder_Manage/OrderJiaoCheList.aspx')">
                         <img alt="" width="64px" height="64px" src="../style/navigation/png-0013.png" />
                         <div class="pre_title">交车登记</div></button>
                     </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/C.png" /></td>
                     <td align="center">
                        <button id="butC5" type="button" onclick="parent.mdfMenu('','保险登记','../SaleOrder_Manage/OrderBaoXianDengJiList.aspx')" disabled="disabled">
                         <img alt="" width="64px" height="64px" src="../style/navigation/pzlr.gif" />
                         <div class="pre_title">保险登记</div></button>
                     </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/C.png" /></td>
                     <td align="center">
                        <button id="butC6" type="button" onclick="parent.mdfMenu('','牌证管理','../SaleOrder_Manage/OrderCarRegList.aspx')" disabled="disabled">
                         <img alt="" width="64px" height="64px" src="../style/navigation/png-0333.png" />
                         <div class="pre_title">牌证管理</div></button>
                     </td>
                </tr>
            </table>
        </div>
        
        <div id="sale" class="preview">
            <table align="center" width="500px" height="300px">
                <caption><b>售后管理</b></caption>
                <tr>
                    <td align="center">
                    <button id="butD1" type="button" onclick="parent.mdfMenu('','维修接待','../saleAfterManage/saleAfterCustomSearch.action')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/png-0333.png" />
                        <div class="pre_title">维修接待</div></button>
                    </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butD2" type="button" onclick="parent.mdfMenu('','工单制作','../saleAfterManage/saleAfterGongDanManage.action')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/png-0357.png" />
                        <div class="pre_title">工单制作</div></button>
                    </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butD3" type="button" onclick="parent.mdfMenu('','维修派工','../saleAfterManage/saleAfterGongDanManage.action?tabId=3')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/xtsz.png" />
                        <div class="pre_title">维修派工</div></button>
                    </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butD4" type="button" onclick="parent.mdfMenu('','交车管理','../saleAfterManage/saleAfterGongDanManage.action?tabId=6')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/png-0013.png" />
                        <div class="pre_title">交车管理</div></button>
                    </td>
                </tr>
            </table>
        </div>
        
        <div id="accessories" class="preview">
            <table align="center" width="350px" height="350px" cellpadding="0" cellspacing="0">
                <caption><b>配件管理</b></caption>
                <tr>
                    <td align="center"></td>
                    <td align="center"></td>
                    <td align="center">
                    <button id="butE1" type="button" onclick="parent.mdfMenu('','例外管理','../storeOtherManage/storeOtherExceptionManage.aspx')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/zz.gif" />
                        <div class="pre_title">例外管理</div></button>
                    </td>
                    <td align="center"></td>
                    <td align="center"></td>
                </tr>
                <tr>
                    <td align="center"></td>
                    <td align="center">&nbsp;</td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/A.png" /></td>
                    <td align="center">&nbsp;</td>
                    <td align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                    <button id="butE2" type="button" onclick="parent.mdfMenu('','配件入库','../storeOtherManage/storeOtherInsertBillManage.aspx')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/qtrk.gif" />
                        <div class="pre_title">配件入库</div></button>
                    </td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butE3" type="button" onclick="parent.mdfMenu('','库存管理','../storeOtherManage/storeOtherReportJiShiKuCun.aspx')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/gdzckplr.png" />
                        <div class="pre_title">库存管理</div></button>
                    </td> 
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/D.png" /></td>
                    <td align="center">
                    <button id="butE4" type="button" onclick="parent.mdfMenu('','销售出库','../storeOtherManage/storeOtherSaleManage.aspx')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/cgrk.gif" />
                        <div class="pre_title">销售出库</div></button>
                    </td>
                </tr>
                 <tr>
                    <td align="center">&nbsp;</td>
                    <td align="center">&nbsp;</td>
                    <td align="center"><img alt="" width="32px" height="32px" src="../style/navigation/B.png" /></td>
                    <td align="center">&nbsp;</td>
                    <td align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">&nbsp;</td>
                    <td align="center">&nbsp;</td>
                    <td align="center">
                    <button id="butE5" type="button" onclick="parent.mdfMenu('','维修出库','../saleAfterManage/saleAfter_WeiXiuWuLiaoManage.aspx')">
                        <img alt="" width="64px" height="64px" src="../style/navigation/png-0090.png" />
                        <div class="pre_title">维修出库</div></button>
                    </td>
                    <td align="center">&nbsp;</td>
                    <td align="center">&nbsp;</td>
                </tr>
            </table>
        
        </div>       
        
    </form>
</body>
</html>