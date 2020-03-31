<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<input type="text" id="txt"/>
<button onclick="closewindow()">close</button>
</body>
<form action="test" method="post">
	<input type="text" name="text"/>
	<button>ok</button>
</form>
<script type="text/javascript">
var arr = window.opener.dialogArguments.values;
$("#txt").val(arr[1]+" "+arr[0]);
function closewindow(){
	var str = $("#txt").val();
	window.opener.show( str);  
	window.close();  
}

window.onunload = function(){
	window.opener.hasOpenWindow = false;
};

</script>
</html>