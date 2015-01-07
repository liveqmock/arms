//var jsonStrData = "";
/*
页面加载时运行
*/


$(function () {
    reSize(0);
});

$(window).resize(function () {
    reSize(1);
});


function reSize(flag) {
    var h = $(document.body).height() - 80;
    var w = $(document.body).width() - 50;

    if (h < 500) { h = 500; }
    if (w < 800) { w = 900; }

    $(".region").css("height", h); //设置主数据显示区域高度
    $(".region").css("width", w); //设置主数据显示区域高度
    $(".title").css("width", w); //设置主数据显示区域高度
    $(".myfield").css("border", "1px blue groove");


    if ($("#dgTd") != null) {
        $("#dgTd").css("height", h); //设置主数据显示区域高度
        $("#dgTd").css("width", w); //设置主数据显示区域高度
    }

    //左边带菜单的数据列表
    $("#dg1").datagrid('resize', {
        height: h,
        width: w - 200
    });


    if (!isIE()) {
        w = w + 12;
    }
    //数据列表
    $("#dg").datagrid('resize', {
        height: h,
        width: w
    });

}




/*浏览器类型判断 satrt*/
function isIE() {
    return navigator.appName.indexOf("Microsoft Internet Explorer") != -1 && document.all;
}
function isIE6() {
    return true;
    //return navigator.userAgent.split(";")[1].toLowerCase().indexOf("msie 6.0") == "-1" ? false : true;
}
function isIE7() {
    return true;
    // return navigator.userAgent.split(";")[1].toLowerCase().indexOf("msie 7.0") == "-1" ? false : true;
}
function isIE8() {
    return true;
    // return navigator.userAgent.split(";")[1].toLowerCase().indexOf("msie 8.0") == "-1" ? false : true;
}
function isNN() {
    return navigator.userAgent.indexOf("Netscape") != -1;
}
function isOpera() {
    return navigator.appName.indexOf("Opera") != -1;
}
function isFF() {
    return navigator.userAgent.indexOf("Firefox") != -1;
}
function isChrome() {
    return navigator.userAgent.indexOf("Chrome") > -1;
}
/*浏览器类型判断 end*/
function winThisClose() {
    window.opener = null;
    window.close();
}

function parWinClose() {
    try {
        parent.winClose();
    } catch (e) {
        window.opener = null;
        window.close();
    }

    return false;
}

//json转化成字符串
 function JsonToString (json) {
    var type = typeof json;
    if (type === 'number' || type === 'boolean') {
        return json;
    } else if (json === null) {
        return 'null';
    } else if (type === 'string') {
        return '"' + json.toString() + '"';
    } else if (type === 'function') {
        return 'null';
    } else if (type === 'object') {
        if (json instanceof Date) {
            return '"' + json.toString() + '"';
        } else if (json instanceof Array) {
            var arr = [];
            var jlen = json.length;
            for (var i = 0; i < jlen; i++) {
                arr.push(arguments.callee(json[i]));
            }
            //console.log(arr);
            return '[' + arr.join(',') + ']';
        } else {
            var obj = [];
            for (var key in json) {
                obj.push('"' + key + '"' + ':' + arguments.callee(json[key]));
            }
            return '{' + obj.join(',') + '}';
        }
    }
}

/*查询*/
function searchClick(sort) {
    //dataGrid加载查询框
    if (sort == "1") {
        $("#dg").datagrid({ toolbar: '#search' });
    }
    if (sort == "2") {
        $("#dg2").datagrid({ toolbar: '#search' });
    }
}

 




/*获取滚动条位置*/
function ScollPostion() {//滚动条位置
    var t, l, w, h;
    if (document.documentElement && document.documentElement.scrollTop) {
        t = document.documentElement.scrollTop;
        l = document.documentElement.scrollLeft;
        w = document.documentElement.scrollWidth;
        h = document.documentElement.scrollHeight;
    } else if (document.body) {
        t = document.body.scrollTop;
        l = document.body.scrollLeft;
        w = document.body.scrollWidth;
        h = document.body.scrollHeight;
    }
    return { top: t, left: l, width: w, height: h };
}

//

$(function () {
    if (parent.location.href.indexOf("default.aspx") > 0 && location.href.indexOf("default.aspx") < 0) {
        $(document).bind({ click: function () { // 
            try {
                window.parent.hideMenu();
            } catch (e) { }
        }
        });
    }
})



 //所有input Text添加样式
 $(function () {
     $("input[type='text']").addClass("txtBorder");
       //表单序列化为json
    $.fn.extend({
          serializejson: function () {
            var json = {};
            var formarray = this.serializeArray();
            $.each(formarray, function () {
                if (json[this.name] != undefined) {
                    if (!json[this.name].push) {
                        json[this.name] = [json[this.name]];
                    }
                    json[this.name] = this.value || '';

                } else {
                    json[this.name] = this.value || '';
                }

            });
            return json;
        }
    });
 });

 //新车销售订单状态获取
