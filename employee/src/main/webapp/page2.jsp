<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/pop.js"></script>
</head>
<body>
<button id="open">open</button>
<button id="dialog">"dialog"</button>
</body>
<script type="text/javascript">
$("#dialog").click(function(){
	var url = 'page1.jsp';
	var str = window.showModalDialog("page1.jsp","","dialogWidth=200px;dialogHeight=100px"); 
	$("button").html(str);
});

$("#open").click(function(){
	var url = 'page1.jsp';
	var sonStyle="dialogWidth:500px;dialogHeight:450px;help:no;resizable:no;center:yes;scroll:yes;status:no";
	var param={};
	//param.windowOpen='';
	var arr = new Array();
	arr.push('a');
	arr.push('b');
	param.values = arr;
	window.showModalDialog(url, param, sonStyle);
	
		
});

function show(str){
	$("button").html(str);
	window.hasOpenWindow = false;
}
</script>
</html>