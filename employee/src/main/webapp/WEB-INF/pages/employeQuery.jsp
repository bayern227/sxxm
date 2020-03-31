<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@include file="/common/calendar.jsp"%> 
<!DOCTYPE html>
<html>
<head>
<title>JDDC	Internal Management	System</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<style type="text/css">
<!--
.style4	{
	font-size: 12px;
	color: #FFFFFF;
}
-->
</style>
</head>
<body > 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0"> 
    <TR> 
        <TD> <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border"> 
                <tr> 
                    <td> <table border="0" width="100%" height="60" bgcolor="#003366"> 
                            <tr> 
                                <td width="11" rowspan="2">　</td> 
                                <td width="65"><img src="img/hp_logo.gif" width="47" height="28"> <br><span class="style4">JDDC</span> </td> 
                                <td rowspan="2"> <table height="52" width="100%" border="0"> 
                                        <tr> 
                                            <td	colspan="2"	height="10">
                                            <p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td>  
                                        </tr> 
                                        <tr> 
                                          <td	width=40%>&nbsp;</td> 
                                            <td> <p class="titleCenter"> <font face="Times New Roman"> <b>员工信息检索</b></font></p></td> 
                                        </tr> 
                                    </table></td> 
                            </tr> 
                        </table> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
                                <tr bgcolor="#85B7FA"> 
                                    <td>&nbsp;</td> 
                                    <td width="150" class="txt_normal">操作者：${user.eid }</td> 
                                    <td width="60" class="txt_normal"><div align="right"><a href="Login.htm">Logout</a></div></td> 
                                </tr> 
                            </table> 
                            <HR> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%"> 
                                <tr> 
									<td valign="top" > <div align="center" class="div_naviarea" id="navi" > 
                                        <!-- navigator area start here --> 
                                        <table border="0" cellspacing="0" cellpadding="0"> 
                                        	<tr> 
                                                <td width="2" rowspan="12" bgcolor="#808080" >&nbsp;</td> 
                                                <td width="205" >
                                                	<table 	border="0" cellspacing="0" cellpadding="0" width="100%" > 
                                                		 <tr> 
                                                			<td width="205" height="30"><span class="menuBranch">&#8226;员工信息管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="employeRegister.htm" target="_self">员工信息登录</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="employeQuery.htm" target="_self">员工信息检索</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="confirmInfoQuery.htm" target="_self">员工信息审批</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;员工期权管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPPurchase.htm" target="_self">员工期权申请</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPQuery.htm" target="_self">员工期权一览</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">员工期权审批</a></span></td> 
			                                            </tr>  			                                           

                                                	</table>	
                                                </td> 
                                                <td width="1" rowspan="12" bgcolor="#808080"></td> 
                                            </tr> 
                                            
                                            
                                        </table> 
                                        <!-- navigator area end here --> 
                                    </div></td> 
                                    <td width="750" align="center" valign="top"> <div class="div_workarea"> 
                                            <!-- Work area start here --> 
                                               <table width="100%"  cellspacing="1" > 
                      <tr> 
                        <td class="tdFuncTitle">検索条件入力</td> 
                      </tr> 
                     
                      <tr> 
                        <td height="5"></td> 
                      </tr> 
                      <tr> 
						<td ><div class="div_error_message"> 
						        <span class="txt_error_message"><!-- 错误信息1<BR>  -->
								</span></div> 
						</td> 
                      </tr> 
                      
                    </table> 
                    <div>
                      <table width="100%" border="0" cellpadding="1" cellspacing="1"> 
                     
					  <form action="${pageContext.request.contextPath }/findEmp" method="get" name="searchForm" target="_self">
					    <tr><td colspan="4"><span class="txt_normal"><b>员工基本情报</b></span></td></tr>
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">EID</span></td> 
                          <td width="25%"><input type="text" id="eid" name="eid" size="20" maxlength="8" class="string" value=""></td> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">姓名（拼音）</span></td> 
                          <td width="25%"><input type="text" name="name" size="20" class="string" value=""></td> 
                        </tr> 
                        <tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">Site</span></td> 
						  <td width="25%">
								<select size="1" name="site.code" class="string_selectbox_1">
									<option value=''></option>
									 <!-- add 2020/3/4 by yebo -->
								    <c:forEach items="${sites }" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">部门</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								    <option></option>
									<option>JDCC</option>
									<option>MDI</option>
									<option>ENT</option>
									<option>CME</option>
								</select>
						　</td>
                        </tr>
                        <tr>
                          <td width="25%" class="tdLabel"><span class="txt_normal">员工种类</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								    <option></option>
								    <!-- add 2020/3/4 by yebo -->
								    <c:forEach items="${types }" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
									<!-- delete 2020/3/4 by yebo
									<option>HP</option>
									<option>BP</option>
									 -->
								</select>
						  </td>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">公司<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								    <option></option>
									<option>NEC</option>
									<option>Neusoft</option>
								</select>
						　</td>
                        </tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">在职状态</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
									<option></option>
									 <!-- add 2020/3/4 by yebo -->
								    <c:forEach items="${works }" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
						  <td width="25%" class="tdLabel"><span class="txt_normal">Billable区分<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								    <option></option>
									<option>Billable</option>
									<option>NonBillable</option>
								</select>
						  </td>
                        </tr>
                        <tr > 
                          <td  width="25%" class="tdLabel"><span class="txt_normal">入职日</span></td> 
                          <td colspan="3">
                          <input id="startDateFrom" type="text" name="startDateFrom" size="20" class="string" maxlength="8"value=""><input type="image" src="img/calendar.gif" onclick="return showCalendar('startDateFrom', 'y/mm/dd');"
