<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript">
    $(function () {
        var options = $("#select1 option:selected");
        //系统默认显示字段
        $("#select1").change(function () {
            select2option();
        });
        //待显示字段
        $("#select2").dblclick(function () {
            select1option();
        });
        $("#allSelect,#SingleSelect,#NotSelect,#AllNotSelect,#lnkCancel,#lnkSave,#select1,#select2").click(function () {
            //全选
            if (this.id == "allSelect") {

                $("#select1 option").each(function (index, op1) {
                    var flag = false;
                    $("#select2 option").each(function (index, op2) {
                        if ($(op2).val() == $(op1).val()) {
                            flag = true;
                            return;
                        }
                    });
                    if (!flag) {
                        $(op1).appendTo($("#select2"));
                    }
                });

            }
            //单选或者多选
            if (this.id == "SingleSelect") {
                select2option();
            }
            //单个或多个不选
            if (this.id == "NotSelect") {
                select1option();
            }
            //全不选
            if (this.id == "AllNotSelect") {

                $("#select2 option").each(function (index, op2) {
                    var flag = false;
                    $("#select1 option").each(function (index, op1) {
                        if ($(op2).val() == $(op1).val()) {
                            flag = true;
                            return;
                        }

                    });
                    if (!flag) {
                        $(op2).appendTo($("#select1"));
                    } else {
                        $("#select2 option").eq(op2.index).remove();
                    }
                });


            }
            //取消关闭窗口
            if (this.id == "lnkCancel") {
                if (parent.winClose == null || parent == null) {
                    window.close();
                } else {
                    parent.winClose();
                }
            }
            if (this.id == "lnkSave") {
                var fileds = "";
                $("#select2 option").each(function (index, op2) {
                    fileds += $(op2).val() + "," + op2.index + "|"
                });
                fileds = fileds.substring(0, fileds.length - 1);

                $("#hidFileds").val(fileds)
                __doPostBack('lnkSave', '');
            }

        });
        //带显示字段排序
        $("#up,#down,#frozen").click(function () {
            var $opts = $("#select2 option:selected");

            if (!$opts.length) return;
            if (this.id == "up") {
                if ($opts.length >= $opts[0].index + 2) return;

                //向上移动option（支持多个选项同时移动）
                try {


                    $opts.attr("selected", true);
                    $opts.prev().before($opts);
                } catch (e) {

                }


            }
            if (this.id == "frozen") {
                alert("暂时不提供此功能");
            }
            if (this.id == "down") {

                //向下移动option（没有支持多个选项同时移动）
                $opts = $("#select2 option:selected:first");
                try {
                    $opts.next().after($opts);

                } catch (e) {
                    return;
                }

            }
        });
    });

    //把select1中的option移到select2中
    function select2option() {
        $("#select1 option:selected").each(function (index, op) {
            var options2 = $("#select2 option");
            var flag = false;
            if (options2.length == 0) {
                op.selected = false;
            }
            $("#select2 option:selected").attr("selected", false);
            options2.each(function (index, op2) {
                if ($(op2).val() == $(op).val()) {
                    flag = true;
                    $("#select2 option[value='" + $(op2).val() + "']").attr("selected", true)
                }

            });
            if (flag) {
                // $("#select1 option").eq(op.index).remove();
            }
            else {
                $(op).appendTo($("#select2"));
            }

        });

    }
    //把select2中的option移到select1中
    function select1option() {

        $("#select2 option:selected").each(function (index, op) {
            var options1 = $("#select1 option");
            var flag = false;
            if (options1.length == 0) {
                op.selected = false;
            }
            $("#select1 option:selected").attr("selected", false);
            options1.each(function (index, op1) {
                if ($(op).val() == $(op1).val()) {
                    flag = true;

                }
            });
            if (flag) {
                $("#select2 option").eq(op.index).remove();
            }
            else {
                $(op).appendTo($("#select1"));
            }

        });
    }
