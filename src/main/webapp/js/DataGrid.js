
/*
 插件说明: 自动生成DataGrid 自动填写数据
*/


var syAutoFieldId   = ["id","Cc"];     /*字段列定义*/
var syAutoFieldName = ["序号"];   /*字段列名称*/
var syAutoGuiZe = [];
var syAutoHeJi = [];
var syAutoCss = [];

               
var syAutoDivId = ""; //当前div Id
var syAutoTableId = "";
var syAutoTableHeJiId = "";
var syAutoOperModel = ""; //当前操作模式 是否为锁定


var syAutoI = 0;   /*当前列表系列号*/




/*表头生成*/
var syAutoHead = function () {
    var tmpTableHead = "<table id='" + syAutoTableId + "'   width=\"945px\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\"  style=\"word-break:break-all;border-collapse:collapse;border:1px solid gray;\"  ><tr   >";
    for (var i = 0; i < syAutoFieldId.length; i++) {
        tmpTableHead += "<td height='20px' " + syAutoCss[i] + " > " + syAutoFieldName[i];        
    }
    tmpTableHead += "</tr>";
    tmpTableHead += "</table>";
    jQuery("#"+syAutoDivId).html(tmpTableHead);
}


/*
新增行数据
*/
var syAutoAddRow = function () {
    var tmpTable = "<tr>";
    for (var i = 0; i < syAutoFieldId.length; i++) {
        //删除事件
        if (i == 0) {
            tmpTable += "<td align='center'  " + syAutoCss[i] + " ><input type='hidden'  id='idNo-" + syAutoI + "' value='" + eval(syAutoI + 1) + "'  />" + eval(syAutoI + 1) + "";
        }
        else {
            if (syAutoFieldId[i] == "shopId") {
                tmpTable += "<td><input type='hidden' value='' id='keyId-" + syAutoI + "'   /> <input type='hidden' value='0' id='delFlag-" + syAutoI + "'   /><input name='shopId' " + syAutoCss[i] + "  onblur=shopDetail(" + syAutoI + ")  onkeyDown=gogo(event,'" + syAutoFieldId[i] + "','" + syAutoFieldId[i+1] + "','" + syAutoFieldId[i - 1] + "'," + syAutoI + ")   id='" + syAutoFieldId[i] + "-" + syAutoI + "' " + syAutoGuiZe[i] + "    />";
            } else if (syAutoFieldId[i] == "del") {
                if (syAutoOperModel != "lock") {
                    tmpTable += "<td><img src='../image/delete.gif' alt='del' onclick=\"delRow(this,'" + syAutoI + "')\"  />";
                } else {
                    tmpTable += "<td>";
                }
            } else if (syAutoFieldId[i] == "zhangTao") {
                tmpTable += "<td ><select name='zhangTao' onchange=zhangTaoChange(this)  " + syAutoCss[i] + " id='" + syAutoFieldId[i] + "-" + syAutoI + "'     " + syAutoGuiZe[i] + "  onkeyDown=gogo(event,'" + syAutoFieldId[i] + "','" + syAutoFieldId[i+1] + "','" + syAutoFieldId[i - 1] + "'," + syAutoI + ")   >"+zhangTao+"</select>";
            }
            else {
                tmpTable += "<td ><input " + syAutoCss[i] + " id='" + syAutoFieldId[i] + "-" + syAutoI + "'     " + syAutoGuiZe[i] + "  onkeyDown=gogo(event,'" + syAutoFieldId[i] + "','" + syAutoFieldId[i+1] + "','" + syAutoFieldId[i - 1] + "'," + syAutoI + ")   />";
            }
        }
    }

    syAutoI++; //td记数
    tmpTable += "</tr>";
    jQuery("#" + syAutoTableId).append(tmpTable);

}


/*删除行数据*/ 
    function delRow(obj, thisRow) {
        if (!confirm("您确定删除此条信息?")) {
            return false;
        }
        if ($("#keyId-" + thisRow).val() != "") {
            $("#delFlag-" + thisRow).val("1"); //表示已经删除
            $(obj.parentNode.parentNode).css("display", "none");           
        }
        else {
            $(obj.parentNode.parentNode).remove();
        }
        heJi();
    }

 