onkeydown="javascript:return skip2component(this);"/><span class="txt_normal">&nbsp;～&nbsp;</span>
<input id="startDateTo" type="text" name="startDateTo" size="20"  class="string"  maxlength="8"  value=""><input type="image" src="img/calendar.gif" onclick="return showCalendar('startDateTo', 'y/mm/dd');"
onkeydown="javascript:return skip2component(this);"/>
						  </td>
						  </tr>
						  <tr>
                          <td  width="25%" class="tdLabel"><span class="txt_normal">退职日</span></td> 
                          <td colspan="3"><input id="endDateFrom" type="text" name="T1242" size="20"  class="string"  value=""><input type="image" src="img/calendar.gif" onclick="return showCalendar('endDateFrom', 'y/mm/dd');"
onkeydown="javascript:return skip2component(this);"/> <span class="txt_normal">&nbsp;～&nbsp;</span><input id="endDateTo" type="text" name="T1242" size="20" maxlength="8 "  class="string"  value=""><input type="image" src="img/calendar.gif" onclick="return showCalendar('endDateTo', 'y/mm/dd');"
onkeydown="javascript:return skip2component(this);"/>
						  </td>
						</tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>日本经历及びVisa情报</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">是否有护照</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>有</option>
									<option>无</option>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">是否有签证</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>有</option>
									<option>无</option>
								</select>
						　</td>
                        </tr> 
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">日语水平</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>Level1</option>
									<option>Level2</option>
									<option>Level3</option>
							        <option>NA</option>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">在日年限</span></td> 
                          <td width="25%"><input id="year" type="text" name="T123" size="4"  maxlength="4" class="string_selectbox_3" value="">&nbsp;<span class="txt_normal">年以上</span></td> 
                        </tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>技能情报</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">技能</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>JAVA</option>
									<option>C++</option>
									<option>VB.net</option>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">技能水平</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>basic</option>
									<option>intermediate</option>
									<option>advanced</option>
							        <option>expert</option>
								</select>
						　</td>
                        </tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>资格认证情报</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">资格</span></td>
						  <td cols="3">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>PMP</option>
							        <option>NA</option>
								</select>
						　</td>
                        </tr>
                     
                         <tbody style="display:${user.roleCode=='0003' or user.roleCode == '0004'? 'none':''}">
						<tr><td cols="4"><br></td></tr>
						
						<tr><td colspan="4"><span class="txt_normal"><b>JOB情报</b></span></td></tr>
						<tr>
                          <td width="25%" class="tdLabel" ><span class="txt_normal">GDCC JOB Title</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>Section Manager</option>
									<option>Department Manager</option>
									<option>Project Leader</option>
									<option>Technically leader</option>
									<option>Solution Architect</option>
									<option>Software Analyst</option>
									<option>Senior Engineer</option>
									<option>Software Engineer</option>
								</select>
						　</td>
                          <td width="25%"class="tdLabel"><span class="txt_normal">Delivery Capability 认定</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option></option>
									<option>PM1</option>
									<option>PM2</option>
									<option>PL</option>
									<option>SA</option>
									<option>SSE</option>
									<option>SE</option>
									<option>PG</option>
								</select>
						　</td>
						 </tr>
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">JDDC 组织 Title</span></td> 
						  <td colspan="3">
								<select size="1" name="postCode" class="string_selectbox_3">
									<option></option>
									 <!-- add 2020/3/4 by yebo -->
								    <c:forEach items="${job }" var="j">
								    	<option value="${j.code }">${j.name }</option>
								    </c:forEach>
								</select>
						　</td>
                        </tr> 
                      </tbody>
                        <tbody id="t_shenpi" style="display:${user.roleCode != '0001'? 'none':''}">
						<tr><td cols="4"><br></td></tr>
                        <tr> 
                          <td width="25%"class="tdLabel" ><span class="txt_normal">审批状态</span></td>
						  <td cols="3">
								<select size="1" id="shenpi" name="shenpi" class="string_selectbox_3">
									<option>审批完毕</option>
									<option>等待审批</option>
									<option>拒绝</option>
								</select>
						　</td>
                        </tr>
                        </tbody>
                        <tr>
						  <td width="25%"></td> 
						  <td width="25%"><br><input type="submit" value="　检 索　" name="B1" class="string" ></td>						  
                          <td width="25%"><br><input type="reset" value="　清 除　" name="B22" class="string"></td>
						  <td width="25%"></td> 
                        </tr> 
						 </form>
                      </table>
                    </div>
					
                 <!-- Work area end here --> 
                                        </DIV></td> 
                                </tr> 
                            </table></td> 
                    </tr> 
                    <!-- Footer area start here --> 
                    <tr> 
                        <td height="1"></td> 
                    </tr> 
                    <tr> 
                        <td height="20" bgcolor="#003366"></td> 
                    <tr> 
                        <td><div align="center" class="string"> ? Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
                    </tr> 
                    <!-- Footer area end here --> 
                </table></TD> 
        </TR> 
    </table> 