</script>
<body>
    <form name="form1" method="post" action="PageFiledSelect.aspx?PageName=Cust_ManageCarMain&amp;&amp;syauto=Fri+Jan+09+2015+17%3a19%3a03+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJODY5NzE2NTE1D2QWAgIDD2QWBAIDDxAPFgYeDURhdGFUZXh0RmllbGQFDENoaW5lc2VGaWxlZB4ORGF0YVZhbHVlRmllbGQFCUZpbGVkR3VpZB4LXyFEYXRhQm91bmRnZBAVDwzorqHliJLml6XmnJ8M6IGU57O75YaF5a65DOS9nOS4muaPkOekugzogZTns7vnlLXor50M5a6i5oi3562J57qnCemUgOWUruWRmAzlrqLmiLflkI3np7AM6L2m6L6G6aKc6ImyDOWujOaIkOaXpeacnwnovabniYzlj7cM5o+Q6L2m5pel5pyfBuWcsOWdgAzlrqLmiLfnsbvliKsJ6L2m5p625Y+3DOaLnOiuv+aWueW8jxUPJDJGRjYxQTJGLTY3NDEtNDYzMC05NDVGLUQ4MjQ2M0JDRTQ2OCQzMkJDMjNENC1CN0EwLTRENDctOTJDNC03RjU0MDQ5RTlGQzgkM0U1RUM4NzEtNTQxMC00MTlGLUI0MkQtM0RBRTIxRUVERTk2JDQyQTNCN0U4LTEyODItNDY1RC05MzgxLTY4OEQ0MDg0NDgzQiQ1QzVDQ0M0RC1BNDJCLTRFMDktQUQzOC04MzM2MzExOENGQkUkNjNGRERFRjAtRUUzMy00NTY0LTkzNTktNjlBOTJDODhGNkQ1JDY1RURBQzAzLTc0NDYtNDhCNy04RDAxLTNCMDMwRjU3MDNDMiQ2OUM1QkY0QS1DMjUzLTQ4QkMtQTQwQy1GMzI3OUYyMzQ2NUMkODA3NUVDN0QtREU2RC00QkNGLUFEMkItQjlDNjExQjA0NjEwJEFDRkU0NDQ5LUY4ODMtNEFFOS05MDkzLTQ3N0FENEYyRUU5RSRCQjNBNzc3Qi1BNEYwLTRBRjUtODVDMi02QzNENzhDMjM3QzUkQkNERTU0MTYtODRCQy00MjcxLUE2NEUtREJFRkE0QjQ0NTkzJEREQTFGRjQxLTVFQkEtNDk4Ni1BRjhELUExRkJCRUE5RDQzNiRFQ0E5Qzk1QS04N0NDLTRGQTktQkM0RC1BMDRBNTIxNTYyODMkRkYwRjUwQTAtNEM0OC00MzU2LTk0MTYtMTQ3Q0IzNzlGNTM2FCsDD2dnZ2dnZ2dnZ2dnZ2dnZ2RkAgcPEA8WBh8ABQxDaGluZXNlRmlsZWQfAQUJRmlsZWRHdWlkHwJnZBAVDwzorqHliJLml6XmnJ8M6IGU57O75YaF5a65DOS9nOS4muaPkOekugzogZTns7vnlLXor50M5a6i5oi3562J57qnCemUgOWUruWRmAzlrqLmiLflkI3np7AM6L2m6L6G6aKc6ImyDOWujOaIkOaXpeacnwnovabniYzlj7cM5o+Q6L2m5pel5pyfBuWcsOWdgAzlrqLmiLfnsbvliKsJ6L2m5p625Y+3DOaLnOiuv+aWueW8jxUPJDJGRjYxQTJGLTY3NDEtNDYzMC05NDVGLUQ4MjQ2M0JDRTQ2OCQzMkJDMjNENC1CN0EwLTRENDctOTJDNC03RjU0MDQ5RTlGQzgkM0U1RUM4NzEtNTQxMC00MTlGLUI0MkQtM0RBRTIxRUVERTk2JDQyQTNCN0U4LTEyODItNDY1RC05MzgxLTY4OEQ0MDg0NDgzQiQ1QzVDQ0M0RC1BNDJCLTRFMDktQUQzOC04MzM2MzExOENGQkUkNjNGRERFRjAtRUUzMy00NTY0LTkzNTktNjlBOTJDODhGNkQ1JDY1RURBQzAzLTc0NDYtNDhCNy04RDAxLTNCMDMwRjU3MDNDMiQ2OUM1QkY0QS1DMjUzLTQ4QkMtQTQwQy1GMzI3OUYyMzQ2NUMkODA3NUVDN0QtREU2RC00QkNGLUFEMkItQjlDNjExQjA0NjEwJEFDRkU0NDQ5LUY4ODMtNEFFOS05MDkzLTQ3N0FENEYyRUU5RSRCQjNBNzc3Qi1BNEYwLTRBRjUtODVDMi02QzNENzhDMjM3QzUkQkNERTU0MTYtODRCQy00MjcxLUE2NEUtREJFRkE0QjQ0NTkzJEREQTFGRjQxLTVFQkEtNDk4Ni1BRjhELUExRkJCRUE5RDQzNiRFQ0E5Qzk1QS04N0NDLTRGQTktQkM0RC1BMDRBNTIxNTYyODMkRkYwRjUwQTAtNEM0OC00MzU2LTk0MTYtMTQ3Q0IzNzlGNTM2FCsDD2dnZ2dnZ2dnZ2dnZ2dnZ2RkZB7ZTNHhMXRHMZGlr7Gms3kFQcH2" />
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
    <input type="hidden" name="hidFileds" id="hidFileds" />
        <table style="margin-top:30px;" align="center" >
            <tr>
                <td><span style="color:Blue;">可显示列</span><br />
                    <select name="select1" id="select1" multiple="multiple" style="height:400px;width:200px;">
    <option value="2FF61A2F-6741-4630-945F-D82463BCE468">计划日期</option>
    <option value="32BC23D4-B7A0-4D47-92C4-7F54049E9FC8">联系内容</option>
    <option value="3E5EC871-5410-419F-B42D-3DAE21EEDE96">作业提示</option>
    <option value="42A3B7E8-1282-465D-9381-688D4084483B">联系电话</option>
    <option value="5C5CCC4D-A42B-4E09-AD38-83363118CFBE">客户等级</option>
    <option value="63FDDEF0-EE33-4564-9359-69A92C88F6D5">销售员</option>
    <option value="65EDAC03-7446-48B7-8D01-3B030F5703C2">客户名称</option>
    <option value="69C5BF4A-C253-48BC-A40C-F3279F23465C">车辆颜色</option>
    <option value="8075EC7D-DE6D-4BCF-AD2B-B9C611B04610">完成日期</option>
    <option value="ACFE4449-F883-4AE9-9093-477AD4F2EE9E">车牌号</option>
    <option value="BB3A777B-A4F0-4AF5-85C2-6C3D78C237C5">提车日期</option>
    <option value="BCDE5416-84BC-4271-A64E-DBEFA4B44593">地址</option>
    <option value="DDA1FF41-5EBA-4986-AF8D-A1FBBEA9D436">客户类别</option>
    <option value="ECA9C95A-87CC-4FA9-BC4D-A04A52156283">车架号</option>
    <option value="FF0F50A0-4C48-4356-9416-147CB379F536">拜访方式</option>

