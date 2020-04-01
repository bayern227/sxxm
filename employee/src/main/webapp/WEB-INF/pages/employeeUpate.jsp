<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@include file="/common/calendar.jsp"%> 
<!DOCTYPE html>
<html>
<head>
<title>社員情报更新--JDDC	Internal Management	System</title>
<meta charset="utf-8">
<link href="css/css.css" rel="stylesheet">

</head>
<body> 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/pop.js"></script>
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0"> 
  <TR> 
    <TD> 
      <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border"> 
        <tr> 
          <td> 
	            <table border="0" width="100%" height="60" bgcolor="#003366"> 
		              <tr> 
			                <td width="11" rowspan="2"></td> 
			                <td width="65">
				                  <img src="img/hp_logo.gif" width="47" height="28">
				                  <br><span class="titleJDDC">JDDC</span> 
			                </td> 
			                <td rowspan="2"> 
				                  <table height="52" width="100%" border="0"> 
					                    <tr> 
					                      <td	colspan="2"	height="10">
					                        <p align="right" class="titleLeft"><font face="Cooper	Black">JDDC	Internal Management	System</font></p>
					                      </td>  
					                    </tr> 
					                    <tr> 
					                      <td	width=40%>&nbsp;</td> 
					                      <td><p class="titleCenter"> <font face="Times New Roman"> <b>员工情报更新</b></font></p></td> 
					                    </tr> 
				                  </table>
			                </td> 
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
                      <td width="750" align="center" valign="top">
	                      <div class="div_workarea_low"> 
	                      		<!-- Work area start here --> 
			                      <table width="100%"  cellspacing="1" > 
					                      <tr> 
											            <td><div class="div_error_message"> 
											            	<span class="txt_error_message">错误信息1<BR>错误信息2</span> 
											            </div></td> 
					                      </tr>
					                      <tr> 
					                        <td height="5"></td> 
					                      </tr>
			                      </table>
			                      
			                      <div>
			                       <form action="empUpdate" method="post" name="updateForm">
		                        <table width="100%" border="0" cellpadding="1" cellspacing="1"> 
							             
												    	<tr>
												    		<td colspan="4"><span class="txt_normal"><b>员工基本情报</b></span></td>
												    	</tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">EID</span></td> 
			                          <td class="txt_normal" ><div class="div_ankanNoDisp">${emp.eid }</div>
			                          <input type="hidden" id="eid_val" name="eid" value="${emp.eid }"/>
			                          </td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">邮件地址</span></td> 
			                          <td><input type="text" name="mailAddress" size="20" class="string_must_input" value="${emp.mailAddress }"><span class="mustInputStar">*</span></td> 
			                        </tr>
									            <tr><td><br></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名（中文）</span></td> 
			                          <td><input type="text" name="nameCn" size="20" class="string_must_input" value="${emp.nameCn }"><span class="mustInputStar">*</span></td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名（拼音）</span></td> 
			                          <td><input type="text" name="name" size="20" class="string_must_input" value="${emp.name }"><span class="mustInputStar">*</span></td>
			                        </tr> 
			                        <tr> 

			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名(日語汉字)</span></td> 
			                          <td><input type="text" name="nameKanji" size="20" class="string" value="${emp.nameKanji }"></td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名（日语假名）</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="${emp.nameKana }"></td> 			                          
			                        </tr> 
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">英文名</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="${emp.englishName }"></td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">直属经理</span></td> 
 						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
									<option>田中一郎</option>
									<option>坂口健に</option>
								</select><span class="mustInputStar">*</span></td>
			                        </tr>
									            <tr><td><br></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">出生年月日</span></td> 
			                          <td><input id="birthday" type="text" name="birthday" size="10" value="${emp.birthday }"><input type="image" src="img/calendar.gif" onclick="return showCalendar('birthday', 'y/mm/dd');"