// 定单保存 = 0,
 //            弃用 待评审定单 = 10,
//            待交定金 = 20,
// /// <summary>
// /// 挂账申请状态，不允许变更申请
// /// </summary>
 //           弃用  变更申请 = 30,
// /// <summary>
// /// 大于待审核定单，不等于变更申请且未配车
// /// </summary>
//            等待配车 = 40,
//            已经配车 = 50,
//          弃用  挂账申请 = 60, //不大于已经配车，不允许挂账申请
//            挂账状态 = 70,
//            已完款 = 80,
//            开票确认 = 90,
//            保修登记 = 100,
//            保险登记 = 110,
//            购置税申报成功 = 120,
//            财务确认出库 = 130,
//            提车单完成 = 140,
//            定单完成 = 150,
//            abc = 160

 function SaleOrderStatus(val, row, index) {
     if (val == undefined) { return ""; }
     if (val == "0") {
         return "<span style='color:red;font-weight:blod;'>订单保存</span>";
     }
     if (val == "20") {
         return "<span >待交定金</span>";
     }
     if (val == "40") {
         return "<span style='color:blue;font-weight:blod;'>等待配车</span>";
     }
     if (val == "50") {
         return "<span style='color:red;font-weight:blod;'>已经配车</span>";
     }
     if (val == "70") {
         return "<span style='color:red;font-weight:blod;'>挂账状态</span>";
     }
     if (val == "80") {
         return "<span style='color:red;font-weight:blod;'>已完款</span>";
     }
     if (val == "90") {
         return "<span style='color:red;font-weight:blod;'>开票确认</span>";
     }
     if (val == "100") {
         return "<span style='color:red;font-weight:blod;'>保修登记</span>";
     }
     if (val == "110") {
         return "<span style='color:red;font-weight:blod;'>保险登记</span>";
     }
     if (val == "120") {
         return "<span style='color:red;font-weight:blod;'>购置税申报成功</span>";
     }
     if (val == "130") {
         return "<span style='color:red;font-weight:blod;'>财务确认出库</span>";
     }
     if (val == "140") {
         return "<span style='color:red;font-weight:blod;'>提车单完成</span>";
     }
     if (val == "150") {
         return "<span style='color:red;font-weight:blod;'>定单完成</span>";
     }
     if (val == "160") {
         return "<span style='color:red;font-weight:blod;'>配车删除</span>";
     }
     if (val == "170") {
         return "<span style='color:red;font-weight:blod;'>开票删除</span>";
     }
     return "";
  }
 //easyui流程状态获取

 function flowStatus(val, row, index) {
//     if (row.status == undefined) { return ""; }
//     if (row.status == "0") {
//         return "<span style='color:red;font-weight:blod;'>待提交审核</span>";
//     }
//     if (row.status == "1") {
//         return "<span >审核中</span>";
//     }
//     if (row.status == "2") {
//         return "<span style='color:blue;font-weight:blod;'>审核完毕</span>";
//     }
//     if (row.status == "3") {
//         return "<span style='color:red;font-weight:blod;'>审核已退回</span>";
//     }
//     if (row.status == "4") {
//         return "<span style='color:red;font-weight:blod;'>流程已经删除</span>";
//     }
     //     return "";
     //上述当status命别名后不起作用（韦2013-06-17）
     if (val == undefined) { return ""; }
     if (val == "0") {
         return "<span style='color:red;font-weight:blod;'>待提交审核</span>";
     }
     if (val == "1") {
         return "<span >审核中</span>";
     }
     if (val == "2") {
         return "<span style='color:blue;font-weight:blod;'>审核完毕</span>";
     }
     if (val == "3") {
         return "<span style='color:red;font-weight:blod;'>审核已退回</span>";
     }
     if (val == "4") {
         return "<span style='color:red;font-weight:blod;'>流程已经删除</span>";
     }
     return "";
 }


 //流程日志查看
 function historyShow(flowThisId, busiId) {
     var url = "../flowBusi/flowBusiExaHistoryInfo.aspx?flowThisId=" + flowThisId + "&busiId="+busiId+"&d=" + new Date();
     var feature = "dialogWidth:600px;dialogHeight:400px;status:no;help:no";
     if (navigator.userAgent.indexOf('iPad') != -1  || isChrome()) {
         window.open(url);
     } else {
         window.showModalDialog(url, busiId, feature);
     }
     return false;
 }



 //单据发送消息
 function sendMsg(mainLoc,detailLoc,keyId,keyValue) { 
     var url = "../callManage/call.aspx?mainLoc=" + mainLoc + "&detailLoc=" + detailLoc + "&keyId="+keyId+"&keyValue="+keyValue+"&d=" + new Date();
     var feature = "dialogWidth:800px;dialogHeight:600px;status:no;help:no";
     window.showModalDialog(url,'u', feature);

     return false;
 }


