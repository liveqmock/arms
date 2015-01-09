<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">
    var Dialog;
    //加载订单列表数据
    var jsonStrData1 = {"total":134,"rows":[{"rowNum":"1","Order_Guid":"bb48b67f-fabd-44b6-92ea-5e424a1c79b4","销售订单":"XSD201501051","订单日期":"2015/01/09","销售员":"刘剑","销售部门":"九江丰田三拓展","销售渠道":"网点","子销售渠道":"瑞昌","订单状态":"80","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"","流程状态":"2","客户名称":"曹红玲","客户性别":"女","客户电话":"15179208628","客户移动电话":"15179208628","客户地址":"瑞昌市码头镇石油化工公司乙区","经办人":"曹红玲(潘英龙转)","经办人性别":"女","经办人电话":"15179208628","经办人移动电话":"15179208628","订单总额":"217800.00","车身价格":"217800.00","购置税":"0.00","精品":"0.00","原厂精品":"0.00","铁牌费":"0.00","商业险":"0.00","交强险":"0.00","车船税":"0.00","其他1":"0.00","其他2":"0.00","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"国产RAV4","车型":"2.5L精英版","车牌":"一汽丰田","车型编号":"R5A1/GC1","车辆SFX":"R5A1/GC1","车辆颜色":"铂青铜","车架号":"LFMJ34AF8E3047365","AllResult":"134"},{"rowNum":"2","Order_Guid":"de8e81b7-f158-4736-a6ea-c9270bc3509e","销售订单":"XSD201501050-1","订单日期":"2015/01/08","销售员":"刘剑","销售部门":"九江丰田三拓展","销售渠道":"网点","子销售渠道":"湖口","订单状态":"90","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"丰田金融政策9000，手续费含1000手续费和500车价，","流程状态":"2","客户名称":"徐俊","客户性别":"男","客户电话":"18720286462","客户移动电话":"18720286462","客户地址":"湖口县文桥乡坝桥村八组010号","经办人":"徐俊","经办人性别":"男","经办人电话":"18720286462","经办人移动电话":"18720286462","订单总额":"89139.52","车身价格":"74300.00","购置税":"6350.00","精品":"0.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"4522.00","交强险":"950.00","车船税":"300.00","其他1":"317.52","其他2":"400.00","特别规格费":"0.00","按揭手续费":"1500.00","延保费":"0.00","车系":"新威驰","车型":"1.3型尚版","车牌":"一汽丰田","车型编号":"W3A2/W3AB","车辆SFX":"W3A2/W3AB","车辆颜色":"紫色","车架号":"LFMA7E2A4E0052433","AllResult":"134"},{"rowNum":"3","Order_Guid":"6444d33d-e6bd-4d79-8e5f-3da7d4b00e06","销售订单":"XSD201501049","订单日期":"2015/01/08","销售员":"余思思","销售部门":"九江丰田一科","销售渠道":"展厅","子销售渠道":"其他","订单状态":"40","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"","流程状态":"2","客户名称":"黄海关","客户性别":"男","客户电话":"8502222","客户移动电话":"18870230036","客户地址":"江西省九江市浔阳区","经办人":"黄海关","经办人性别":"男","经办人电话":"8502222","经办人移动电话":"18870230036","订单总额":"128021.15","车身价格":"118800.00","购置税":"0.00","精品":"3025.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"0.00","交强险":"950.00","车船税":"300.00","其他1":"546.15","其他2":"400.00","特别规格费":"0.00","按揭手续费":"3500.00","延保费":"0.00","车系":"新卡罗拉","车型":"1.6 GL-I","车牌":"一汽丰田","车型编号":"K6V3/K6VC","车辆SFX":"K6V3/K6VC","车辆颜色":"白色","车架号":"","AllResult":"134"},{"rowNum":"4","Order_Guid":"d8832ddb-9443-40c4-a1a9-0334fc8136a1","销售订单":"XSD201501048","订单日期":"2015/01/08","销售员":"袁烁","销售部门":"九江丰田一科","销售渠道":"展厅","子销售渠道":"其他","订单状态":"0    ","订单判断":"有效","购置类别":"","开票类别":"","备注":"","流程状态":"0","客户名称":"黄海关","客户性别":"男","客户电话":"","客户移动电话":"","客户地址":"江西省九江市浔阳区湖滨东区","经办人":"黄海关","经办人性别":"男","经办人电话":"8502222","经办人移动电话":"18870230036","订单总额":"128021.15","车身价格":"118800.00","购置税":"0.00","精品":"3025.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"0.00","交强险":"950.00","车船税":"300.00","其他1":"546.15","其他2":"400.00","特别规格费":"0.00","按揭手续费":"3500.00","延保费":"0.00","车系":"新卡罗拉","车型":"1.6 GL-I","车牌":"一汽丰田","车型编号":"K6V3/K6VC","车辆SFX":"K6V3/K6VC","车辆颜色":"白色","车架号":"","AllResult":"134"},{"rowNum":"5","Order_Guid":"d57650cc-5f16-4264-b462-0e1e0d2f5f9d","销售订单":"XSD201501047","订单日期":"2015/01/08","销售员":"余思思","销售部门":"九江丰田一科","销售渠道":"展厅","子销售渠道":"其他","订单状态":"40","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"","流程状态":"2","客户名称":"廖信光","客户性别":"男","客户电话":"8502222","客户移动电话":"15297924576","客户地址":"江西省南康市唐江镇流源村","经办人":"廖信光","经办人性别":"男","经办人电话":"8502222","经办人移动电话":"15297924576","订单总额":"109322.00","车身价格":"92000.00","购置税":"0.00","精品":"6500.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"4742.00","交强险":"950.00","车船税":"300.00","其他1":"430.00","其他2":"400.00","特别规格费":"0.00","按揭手续费":"3500.00","延保费":"0.00","车系":"新花冠","车型":"1.6豪华版","车牌":"一汽丰田","车型编号":"CAF1","车辆SFX":"CAF1","车辆颜色":"白色","车架号":"","AllResult":"134"},{"rowNum":"6","Order_Guid":"2ec0d87c-0c75-46fe-8672-17f2385df097","销售订单":"XSD201501046","订单日期":"2015/01/08","销售员":"陈龙志","销售部门":"九江丰田二科","销售渠道":"展厅","子销售渠道":"","订单状态":"0    ","订单判断":"有效","购置类别":"","开票类别":"","备注":"","流程状态":"0","客户名称":"钟媛","客户性别":"女","客户电话":"","客户移动电话":"","客户地址":"江西省九江市浔阳区滨江路911号5栋3单元702室","经办人":"钟媛","经办人性别":"女","经办人电话":"15179297730","经办人移动电话":"","订单总额":"130610.26","车身价格":"107000.00","购置税":"9145.00","精品":"3000.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"5358.00","交强险":"950.00","车船税":"300.00","其他1":"457.26","其他2":"400.00","特别规格费":"0.00","按揭手续费":"3500.00","延保费":"0.00","车系":"新卡罗拉","车型":"1.6 GL","车牌":"一汽丰田","车型编号":"K6V5/E","车辆SFX":"K6V5/E","车辆颜色":"白色","车架号":"","AllResult":"134"},{"rowNum":"7","Order_Guid":"b1e76d98-c94f-4941-b10d-3daa8c727d5d","销售订单":"XSD201501045","订单日期":"2015/01/08","销售员":"陈龙志","销售部门":"九江丰田二科","销售渠道":"展厅","子销售渠道":"","订单状态":"0    ","订单判断":"有效","购置类别":"","开票类别":"","备注":"","流程状态":"0","客户名称":"熊贻煌","客户性别":"男","客户电话":"","客户移动电话":"","客户地址":"江西省九江市武宁县横路乡港北村蛇坑05号","经办人":"熊贻煌","经办人性别":"男","经办人电话":"18315012987","经办人移动电话":"18315012987","订单总额":"130940.80","车身价格":"107800.00","购置税":"9213.00","精品":"5165.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"5358.00","交强险":"950.00","车船税":"300.00","其他1":"460.68","其他2":"1194.12","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"新卡罗拉","车型":"1.6 GL","车牌":"一汽丰田","车型编号":"K6V5/E","车辆SFX":"K6V5/E","车辆颜色":"黑色","车架号":"","AllResult":"134"},{"rowNum":"8","Order_Guid":"014e86b4-c0b7-4058-98e4-4f1bda9dad37","销售订单":"XSD201501044","订单日期":"2015/01/07","销售员":"陈龙志","销售部门":"九江丰田二科","销售渠道":"展厅","子销售渠道":"其他","订单状态":"110","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"1,客户在本公司办理牌照,保险.2,购置税,调节基金,保险以实际发票为准,多退少补.","流程状态":"2","客户名称":"彭禛","客户性别":"女","客户电话":"18279296658","客户移动电话":"18279296658","客户地址":"九江市庐山区十里大道1188号12栋4单元101室","经办人":"彭禛","经办人性别":"女","经办人电话":"18279296658","经办人移动电话":"18279296658","订单总额":"258043.84","车身价格":"200000.00","购置税":"17094.00","精品":"15114.00","原厂精品":"0.00","铁牌费":"700.00","商业险":"8048.89","交强险":"950.00","车船税":"360.00","其他1":"854.70","其他2":"14922.25","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"新国产RAV4","车型":"2.0L新锐版","车牌":"一汽丰田","车型编号":"GD2/FD2","车辆SFX":"GD2/FD2","车辆颜色":"珍珠白色","车架号":"LFMJ44AF8E3062557","AllResult":"134"},{"rowNum":"9","Order_Guid":"2812f6d2-0d59-4bb1-9dcc-6f7d83fc4141","销售订单":"XSD201501043","订单日期":"2015/01/07","销售员":"刘剑","销售部门":"九江丰田三拓展","销售渠道":"网点","子销售渠道":"修水","订单状态":"90","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"","流程状态":"2","客户名称":"冷五兵","客户性别":"男","客户电话":"13479890567","客户移动电话":"13479890567","客户地址":"修水县白岭镇白岭村二十二组","经办人":"冷五兵","经办人性别":"男","经办人电话":"13479890567","经办人移动电话":"13479890567","订单总额":"75800.00","车身价格":"75800.00","购置税":"0.00","精品":"0.00","原厂精品":"0.00","铁牌费":"0.00","商业险":"0.00","交强险":"0.00","车船税":"0.00","其他1":"0.00","其他2":"0.00","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"新威驰","车型":"1.3型尚版","车牌":"一汽丰田","车型编号":"W3A2/W3AB","车辆SFX":"W3A2/W3AB","车辆颜色":"白色","车架号":"LFMA7E2A1E0060862","AllResult":"134"},{"rowNum":"10","Order_Guid":"f198924d-f60d-4199-9d47-b0fe100cce19","销售订单":"XSD201501042","订单日期":"2015/01/07","销售员":"刘星辰","销售部门":"九江丰田一科","销售渠道":"展厅","子销售渠道":"","订单状态":"150","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"","流程状态":"2","客户名称":"车友财","客户性别":"男","客户电话":"13687925902","客户移动电话":"13687925902","客户地址":"江西省九江市武宁县","经办人":"车友财","经办人性别":"男","经办人电话":"13687925902","经办人移动电话":"13687925902","订单总额":"111000.01","车身价格":"96000.00","购置税":"8205.00","精品":"4500.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"0.00","交强险":"950.00","车船税":"300.00","其他1":"410.26","其他2":"134.75","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"新花冠","车型":"1.6卓越版","车牌":"一汽丰田","车型编号":"CAE1","车辆SFX":"CAE1","车辆颜色":"黑色","车架号":"LFMAP22CXE0677788","AllResult":"134"},{"rowNum":"11","Order_Guid":"41bbb405-35db-4455-9005-e429317732a7","销售订单":"XSD201501041","订单日期":"2015/01/06","销售员":"陈龙志","销售部门":"九江丰田二科","销售渠道":"展厅","子销售渠道":"","订单状态":"0    ","订单判断":"有效","购置类别":"","开票类别":"","备注":"","流程状态":"0","客户名称":"李细香","客户性别":"女","客户电话":"","客户移动电话":"","客户地址":"江西省吉安市永新镇龙源口镇半中村万泉组27号","经办人":"李细香","经办人性别":"女","经办人电话":"18179235426","经办人移动电话":"18179235426","订单总额":"152490.20","车身价格":"124300.00","购置税":"10623.00","精品":"6000.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"5386.00","交强险":"950.00","车船税":"300.00","其他1":"531.20","其他2":"400.00","特别规格费":"0.00","按揭手续费":"3500.00","延保费":"0.00","车系":"新卡罗拉","车型":"1.6 GL-I","车牌":"一汽丰田","车型编号":"K6V3/K6VC","车辆SFX":"K6V3/K6VC","车辆颜色":"白色","车架号":"","AllResult":"134"},{"rowNum":"12","Order_Guid":"a0d6922e-8f93-4d48-b7ba-8557af682968","销售订单":"XSD201501040","订单日期":"2015/01/06","销售员":"余睿洁","销售部门":"九江丰田二科","销售渠道":"展厅","子销售渠道":"","订单状态":"0    ","订单判断":"有效","购置类别":"","开票类别":"","备注":"","流程状态":"0","客户名称":"裴道洪","客户性别":"男","客户电话":"","客户移动电话":"","客户地址":"江西省九江市庐山区海会镇长岭村杨家榨16号","经办人":"裴道洪","经办人性别":"男","经办人电话":"13767208728","经办人移动电话":"","订单总额":"87883.33","车身价格":"73801.00","购置税":"6307.00","精品":"1200.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"4509.95","交强险":"950.00","车船税":"300.00","其他1":"315.38","其他2":"0.00","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"新威驰","车型":"1.5智臻版","车牌":"一汽丰田","车型编号":"W5M6/W5MB","车辆SFX":"W5M6/W5MB","车辆颜色":"白色","车架号":"","AllResult":"134"},{"rowNum":"13","Order_Guid":"c4e06e87-5c68-40cc-b06b-10e11fd74f7f","销售订单":"XSD201501039","订单日期":"2015/01/06","销售员":"刘剑","销售部门":"九江丰田三拓展","销售渠道":"网点","子销售渠道":"都昌","订单状态":"90","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"","流程状态":"2","客户名称":"潘英龙","客户性别":"男","客户电话":"15170274378","客户移动电话":"15170274378","客户地址":"九江市都昌县大港镇舟山村潘家","经办人":"潘英龙","经办人性别":"男","经办人电话":"15170274378","经办人移动电话":"15170274378","订单总额":"81067.48","车身价格":"67300.00","购置税":"5752.00","精品":"0.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"4077.87","交强险":"950.00","车船税":"300.00","其他1":"287.61","其他2":"400.00","特别规格费":"0.00","按揭手续费":"1500.00","延保费":"0.00","车系":"新威驰","车型":"1.3型尚版","车牌":"一汽丰田","车型编号":"W3N2/W3N4","车辆SFX":"W3N2/W3N4","车辆颜色":"白色","车架号":"LFMA7E2A1E0066368","AllResult":"134"},{"rowNum":"14","Order_Guid":"a5085914-b65d-452e-a7ee-32716b022b80","销售订单":"XSD201501038","订单日期":"2015/01/05","销售员":"熊超南","销售部门":"九江丰田二科","销售渠道":"展厅","子销售渠道":"其他","订单状态":"150","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"客户全款购车；在本公司办理上牌保险","流程状态":"2","客户名称":"陶星如","客户性别":"女","客户电话":"8502222","客户移动电话":"18720283467","客户地址":"江西省九江市浔阳区百岁坊一支巷4号2单元502室","经办人":"陶星如","经办人性别":"女","经办人电话":"8502222","经办人移动电话":"18720283467","订单总额":"258000.00","车身价格":"222300.00","购置税":"19000.00","精品":"6835.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"6605.00","交强险":"950.00","车船税":"660.00","其他1":"950.00","其他2":"200.00","特别规格费":"0.00","按揭手续费":"0.00","延保费":"0.00","车系":"新国产RAV4","车型":"2.5L精英版","车牌":"一汽丰田","车型编号":"FC3","车辆SFX":"FC3","车辆颜色":"珍珠白色","车架号":"LFMJ34AF7E3064478","AllResult":"134"},{"rowNum":"15","Order_Guid":"c025e1df-260b-4c4c-ad3d-6e551f850695","销售订单":"XSD201501037","订单日期":"2015/01/05","销售员":"袁烁","销售部门":"九江丰田一科","销售渠道":"DCC","子销售渠道":"","订单状态":"150","订单判断":"有效","购置类别":"新购","开票类别":"机动车统一发票","备注":"客户办理丰田金融5W免息贷款，因首付要求20%，精品费为7500元。其他一为调节基金，其他二为公证抵押费用，","流程状态":"2","客户名称":"郭祥","客户性别":"男","客户电话":"18079230763","客户移动电话":"18079230763","客户地址":"江西省九江市湖口县凰村乡西山村六组","经办人":"郭祥","经办人性别":"男","经办人电话":"18079230763","经办人移动电话":"18079230763","订单总额":"84822.32","车身价格":"62900.00","购置税":"5500.00","精品":"7500.00","原厂精品":"0.00","铁牌费":"500.00","商业险":"4497.32","交强险":"950.00","车船税":"300.00","其他1":"275.00","其他2":"400.00","特别规格费":"0.00","按揭手续费":"2000.00","延保费":"0.00","车系":"新威驰","车型":"1.3型尚版","车牌":"一汽丰田","车型编号":"W3N2/W3N4","车辆SFX":"W3N2/W3N4","车辆颜色":"红色","车架号":"LFMA7E2A8E0030287","AllResult":"134"}]};
  
    function Search() {
        $("#SearchDiv").hide();
        return true;
    }
    $(function () {
        $("#lnkbtnSearch,#lnkbtnExcel").click(function(){
         $('#dg').datagrid("loading");
        
        });
        $(document).keydown(function () {
            //
            if (event.keyCode == 13) {
                __doPostBack('lnkbtnSearch', '');
            $('#dg').datagrid("loading");
            }
        });

    });
    function getFocus() {
        if (Dialog != null) {
            if (!Dialog.closed) {

                Dialog.focus();

                 return;
            }

        }

    }
    function OpenOrderDetail(OrderGuid, readFlag) {
        var href = "../SaleOrder_Manage/OrderDetail.aspx?d=" + new Date() + "&&OrderGuid=" + OrderGuid;

        var SizeZ = "dialogWidth:960px;dialogHeight:680px;center:yes;edge:sunken;help:no;resizable:no;scroll:auto;status:no;";
        var isChrome = navigator.userAgent.toLowerCase().match(/chrome/) != null;
        if (isChrome) {

            var SizeOpen = 'height=680,width=960,center=yes,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no';

            if (Dialog != null) {
                if (!Dialog.closed) {

                    Dialog.focus();
                    return;
                }

            }
            Dialog = window.open(href, 'win', SizeOpen);

        } else {
            Dialog = window.showModalDialog(href, '', SizeZ);
        }

    }
    function pagerFilter(data) {
        if (typeof data.length == 'number' && typeof data.splice == 'function') {   // is array
            data = {
                total: data.length,
                rows: data
            }
        }
        var dg = $(this);
        var opts = dg.datagrid('options');
        var pager = dg.datagrid('getPager');
        pager.pagination({
            onSelectPage: function (pageNum, pageSize) {
                opts.pageNumber = pageNum;
                opts.pageSize = pageSize;
                pager.pagination('refresh', {
                    pageNumber: pageNum,
                    pageSize: pageSize
                });
                //alert("当前页:" + pageNum);
                $("#HidPageNum").val(pageNum);
                $("#HidPageSize").val(pageSize);

                //alert("页面尺寸:" + pageSize);

                __doPostBack('lnktmp', '');
                $('#dg').datagrid("loading");
                //  dg.datagrid('loadData', jsonStrData);
            }
        });
        if (!data.originalRows) {
            data.originalRows = (data.rows);
        }
        var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
        var end = start + parseInt(opts.pageSize);
        data.rows = (data.originalRows.slice(0, 100));
        return data;
    }
    function refleshWin() {
        if (Dialog) {
            if (!Dialog.closed) {
                Dialog.close();
                return false;

            }
        }

    }
    function comfirmRefresh() {
        if (Dialog) {
            if (!Dialog.closed) {
                var s = confirm("刷新前请确定订单是否需要保存，您继续刷新吗？");
                Dialog.focus();
                return s;
            }
            return true;
        }
        return true;
    }