onkeydown="javascript:return skip2component(this);"/>
									  						</td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">性別</span></td> 
															  <td><input type="radio" value="M" name="gender" ${emp.gender=='M'?"checked='checked'":"" }><span class="txt_normal">男</span>
																	<input type="radio" value="F" name="gender" ${emp.gender!='M'?"checked='checked'":""}><span class="txt_normal">女</span>
															  </td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">电话号码</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="00862138890001"></td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">手机号码</span></td> 
			                          <td ><input type="text" name="T123" size="20" class="string" value="00862138890001"></td> 
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">紧急联络电话</span></td> 
			                          <td colspan="3"><input type="text" name="T123" size="20" class="string" value="00862138890001"></td> 
			                        </tr>
															<tr><td><br></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">Location Code</span></td> 
			                          <td colspan="3">
																	<select size="1" name="location.code" class="string_must_input">
																		<option value=''>&nbsp;</option>
																		<option value='0001' >BL00811028004K00</option>
																		<option value='0002' selected>BL00811028004K10</option>
																		<option value='0003'>BL00811028004K20</option>
																		<option value='0004'>BL00811028004K30</option>
																	</select><span class="mustInputStar">*</span>
															  </td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">Site</span></td> 
															  <td>
																	<select size="1" name="site.code" class="string">
																	<c:forEach items="${siteList }" var="site">
																		<option value="${site.code }" ${site.code==emp.site.code?"selected='selected'":"" }>${site.name }</option>
																	</c:forEach>
																	</select>
															　</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">部门</span></td> 
									  						<td>
																		<select size="1" name="T2" class="string">
																			<option>JDCC</option>
																			<option>MDI</option>
																			<option>ENT</option>
																			<option>CME</option>
																		</select>
															　</td>
			                        </tr>
			                        <tr>
			                          <td width="134" class="tdLabel"><span class="txt_normal">员工种类</span></td> 
									  						<td>
																		<select size="1" name="T2" class="string">
																			<option>HP</option>
																			<option selected>BP</option>
																		</select>
															　</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">公司</span></td> 
															  <td>
																		<select size="1" name="T2" class="string">
																		  <option>&nbsp;</option>
																			<option>HP</option>
																			<option selected>Neusoft</option>
																		</select>
															　</td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">入职日</span></td> 
			                          <td><input type="text" name="T1242" size="10" value="2005/09/16" class="string_must_input"> 
			                              <input type="image" name="person" src="img/calendar.gif"><span class="mustInputStar">*</span>
									  						</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">退职日</span></td> 
			                          <td><input type="text" name="T1242" size="10" value=""> 
			                              <input type="image" name="person" src="img/calendar.gif">
									  						</td>
														  </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel" ><span class="txt_normal">在职状态</span></td>
															  <td>
																	<select size="1" name="T2" class="string">
																		<option>勤务中</option>
																		<option>长期休假</option>
																		<option>退职/option>
																	</select>
															　</td>
															  <td width="134" class="tdLabel"><span class="txt_normal">Billable区分</span></td> 
															  <td><input type="radio" value="B1" name="V4" checked><span class="txt_normal">Billable</span>
																	<input type="radio" value="B2" name="V4"><span class="txt_normal">NonBillable</span>
															  </td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">Manager区分</span></td> 
															  <td colspan="3"><input type="radio" value="B1" name="V1"><span class="txt_normal">是</span>
																	<input type="radio" value="B2" name="V1" checked><span class="txt_normal">否</span>
															  </td>
			                        </tr>
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>日本经历及Visa情报</b></span></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">在日年限</span></td> 
			                          <td><input style="text-align:right;" type="text" name="T123" size="5" class="string" value="3" ><span class="txt_normal">年</span></td> 
			                          <td width="134" class="tdLabel" ><span class="txt_normal">日語水平</span></td>
															  <td>
																	<select size="1" name="T2" class="string">
																		<option>Level1</option>
																		<option>Level2</option>
																		<option>Level3</option>
																    <option>NA</option>
																	</select>
															　</td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">是否有护照</span></td> 
									  						<td><input type="radio" value="V1" name="R1" ${emp.passportFlag=='1'?"checked='checked'":"" }><span class="txt_normal">有</span>
			                              <input type="radio" value="V1" name="R1" ${emp.passportFlag=='0'?"checked='checked'":"" }><span class="txt_normal">无</span>
									  						</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">护照有效期限</span></td> 
			                          <td><input type="text" name="T123" size="10" value="2008/10/20">
									       					  <input type="image" name="person" src="img/calendar.gif">
									  						</td> 
			                        </tr> 
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">是否有签证</span></td> 
									  						<td><input type="radio" value="V1" name="R2"><span class="txt_normal">有</span>
			                              <input type="radio" value="V1" name="R2" checked><span class="txt_normal">无</span>
									  						</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">签证有效期限</span></td> 
			                          <td><input type="text" name="T123" size="10" value="">
									       						<input type="image" name="person" src="img/calendar.gif">
									  						</td> 
								    					</tr>
															<tr>
			                          <td width="134" class="tdLabel"><span class="txt_normal">签证种类</span></td> 
															  <td>
																		<select size="1" name="T2" class="string">
																			<option>Permanent</option>
																			<option>Multiple</option>
																			<option>Single</option>
																	    <option selected>None/Expired</option>
																		</select>
			                          </td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">再入国期限</span></td> 
			                          <td><input type="text" name="T123" size="10" value="">
									      						<input type="image" name="person" src="img/calendar.gif">
									  						</td> 
			                        </tr>
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>JOB情报</b></span></td></tr>
																<tr align="left" >
				                      		<td colspan="4">
					              				<table border="0" width="675" cellspacing="1" cellpadding="1">
												
												  
													<tr class="trHeader">
														<td nowrap width="120" align="center" class="txt_table_head">GDCC JOB Title</td>
														<td nowrap width="150" align="center" class="txt_table_head">Delivery Capability 認定</td>
														<td nowrap width="120" align="center" class="txt_table_head">JDDC 组织 Title</td>
														<td nowrap width="80" align="center" class="txt_table_head">审批状态</td>
														<td nowrap align="center" class="txt_table_head">备注</td>
													</tr>
													<c:forEach items="${jobs }" var="job" varStatus="vs">
													<tr class="${vs.count%2==1?'trOdd':'trEven' }" >
														<td nowrap width="120" align="center" class="${job.confirm.code=='0003'?'txt_error_message':'txt_normal' }">${job.title.name }</td>
														<td nowrap width="150" align="center" class="${job.confirm.code=='0003'?'txt_error_message':'txt_normal' }">${job.capability.name }</td>
														<td nowrap width="120" align="center"class="${job.confirm.code=='0003'?'txt_error_message':'txt_normal' }">${job.position.name }</td>
														<td nowrap width="80" align="center" class="${job.confirm.code=='0003'?'txt_error_message':'txt_normal' }">${job.confirm.name }</td>
														<td nowrap align="center" class="${job.confirm.code=='0003'?'txt_error_message':'txt_normal' }">${job.rejectReason }
													   <c:if test="${job.confirm.code == '0001'}">
													   <div id="jobhidden">
													    <input type="hidden" name="job.title.code" value="${job.title.code }" />
													    	<input type="hidden" name="job.capability.code" value="${job.capability.code }"/>
													    	<input type="hidden" name="job.position.code" value="${job.position.code }"/>
													    	<input type="hidden" name="job.eid" value="${job.eid}"/>
													    	<input type="hidden" name="job.confirm.code" value="${job.confirm.code}"/>
													   </div>
													  
													   </c:if>
													    	
													    </td>
													</tr>
												</c:forEach>																											
												</table>
											</td>
										</tr>
				                      	<tr><td cols="4">
				                      		<input type="checkbox" id="jobcheck" /><span class="txt_normal">JOB情报变更</span>
				                      	</td></tr>
				                      	<tbody id="jobchange" style="display:none">
															<tr>
			                          <td width="134" class="tdLabel" nowrap><span class="txt_normal">GDCC JOB Title</span></td>
															  <td>
																		<select size="1" name="T2" class="string">
																		<c:forEach items="${titles}" var="title">
																		 	<option value="${title.code }">${title.name }</option>
																		</c:forEach>
																			
																		</select>
															　</td>
			                          <td width="150" class="tdLabel" nowrap><span class="txt_normal">Delivery Capability 认定</span></td>
									  						<td>
																		<select size="1" name="T2" class="string">
																			<c:forEach items="${deliverys}" var="del">
																		 		<option value="${del.code }">${del.name }</option>
																			</c:forEach>
																		</select>
															　</td>
															</tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">JDDC 组织 Title</span></td> 
															  <td colspan="3">
																		<select size="1" name="T2" class="string">
																			<c:forEach items="${jdbcs}" var="jdbc">
																		 		<option value="${jdbc.code }">${jdbc.name }</option>
																			</c:forEach>
																		</select>
															　</td>
			                        </tr>
			                        </tbody>
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>技能情报</b></span></td></tr>
															<tr><td colspan="4"><input type="button" value="　変　更　" name="update" class="string" id="skillButton"></td></tr>
			                        <tr> 
				                      	<td colspan="4">
				              						<table border="0" width="300" cellspacing="1" cellpadding="1">
																		<tr class="trHeader">
																			<td width="70%" align="center" class="txt_table_head">技能</td>
																			<td width="30%" align="center" class="txt_table_head">技能水平</td>
																		</tr>
																
																		<tbody id='skill'>																		
																		<c:forEach items="${skillList }" var="si" varStatus="vs">
																			<tr class="${vs.count%2==1?'trEven':'trOdd' }">
																				<td nowrap width="70%" align="center"><span class="txt_normal">${si.skill.name }</span>
																				<input type="hidden" name="skillcode" value="${si.skill.code }"/>
																				</td>
																				<td nowrap width="30%" align="center"><span class="txt_normal">${si.level.name }</span>
																				<input type="hidden" name="levelcode" value="${si.level.code }"/>
																				</td>
																			</tr>
																		</c:forEach>
																		
																		</tbody>																															
																	</table>
																</td>
			                        </tr>			                   			                        
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>资格认证情报</b></span></td></tr>
															<tr><td colspan="4"><input type="button" value="　変　更　" name="update" class="string" ></td></tr>
			                        <tr> 
				                      	<td colspan="4">
				              						<table border="0" width="300" cellspacing="1" cellpadding="1">
																		<tr class="trHeader">
																			<td width="70%" align="center" class="txt_table_head">资格认证</td>
																			<td width="30%" align="center" class="txt_table_head">取得日期</td>
																		</tr>
																		<tr class="trEven">
																			<td nowrap width="70%" align="center"><span class="txt_normal">MSDBA</span></td>
																			<td nowrap width="30%" align="center"><span class="txt_normal">2002/03/26</span></td>
																		</tr>
																		<tr class="trOdd">
																			<td nowrap width="70%" align="center"><span class="txt_normal">SCJP</span></td>
																			<td nowrap width="30%" align="center"><span class="txt_normal">2005/03/26</span></td>
																		</tr>																		
																	</table>
																</td>
			                        </tr>

			                        <tr>
			                        	<td colspan="4" align="center">
				                        	<table>
											  						<tr>
												  						<td width="200" align="center"><br>
												  								<input id="updateBtn" type="submit" value="　更　新　" name="Update" class="string" >
												  						</td>
						                          <td width="200" align="center"><br><input type="reset" value="　返　回　" name="Back" class="string" onclick="openWindow('employeQuery.htm')"></td>
					                        	</tr>
				                        	</table>
			                          </td>
			                        </tr> 			                        																																																                        			                        															
																		                        			                        
			                      
			                    	
			                      </table>  
			                      </form> 
			                      </div>  
                            <!-- Work area end here --> 
                        </div>
                      </td> 
                  </tr> 
              </table>
          </td> 
        </tr> 
        <!-- Footer area start here --> 
        <tr> 
            <td height="1"></td> 
        </tr> 
        <tr> 
            <td width="100" height="20" bgcolor="#003366"></td> 
        </tr>    
        <tr> 
            <td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
        </tr> 
        <!-- Footer area end here --> 
      </table>
    </TD> 
  </TR> 