/*控件移动 start*/
    function gogo(event, Id, NextId, backId, thisRow) {
    
    var ev = event || window.event;     //获取event对象 
    if (thisRow > syAutoI - 2) {   syAutoAddRow();  }
    //上键与下键前提是 下拉选择框未出现
    //物料自动选择start
    //enter键 13
    //alert('键:'+ev.keyCode+"  id:"+Id+" nextId:"+NextId+" backId:"+backId);
    if (ev.keyCode == 13) {
        isSelect = "123"; p.hide(); 
        jQuery("#" + NextId + "-" + thisRow).focus();
        jQuery("#" + NextId + "-" + thisRow).select();
    } 
    if (Id == "shopId") {
        focusId = Id + "-" + thisRow;
        if (ev.keyCode == 39) {
            p.hide();
            jQuery("#" + NextId + "-" + thisRow).focus();
            jQuery("#" + NextId + "-" + thisRow).select();
         }
        return;
    }
   
    isSelect = "123";
    p.hide();
    if (NextId == 'undefined') {
        if (ev.keyCode == 13) {
          ev.keyCode = 9;
        }
    }


    //上

    if (ev.keyCode == 38) { 
        if (thisRow > 0) { 
            jQuery("#" + Id + "-" + (thisRow - 1)).focus();
            jQuery("#" + Id + "-" + (thisRow - 1)).select();
        }
    }

    //下
    if (ev.keyCode == 40) {
        if (thisRow < syAutoI) {
            jQuery("#" + Id + "-" + (thisRow + 1)).focus();
            jQuery("#" + Id + "-" + (thisRow + 1)).select();
            
        }

        if (thisRow > syAutoI - 2) {

            syAutoAddRow(); //新增行
        }
    }

    //右
    if (ev.keyCode == 39) {
        jQuery("#" + NextId + "-" + thisRow).focus();
        jQuery("#" + NextId + "-" + thisRow).select();
    }

    //左
    if (event.keyCode == 37) {
        if (backId != "idNO") {
            jQuery("#" + backId + "-" + thisRow).focus();
            jQuery("#" + backId + "-" + thisRow).select();             
        }
    }

    //Home
    //end
    //enter
     
}
  

/*控件移动 end*/

 
 
/*
合计生成
*/
var syAutoSumTag = function () {
    var tmpTable = "<table  width=\"920px\"  border='0'  >";
    tmpTable += "<tr  >";
    for (var i = 0; i < syAutoFieldId.length; i++) {
        if (i == 2) {
            tmpTable += "<td height='20px' colspan='2'  align='center'  " + syAutoCss[i] + " >合计 ";
            i++;
        }
        else {
            if (syAutoHeJi[i] != "1") {
                tmpTable += "<td height='20px'    " + syAutoCss[i] + "  >";
            } else {
                tmpTable += "<td height='20px' nowrap='nowrap' colspan='2' >" + syAutoFieldName[i] + ": <input  type='text'  value='0' style='border:0px;width:98%' id='" + syAutoFieldId[i] + "-All'  readOnly='true' />";
                i++;
            }
        }



    }

    tmpTable += "</tr>";
    tmpTable += "</table>";
    jQuery("#" + syAutoTableHeJiId).html(tmpTable);

}


/*
删除行数据
*/
var syAutoDel = function (obj) { 
  
}


/*生成合计数值*/
var syAutoSum = function () { 
 
}


/*
初始化dataGrid 如果有数据则生成数据  单行数最少为10行
*/
var syAutoInit = function (data) {
    syAutoHead();
    syAutoSumTag();
    syAutoAddRow(); 

    //初始化数据

    //计算合计

}

$(function () {
    p = $("#txtFShangPinHTML");
})


/*方向键 start*/
/*放入 gogo中*/
/*方向键 end*/



//处理键盘事件  
function doKey(e) {
    var ev = e || window.event;    //获取event对象 
    var obj = ev.target || ev.srcElement; //获取事件源  
    var t = obj.type || obj.getAttribute('type'); //获取事件源类型  
    if (ev.keyCode == 8 && t != "password" && t != "text" && t != "textarea") {
        return false;
    }
}
//禁止后退键 作用于Firefox、Opera  
document.onkeypress = doKey;
//禁止后退键  作用于IE、Chrome  
document.onkeydown = doKey; 





/*数据保存*/


/*新增方式选择物料(兼容所有的模式)*/