</script>
<body onunload=" return comfirmRefresh()">
    <form name="form1" method="post" action="OrderManageList.aspx?d=20140707" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
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



    <div >
        <div class="title1">
            <table border="0" style="width: 100%;">
                <tr>
                    <td class="titlebg">
                        <span class="titleSpan">订单管理</span>
                    </td>
                    <td align="right">
                       <a id="lnkbtnSeishenhe" class="easyui-linkbutton" data-options="plain:true" href="javascript:__doPostBack('lnkbtnSeishenhe','')" style="font-size:8pt;">待提交审核<span style='color:red;'>238</span>单 </a>
                           <a id="lnkOnFlow" class="easyui-linkbutton" data-options="plain:true" href="javascript:__doPostBack('lnkOnFlow','')" style="font-size:8pt;">审核中<span style='color:red;'>0</span>单 </a>
                           <a id="lnkRebackFlow" class="easyui-linkbutton" data-options="plain:true" href="javascript:__doPostBack('lnkRebackFlow','')" style="font-size:8pt;">审核退回<span style='color:red;'>0</span>单 </a>
                            <a id="lnkDelFlow" class="easyui-linkbutton" data-options="plain:true" href="javascript:__doPostBack('lnkDelFlow','')" style="font-size:8pt;">流程删除<span style='color:red;'>10</span>单 </a>
                             <a id="LnkStopOrder" class="easyui-linkbutton" data-options="plain:true" href="javascript:__doPostBack('LnkStopOrder','')" style="font-size:8pt;">终止<span style='color:red;'>610</span>单 </a>
                    
                        <a onclick="return false;" id="lnkAdd" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-add'" href="javascript:__doPostBack('lnkAdd','')">添加</a>
                        
                           
                        
                    </td>
                </tr>
            </table>
        </div>
        <div >
           
                    <div id="SearchDiv1">
                <div>
                    <table>
                        <tr>
                            <td>
                                订单编号:
                            </td>
                            <td>
                                <input name="txtBillNO" type="text" maxlength="15" id="txtBillNO" style="width:110px;" />
                            </td>
                            <td>
                                客户名称:
                            </td>
                            <td>
                                <input name="txtCustName" type="text" maxlength="10" id="txtCustName" style="width:110px;" />
                            </td>
                            <td>
                                车主手机:
                            </td>
                            <td>
                                <input name="txtCustMobile" type="text" maxlength="11" id="txtCustMobile" style="width:110px;" />
                            </td>
                            <td>
                                联系手机:
                            </td>
                            <td>
                                <input name="txtJBRenMobile" type="text" maxlength="11" id="txtJBRenMobile" style="width:110px;" />
                            </td>
                            <td>
                                销售顾问:
                            </td>
                            <td>
                                <input name="txtSalor" type="text" maxlength="20" id="txtSalor" style="width:110px;" />
                            </td>
                            <td style="text-align: center;">
                                流程状态:
                            </td>
                            <td>
                                <select name="ddlFlowStatus" id="ddlFlowStatus" style="width:102px;">
    <option selected="selected" value="">-请选择-</option>
    <option value="0">待提交审核</option>
    <option value="1">审核中</option>
    <option value="2">审核完毕</option>
    <option value="3">审核已退回</option>
    <option value="4">流程已经删除</option>