</table>
<script type="text/javascript">
   $("#updateBtn").click(function(){
	   //之前完成一系列的验证
	   
	   //跟数据库的信息进行比对
	   var flag = true;
	   $.ajax({
		   type:"get",
		   url:"getUpdatetime",
		   data:{eid:$("#eid_val").val()},
		   async:false,
		   success:function(data){
			   console.log(data);
			   if(data != '${emp.updTimestamp}'){
				   flag = false;
			   }
		   }
	   });
	   if(flag==false){
		   alert("记录有所变更，无法更新，请返回后再次查看后进行更新");
		   return false;
	   }
	   var rs = window.confirm("请确认是否更新？");
	   return rs;
   });


	$("#jobcheck").change(function(){
		if(this.checked == true){
			$("#jobchange select").eq(0).children().each(function(){
				if(this.value == $("#jobhidden input[name='job.title.code']").val()){
					this.selected = true;
				}
			});
			$("#jobchange select").eq(1).children().each(function(){
				if(this.value == $("#jobhidden input[name='job.capability.code']").val()){
					this.selected = true;
				}
			});
			$("#jobchange select").eq(2).children().each(function(){
				if(this.value == $("#jobhidden input[name='job.position.code']").val()){
					this.selected = true;
				}
			});
			
			$("#jobchange").show();
		}else{
			$("#jobchange").hide();
		}
		
	});
	
	$("#skillButton").click(function(){
		var url = 'skillUpdate';
		var sonStyle="dialogWidth:560px;dialogHeight:580px;help:no;resizable:no;center:yes;scroll:yes;status:no";
		var param={};
		var arr = new Array();
		param.values = arr;
		$("#skill tr").each(function(){
			var oinput = this.getElementsByTagName("input");
			var skill = {skillcode: oinput[0].value, levelcode:oinput[1].value};
			arr.push(skill);
		});
		console.log(arr);
	/*	var skill1 = {"skillcode":"0001", "skillname":"J2EE", "levelcode":"0002","levelname":"Basic"};
		arr.push(skill1);
		var skill2 = {"skillcode":"0002", "skillname":".NET", "levelcode":"0002","levelname":"Basic"};
		arr.push(skill2);
		*/
		window.showModalDialog(url, param, sonStyle);
	});
	
	
	function changskill(data){
		var oskillbody = $("#skill");
		oskillbody.html("");
		for(var i=0; i < data.length; i++){
			var skill = data[i];
			//var newtr = $(".cloneskill").eq(0).clone(true);
			var newtr = $("<tr>");
			oskillbody.append(newtr);
			if(i % 2 ==0){
				newtr.addClass("trEven");
			}else{
				newtr.addClass("trOdd");
			}
			var newtd1 = $("<td>");
			newtr.append(newtd1);
			newtd1.attr("nowrap","nowrap").attr("width","70%").attr("align","center");
			var newspan1 = $("<span>");
			newspan1.addClass("txt_normal").html(skill.skillname);
			newtd1.append(newspan1);
			var newinput1 = $("<input type='hidden' name='skillcode'>");
			newinput1.val(skill.skillcode);
			newtd1.append(newinput1);
			
			var newtd2 = $("<td>");
			newtr.append(newtd2);
			newtd2.attr("nowrap","nowrap").attr("width","30%").attr("align","center");
			var newspan2 = $("<span>");
			newtd2.append(newspan2);
			newspan2.addClass("txt_normal").html(skill.levelname);
			var newinput2 = $("<input type='hidden' name='levelcode'>");
			newinput2.val(skill.levelcode);

			newtd2.append(newinput2);
			
			//newtr.find("input").eq(0).val(skill.skillcode);
			//newtr.find("input").eq(1).val(skill.levelcode);
			//newtr.find("span").eq(0).html(skill.skillname);
			//newtr.find("span").eq(1).html(skill.levelname);
			
			
		}
	}
</script>																													
</div> 
</body>
</html>