</div> 
<!-- 检索前的验证 -->
<script type="text/javascript">
	$("input[type='submit']").click(function(){
		var allEmpty = true;
		$("input[type='text']").each(function(){
			if(this.value != ''){
				allEmpty = false;
			}
		});
		$("select[id!='shenpi']").each(function(){
			if(this.value.trim() != ''){
				allEmpty = false;
			}
		});
		if(allEmpty == true){
			var rs = window.confirm("検索条件が入力されていないので、全検索してもよろしいでしょうか？");
			return rs;
		}
		
		
		var isSubmit = true;
		//每次检索清空错误消息
		$(".txt_error_message").html("");
		var eid = $("#eid").val();
		var regEid = /^\d{8}$/;
		if(eid !='' && regEid.test(eid)==false){
			$(".txt_error_message").append("EIDに有効な値が入力されていません。8桁の値を入力してください。。<br/>")
			isSubmit = false;
		}
		var regYear = /^\d{1,2}([.]\d)?$/;
		var year = $("#year").val();
		console.log(year);
		if(year !='' && regYear.test(year)==false){
			$(".txt_error_message").append("在日年限に有効な値が入力されていません。3桁の値を入力してください。。<br/>")
			isSubmit =false;
		}
		
		return isSubmit;
	});
</script>
</body>
</html>