</select>
                </td>
                <td>
                    <a href="#" id="up" class="easyui-linkbutton">&nbsp;&nbsp;&nbsp;↑&nbsp;&nbsp;</a><br />
                    <br />
                    <a href="##" id="allSelect" class="easyui-linkbutton">&nbsp;>>&nbsp;</a><br />
                    <br />
                    <a href="##" id="SingleSelect" class="easyui-linkbutton">&nbsp;&nbsp;>&nbsp;&nbsp; </a>
                    <br />
                    <br />
                    <a href="##" id="NotSelect" class="easyui-linkbutton">&nbsp;&nbsp;<&nbsp;&nbsp; </a>
                    <br />
                    <br />
                    <a href="##" id="AllNotSelect" class="easyui-linkbutton">&nbsp;<<&nbsp;</a><br />
                    <br />
                    <a href="##" id="down" class="easyui-linkbutton">&nbsp;&nbsp;&nbsp;↓&nbsp;&nbsp;</a><br />
                    <br />
                      <a href="##" id="frozen" class="easyui-linkbutton">冻结</a><br />
                    <br />
                    <a id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
                    <br />
                    <br />
                    <a href="##" id="lnkCancel" class="easyui-linkbutton">取消 </a>
                </td>
                <td> <span style="color:Blue;">已选列</span><br />
                    <select name="select2" id="select2" name="select2" multiple="multiple" style="height:400px;width:200px;">
    <option value="2FF61A2F-6741-4630-945F-D82463BCE468">计划日期</option>
    <option value="32BC23D4-B7A0-4D47-92C4-7F54049E9FC8">联系内容</option>
    <option value="3E5EC871-5410-419F-B42D-3DAE21EEDE96">作业提示</option>
    <option value="42A3B7E8-1282-465D-9381-688D4084483B">联系电话</option>
    <option value="5C5CCC4D-A42B-4E09-AD38-83363118CFBE">客户等级</option>
    <option value="63FDDEF0-EE33-4564-9359-69A92C88F6D5">销售员</option>
    <option value="65EDAC03-7446-48B7-8D01-3B030F5703C2">客户名称</option>
    <option value="69C5BF4A-C253-48BC-A40C-F3279F23465C">车辆颜色</option>
    <option value="8075EC7D-DE6D-4BCF-AD2B-B9C611B04610">完成日期</option>
    <option value="ACFE4449-F883-4AE9-9093-477AD4F2EE9E">车牌号</option>
    <option value="BB3A777B-A4F0-4AF5-85C2-6C3D78C237C5">提车日期</option>
    <option value="BCDE5416-84BC-4271-A64E-DBEFA4B44593">地址</option>
    <option value="DDA1FF41-5EBA-4986-AF8D-A1FBBEA9D436">客户类别</option>
    <option value="ECA9C95A-87CC-4FA9-BC4D-A04A52156283">车架号</option>
    <option value="FF0F50A0-4C48-4356-9416-147CB379F536">拜访方式</option>

</select>
                </td>
            </tr>
            <tr>
                
                <td>
              
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="ACA2758B" />
</div></form>
</body>
</html>