/*禁止所有的右键功能*/
 $(function () {
     $(document).bind('contextmenu', function (e) {
        // e.preventDefault();
     });
 });

 function lnkClearTxt(obj ,returnBool) {
     if (obj.id == undefined) {
         $("#" + obj + " input").val("");
         $("#" + obj).hide("slow");;
     }
     else {
         $(obj).children(":input").val("");
         $(obj).hide("slow");;
     }
     
     return false;
 }
 function alertMsg(msg) {

     alert(msg);
 }


 /*    获取当前页面尺寸    */
 function pageWidth() {
     if ($.browser.msie) {
         return document.compatMode == "CSS1Compat" ? document.documentElement.clientWidth :
            document.body.clientWidth;
     } else {
         return self.innerWidth;
     }
 };

 function pageHeight() {
     if ($.browser.msie) {
         return document.compatMode == "CSS1Compat" ? document.documentElement.clientHeight :
            document.body.clientHeight;
     } else {
         return self.innerHeight;
     }
 }; 
function ajaxCearch(target, onEnd) {
    if (typeof (target) == "string")
    {
        $("#__EVENTTARGET").val(target)
    }
    if (typeof (target) == "object")
    {
        $("#__EVENTTARGET").val(target.id);
    }
    $("#__EVENTARGUMENT").val("");

    $.ajax({
        async: true,
        type: 'POST',
        url: location.href,
        datatype: "json",
        data: $("#form1").serialize(),
        beforeSend: function () {
            $.messager.progress({
                title: '请稍后',
                text: '努力加载中...',
                interval: 100
            });
        },
        success: function (data) {
            var json = null;

            try {
                
                json = $.parseJSON(data);
                if(json==null&&data!=null){
                   json=data;
                  }
            } catch (e) {

                json = $.parseJSON("{\"result\":\"" + data + "\"}");
            }

            onEnd(json);
        },
        complete: function () {
            $.messager.progress('close');
        }
    });
    return false;
};
function  ajaxSubmit(target) {
     $("#__EVENTTARGET").val(target.id);
     $("#__EVENTARGUMENT").val("");
     $.messager.progress({
                 title: '请稍后',
                 
                 text: '努力加载中...' , 
                 interval: 1000
                 
             });
     
     $.ajax({
         async: true,
         type: 'POST',
         url: location.href,
         data: $("#form1").serialize(),
         
         success: function (data) {
           
             var obj = document.open("about:blank");   
             obj.write(data);

             obj.close();
         }
        
     });
     return false;
 };

function SubmitByShade(obj) {
    $.messager.progress({
        title: '请稍后',
        text: '努力加载中...',
        interval: 100
    });
    return true;

 }



//手机号码验证
function checkMobile(v) {
    if (v == "") {return true;}

    if (!(/^1[3|4|8|9|5][0-9]\d{4,8}$/.test(v))) {
       // alert("不是完整的11位手机号或者正确的手机号前七位");
        return false;
    } else {
       return true;
    }
}


//电话号码验证
function checkTel(v) {
    if (v == "") { return true; }
    //var filter = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
    var filter = /^(([0\+]\d{2,3})?(0\d{2,3}))?(\d{7,8})((\d{3,}))?$/;
    if (!filter.test(v)) {
        //alert("不是正确的电话号码!");
        return false;
    } else {
        return true;
    }
}
function checkCarNumber(v) {
    //常规车牌 粤B12345                //武警车牌                                        //粤Z1234港                                               //新军车牌         //黑龙江特殊车牌
    return /(^[\u4E00-\u9FA5]{1}[A-Z0-9]{6}$)|(^[A-Z]{2}[A-Z0-9\u4E00-\u9FA5]{1}[A-Z0-9]{4}$)|(^[\u4E00-\u9FA5]{1}[A-Z0-9]{5}[挂学警军港澳]{1}$)|(^[A-Z]{2}[0-9]{5}$)|(^(08|38){1}[A-Z0-9]{4}[A-Z0-9挂学警军港澳]{1}$)/.test(v);
}

(function ($) {
	$.getUrlParam = function (name, defaultValue) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if (r != null && r[2].trim().length>0){
			return unescape(r[2]);
		}else{
			return defaultValue;
		}
	}
})(jQuery);