</select>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                车系:
                            </td>
                            <td>
                                <div id="UpdatePanel1">
    
                                        <select name="ddlCheXi" onchange="javascript:setTimeout('__doPostBack(\'ddlCheXi\',\'\')', 0)" id="ddlCheXi" style="width:112px;height: 19px">
        <option selected="selected" value=""></option>
        <option value="大霸王">大霸王</option>
        <option value="丰田86">丰田86</option>
        <option value="国产RAV4">国产RAV4</option>
        <option value="海狮">海狮</option>
        <option value="花冠">花冠</option>
        <option value="皇冠">皇冠</option>
        <option value="进口霸道">进口霸道</option>
        <option value="卡罗拉">卡罗拉</option>
        <option value="柯斯达">柯斯达</option>
        <option value="兰德酷路泽">兰德酷路泽</option>
        <option value="兰德酷路泽4.0豪华版">兰德酷路泽4.0豪华版</option>
        <option value="普拉多">普拉多</option>
        <option value="普锐斯">普锐斯</option>
        <option value="锐志">锐志</option>
        <option value="威驰">威驰</option>
        <option value="新国产RAV4">新国产RAV4</option>
        <option value="新花冠">新花冠</option>
        <option value="新卡罗拉">新卡罗拉</option>
        <option value="新锐志">新锐志</option>
        <option value="新威驰">新威驰</option>
        <option value="中巴">中巴</option>

    </select>
                                    
