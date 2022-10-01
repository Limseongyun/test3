<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����������</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="security" class="btn btn-white btn-sm btn-border mr-1">����ī�� / OTP</a>
								 <span class="h2 mr-1"> > </span>
								 <a href="securitycard" class="btn btn-white btn-sm btn-border mr-1">����ī��</a>
								 <span class="h2 mr-1"> > </span>
								 <a href="securitycard" class="btn btn-white btn-sm btn-border mr-1">��û</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">���� ������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>

				
				
				<!-- ����� Ǫ���� ���� �� -->
				<div class="page-inner mt--5">
				<!-- ������ ���̾ƿ� ���� -->
				<div class="row row-card-no-pd">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-8">
										<!-- ����ī�� ��û form ���� -->
										<c:if test="${error=='f'}">
											<span class="h1 text-danger">�ٽ��Է� ���ּ���.</span>
										</c:if>
											<form action="securitycardinfoView" method="post">
												<table class="table mt-1">
												<tbody>
													<tr>
														<th scope="col">
															���� ���� ��ȣ
															
														</th>
														<td>
															<div class="row">
																<div class="col-8">
																	<select class="form-control" id="acNameNum" name="acNameNum">
																		<c:forEach var="e" items="${aclist}">
																		<c:choose>
																			<c:when test="${e.saving.sav_name=='0'}">
																				<option> ${e.ins.ins_name}-${e.ac_num }</option>
																			</c:when>
																			<c:otherwise>
																				<option> ${e.saving.sav_name}-${e.ac_num }</option>
																			</c:otherwise>
																		</c:choose>
																		</c:forEach>
																	</select>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">���� ��й�ȣ</th>
														<td>
															<div class="row">
																<div class="col-4">
																	<input type="password" id="accPwd" name="ac_pwd" required="required"
																	class="form-control input-full" placeholder="(4�ڸ�)" maxlength="4">
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">�̸���</th>
														<td>
															<div class="row">
																<div class="col-8">
																	<input type="email" id="mem_email" name="mem_email" readonly="readonly"
																	class="form-control input-full" value="${memberVO.mem_email }">
																</div>
																<div class="col-4">
																	<button type="button" class="btn btn-primary" id="emailBtn">�����ڵ� ����</button>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">������ȣ</th>
														<td>
															<div class="row">
																<div class="col-8">
																	<input type="text" id="codenum" name="codenum" required="required"
																	class="form-control input-full">                                      
																</div>
																<div class="col-4 mt-1" id="codeTarget">
																	<button type="button" class="btn btn-primary" id="codeCheck">Ȯ��</button>
																	
																</div>
															</div>
														</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th colspan="2">
															<div class="row">
																<div class="col-md-6 ml-auto mr-auto">
																	<button class="btn btn-danger" id="cancel">���</button>
																	<input type="submit" class="btn btn-success" value="Ȯ��">
																</div>
															</div>
														</th>
													</tr>
												</tfoot>
											</table>
										</form>
										<!-- ����ī�� ��û form �� -->
										
										
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ������ ���̾ƿ� �� -->
				</div>
			</div>


			
			
			
	<script>
		$(function() {
			var email = null;
			var emailCode = null;
			$("#cancel").click(function() {
				location = "security";
			});
			
			$("#codeCheck").click(function() {
				console.log("emailCode : "+emailCode);
				console.log("codenum : "+$("#codenum").val());
				if ($("#codenum").val() == emailCode) {
					$("#codenum").attr("readonly", true);
					$("#codeTarget").html('<button class="btn btn-success btn-sm" disabled="disabled">Success</button>');
					$("#codeTarget").append('<input type="hidden" value="success" name="successData" />')
				}else {
					$("#codeTarget").append('<input type="hidden" value="fail" name="successData" />')
				}
				
			})
			
			$('#emailBtn').click(function(e) {
				email = $("#mem_email").val();
				swal({
					title: '�̸����� ���� �Ͻðڽ��ϱ�?',
					text: "�̸����� Ȯ�����ּ���. \n"+email,
					type: 'warning',
					buttons:{
						confirm: {
							text : '����',
							className : 'btn btn-success'
						},
						cancel: {
							text : '���',
							visible: true,
							className: 'btn btn-danger'
						}
					}
				}).then((Delete) => {
					if (Delete) {
						$.ajax({
							url:"emailsend?email="+email,
							success:function(data){
								emailCode = data;
							}
						})
						swal({
							title: '���۵Ǿ����ϴ�.',
							text: '���۵� �ڵ带 �Է����ּ���.',
							type: 'success',
							buttons : {
								confirm: {
									text : 'Ȯ��',
									className : 'btn btn-success'
								}
							},
							
						});
					} else {
						swal.close();
					}
				});
			});
		})
			
	</script>
