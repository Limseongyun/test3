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
								<div class="card-header">
									<div class="card-head-row card-tools-still-right">
										<h4 class="card-title">����ī��</h4>
									</div>
									<p class="card-category">
									��û</p>
								</div>
								
								<div class="card-body">
									<div class="row">
										<div class="col-8">
										
										
										
										<!-- ����ī�� ��û form ���� -->
											<form action="securitycardinfoView" method="post">
											<input type="hidden" value="${mem_num}" />
												<table class="table mt-1">
												<tbody>
													<tr>
														<th scope="col">
															���� ���� ��ȣ
														</th>
														<td>
															<div class="row">
																<div class="col-8">
																	<select class="form-control" id="accSel" name="ac_num">
																		<option>�ְŷ� ���� - 110-12356</option>
																		<option>���۰ŷ����� - 120-12556</option>
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
																<div class="col-4">
																	<input type="text" id="emailId" name="emailId" required="required"
																	class="form-control input-full" placeholder="Email">
																</div>
																<div class="col-4">
																	<select class="form-control" id="emailBack" name="emailBack">
																		<option>@naver.com</option>
																		<option>@gmail.com</option>
																	</select>
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
																	<input type="text" id="codenum" name="codenum"
																	class="form-control input-full">                                      
																</div>
																<div class="col-4 mt-1" id="codeTarget">
																	<button type="button" class="btn btn-primary" id="codeCheck">Ȯ��</button>
																	
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">�ֹε�Ϲ�ȣ</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="text" id="cnn" name="cnn" re
																	class="form-control input-full" placeholder="(�� 6�ڸ�)" maxlength="6">
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
					$("#codeTarget").html('<button class="btn btn-success btn-sm" disabled="disabled">Success</button>');
					$("#codeTarget").append('<input type="hidden" value="success" name="successData" />')
				}
				
			})
			
			$('#emailBtn').click(function(e) {
				email = $("#emailId").val()+ $("#emailBack").val();
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
