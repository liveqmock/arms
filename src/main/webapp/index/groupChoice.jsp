<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	机构选择
</title>
    <script src="../js/organization.js" type="text/javascript"></script>
    <style type="text/css">
.OrgBox{
	font-size:12px;
	padding:5px 5px 5px 5px;
	clear:left;
	float:left;
	text-align:center;
	position:absolute;
	width:150px;
	
}
.OrgBox img{
	width:50px;
	height:43px;
}
.OrgBox div{
	color:blue;
	font-weight:800;
}
</style>
<script language="javascript" type="text/javascript" >
    function show2(l) {
        parent.location = l;
        
    }
 
</script>
</head>
<body>
    <form name="form1" method="post"  id="form1">

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F04D0AA6" />
</div>
    <div >
     
    <script language="javascript" type="text/javascript">

        //初始化
         var a = new OrgNode();  a.customParam.EmpName = ""; a.customParam.department = "深圳八路通汽车科技有限公司";  a.customParam.EmpPhoto = "../image/tmpGroup.png";  a.customParam.Link = "groupChoice.jsp?groupSeaId=6018";


        var OrgShows = new OrgShow(a);
        OrgShows.Top = 50;
        OrgShows.Left = 50;
        OrgShows.IntervalWidth = 10;
        OrgShows.IntervalHeight = 20;
        OrgShows.BoxTemplet = "<div id=\"{Id}\" class=\"OrgBox\" onclick=show(\"{Link}\") ><img onerror=\"this.src='../image/tmpGroup.png'\" src=\"{EmpPhoto}\" /><span>{EmpName}</span><div>{department}</div></div>"
        OrgShows.Run();


        function show(obj)
        { 
           if(obj !="")
           { 
             location.href =obj+"&d="+new Date();
           }
        }
    </script>

    </div>
    </form>

</body>
</html>