</div>
                            </td>
                            <td style="text-align: right">
                                车型:
                            </td>
                            <td>
                                <div id="UpdatePanel2">
    
                                        <select name="ddlCheXing" onchange="javascript:setTimeout('__doPostBack(\'ddlCheXing\',\'\')', 0)" id="ddlCheXing" style="width:112px;">

    </select>
                                    
</div>
                            </td>
                            <td>
                                车型代码:
                            </td>
                            <td>
                                <div id="UpdatePanel3">
    
                                        <select name="ddlCheXingDaiMa" onchange="javascript:setTimeout('__doPostBack(\'ddlCheXingDaiMa\',\'\')', 0)" id="ddlCheXingDaiMa" style="width:112px;">

    </select>
                                    
</div>
                            </td>
                            <td style="text-align: right">
                                车牌号:
                            </td>
                            <td>
                                <input name="txtChePaiHao" type="text" maxlength="20" id="txtChePaiHao" style="width:110px;" />
                            </td>
                            <td style="text-align: right">
                                车架号:
                            </td>
                            <td>
                                <input name="txtVinCode" type="text" maxlength="20" id="txtVinCode" style="width:110px;" />
                            </td>
                            <td>
                                订单状态:
                            </td>
                            <td>
                                <select name="ddlOrderStatus" id="ddlOrderStatus" style="width:102px;">
    <option selected="selected" value="">--请选择--</option>
    <option value="0">定单保存</option>
    <option value="20">待交定金</option>
    <option value="40">等待配车</option>
    <option value="50">已经配车</option>
    <option value="60">挂账申请</option>
    <option value="70">挂账状态</option>
    <option value="80">已交完款</option>
    <option value="90">开票确认</option>
    <option value="100">保修登记</option>
    <option value="110">保险登记</option>
    <option value="120">购置税申报成功</option>
    <option value="130">财务确认出库</option>
    <option value="140">提车单完成</option>
    <option value="150">定单完成</option>
    <option value="160">配车删除</option>
    <option value="170">发票删除</option>

</select>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                SFX:
                            </td>
                            <td>
                                <div id="UpdatePanel4">
    
                                        <input name="txtSFX" type="text" maxlength="10" id="txtSFX" style="width:110px;" />
                                    
</div>
                            </td>
                            <td>
                                车身颜色:
                            </td>
                            <td>
                                <select name="ddlCarColor" id="ddlCarColor" style="width:112px;">
    <option value="紫色">紫色</option>
    <option value="棕色">棕色</option>
    <option value="白色">白色</option>
    <option value="银色">银色</option>
    <option value="黑色">黑色</option>
    <option value="红色">红色</option>
    <option value="蓝色">蓝色</option>
    <option value="绿色">绿色</option>
    <option value="珍珠白色">珍珠白色</option>
    <option value="橙色">橙色</option>
    <option value="灰色">灰色</option>
    <option value="铂青铜">铂青铜</option>
    <option selected="selected" value=""></option>

</select>
                            </td>
                            <td>
                                订单日期:
                            </td>
                            <td>
                                <input name="txtOrderDate" type="text" value="2014-12-10" id="txtOrderDate" class="easyui-datebox" style="width:112px;" />
                            </td>
                            <td style="text-align: center;">
                                至
                            </td>
                            <td>
                                <input name="txtOrderDateEnd" type="text" value="2015-01-09" maxlength="20" id="txtOrderDateEnd" class="easyui-datebox" style="width:112px;" />
                            </td>
                            <td>&nbsp;
                                
                            </td>
                            
                            <td style="text-align: right" colspan="3">
                                <a id="lnkbtnSearch" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-search'" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a>
                            
                                <a id="LinkButton1" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-reload'" href="javascript:__doPostBack('LinkButton1','')">刷新</a>
                              
                            
                                 <a id="lnkbtnExcel" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkbtnExcel','')">导出</a>
                  
                            </td>
                        </tr>
                    </table>
                </div>
          </div>

                     <input type="hidden" name="hiddFlowStatus" id="hiddFlowStatus" />
                    <a id="lnktmp" href="javascript:__doPostBack('lnktmp','')"></a>
                    <input type="hidden" name="HidPageNum" id="HidPageNum" value="1" />
                    <input type="hidden" name="HidPageSize" id="HidPageSize" value="15" />
                     <input type="hidden" name="HidAllCount" id="HidAllCount" value="134" />
           <table id="dg" class="easyui-datagrid" toolbar="#SearchDiv1" data-options="
                rownumbers:true,
                singleSelect:true,
                autoRowHeight:false,
                frozenColumns:[[
                {field:'销售订单',title:'销售订单',width:100},
                {field:'订单日期',title:'订单日期',width:80},
                {field:'客户名称',title:'客户名称',width:100},
                {field:'流程状态',title:'流程状态',width:80,formatter:flowStatus},
                {field:'订单状态',title:'订单状态',width:80,formatter:SaleOrderStatus},
                {field:'订单判断',title:'订单判断',width:60}
                ]],
                columns:[[
              
             
                {field:'客户电话',title:'客户电话',width:100},
                {field:'客户移动电话',title:'客户移动电话',width:100},
                {field:'经办人',title:'经办人',width:100},
         
                {field:'经办人电话',title:'经办人电话',width:100},
                {field:'经办人移动电话',title:'经办人移动电话',width:100},
                {field:'车系',title:'车系',width:100},
                {field:'车型',title:'车型'},
                {field:'车牌',title:'厂牌',width:100},
                {field:'车辆SFX',title:'车辆SFX',width:100},
                {field:'车辆颜色',title:'车辆颜色',width:60},
                {field:'车架号',title:'车架号'},
                {field:'车身价格',title:'车身价格',width:100},
                 {field:'购置税',title:'购置税',width:100},
                 {field:'原厂精品',title:'原厂精品',width:100},
                {field:'精品',title:'精品',width:100},
                {field:'铁牌费',title:'铁牌费',width:100},
                {field:'订单总额',title:'订单总额',width:100},
                {field:'销售员',title:'销售员',width:100},
                {field:'销售部门',title:'销售部门',width:100},
                {field:'销售渠道',title:'销售渠道',width:80},
                {field:'子销售渠道',title:'子销售渠道',width:100},
               
               
                {field:'购置类别',title:'购置类别',width:80},
              
                {field:'备注',title:'备注',width:200}
               ]],
                pagination:true,
                idfield:'OrderGuid',
                 pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
                pageSize:15">
            </table>
        </div>
    </div>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="715D5779" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWVgK94fPoDAL17LWKBgLx4PipDgLDorv6CgLSoLm9CQLpp9yKDQLB2f+RAQK69PCNDgLxmfnCDQKm6szOCgL8u5DjDgLm+6ZxAv7zy+4IAu6c4YAEAvGc4YAEAvCc4YAEAvOc4YAEAvKc4YAEAq64kMYLAq64kMYLAvLHu8oLAvzI91QC1obczwQC542jvQYCocq4pwQCt7K7pwQCmci4hgoCgobWmQICi5qJ7w4C96qS5wcC38igvw4C9IrXFwLfxZTjDgKe/dzSCwKx2/v5DwKS1ou9DAL0n76CBALp2aTHCwLphJiwCALE4em1BQKtw8vFCwKt1bukCALWmLgUAqTGvQYC/L+xygcCpu6BzQMCtoGrow8CqIHroA8CqoHroA8CrYHroA8CrIHroA8Cr4HroA8CvoHroA8CsYHroA8Cj8CM9wgCj8CI9wgCj8CE9wgCj8CA9wgCj8D89AgCj8D49AgCj8D09AgCj8Dw9AgCrvvuigQC9pvEwQ4CmLDEwQ4CoIXEwQ4CucjHwQ4CnNTHwQ4CjZfEwQ4CgOjHwQ4CopTEwQ4Cn9yyoQwChM3EwQ4Co4HEwQ4Cn7HLzAEC846nvgoCs+6jvAcCsZ7sPQKU5vu4AwLM9PumDwLZkqmUDALvgKK/CALI2bPOCwKwppvzCAKjnqOWBQLv4OyqCjlqn6vMfztzAJhz1Nyj0ZmOW6+2" />
</div>


</form>
</body>
</html>
<script type="text/javascript">
    $(function () {
        initDataList();
        $("#lnkSearch").click(function () {
            $("#SearchDiv").show("slow");

        });
    });
    function initDataList() {

        var jsonStrData = jsonStrData1;
        if (jsonStrData == null || jsonStrData == "") {
            return;
        }
        $('#dg').datagrid({
            onDblClickRow: function (rowIndex, rowdata) {

                if (rowdata.Order_Guid != null) {

                    OpenOrderDetail(rowdata.Order_Guid, true);
                }
            },
            onClickRow:function (rowIndex, rowdata) {

                if (rowdata.Order_Guid != null) {

                    OpenOrderDetail(rowdata.Order_Guid, true);
                }
            }

        }).datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        $("#lnkAdd").click(function () {
            OpenOrderDetail("", true);
        });
     
        
    }
</script>