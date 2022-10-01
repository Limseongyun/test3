<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="new" class="btn btn-white btn-sm btn-border mr-1">�ű�</a>
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
										<c:choose>
											<c:when test="${saving != null }">
												<h4 class="card-title">${saving.sav_name }</h4>
											</c:when>
											<c:when test="${ins != null }">
												<h4 class="card-title">${ins.ins_name }</h4>
											</c:when>
										</c:choose>
									</div>
									<p class="card-category">
									���� ��ǰ / ��û</p>
								</div>
								
								<div class="card-body">
									<div class="row">
										<div class="col-8">
										
										<!--  form ���� -->
											<form action="deposit_newComplete" method="post" name="f">
												<input type="hidden" id="deptype" name="deptype" value="${deptype }">
												<input type="hidden" id="sav_code" name="sav_code" value="${saving.sav_code }">
												<input type="hidden" id="ins_code" name="ins_code" value="${ins.ins_code }">
												<table class="table mt-1">
												
												<tbody>
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
														<th scope="col">���º�й�ȣ</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="password" id="ac_pwd" name="ac_pwd"
																	class="form-control input-full" placeholder="(4�ڸ�)" maxlength="4">
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">��Ȯ��</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="password" id="ac_repwd" name="ac_repwd"
																	class="form-control input-full" placeholder="(4�ڸ�)" maxlength="4">
																</div>
																<div class="col-6" id="target"></div>
															</div>
															
														</td>
													</tr>
													<tr>
														<th scope="col">���� ��Ī</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="text" id="ac_name" name="ac_name" class="form-control input-full">
																</div>
															</div>
														</td>
													</tr>
													<c:if test="${ins != null }">
													<tr>
														<th scope="col">�Ⱓ(������)</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="text" id="ins_term" name="ins_term" class="form-control input-full">
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">�� ���Աݾ�</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="text" id="ins_putmoney" name="ins_putmoney" class="form-control input-full">
																</div>
															</div>
														</td>
													</tr>
													</c:if>
												</tbody>
												<tfoot>
													<tr>
														<th colspan="2">
															<div class="row">
																<div class="col-md-4 ml-auto">
																	<input type="button" class="btn btn-warning" id="update" value="�������� �����ϱ�"/>
																</div>
																<div class="col-md-8 ml-auto mr-auto">
																	<button type="button" class="btn btn-danger" id="cancel">���</button>
																	<input type="button" class="btn btn-success" value="Ȯ��" onclick="chk()">
																</div>
															</div>
														</th>
													</tr>
												</tfoot>
											</table>
										</form>
										<!--form �� -->
										
										
										
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
				location = "index";
			});
			$("#update").click(function() {
				location = "pri_info_chk2";
			});
			
			$("#codeCheck").click(function() {
				console.log("emailCode : "+emailCode);
				console.log("codenum : "+$("#codenum").val());
				if ($("#codenum").val() == emailCode) {
					$("#codenum").attr("readonly", true);
					$("#codeTarget").html('<button class="btn btn-success btn-sm" disabled="disabled">Success</button>');
					$("#codeTarget").append('<input type="hidden" value="success" id="successData" />')
				}else {
					$("#codeTarget").append('<input type="hidden" value="fail" id="successData" />')
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
		var oldVal = null;
		$("#ac_repwd").on("propertychange change keyup paste input", function() {
		    var currentVal = $(this).val();
		    if(currentVal == oldVal) {
		        return;
		    }
		    oldVal = currentVal;
		   	if($('#ac_repwd').val() !== $("#ac_pwd").val()){
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� �ٸ��ϴ�.").addClass('text-danger');
		    }else {
			   $('#target').removeClass('text-danger');
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� ��ġ�մϴ�.").addClass('text-primary');;
			}
		});
		
		$("#ac_pwd").on("propertychange change keyup paste input", function() {
		    var currentVal = $(this).val();
		    if(currentVal == oldVal) {
		        return;
		    }
		    oldVal = currentVal;
		   	if($('#ac_pwd').val() !== $("#ac_repwd").val()){
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� �ٸ��ϴ�.").addClass('text-danger');
		    }else {
			   $('#target').removeClass('text-danger');
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� ��ġ�մϴ�.").addClass('text-primary');;
			}
		});
		
		function chk() {
			if($("#ac_pwd").val().length !== 4){
				alert("��й�ȣ�� 4�ڸ��� �Է����ּ���");
			}else if($("#ac_pwd").val() === null){
				alert("��й�ȣ�� �Է����ּ���");
			}else if($("#ac_repwd").val() === null){
				alert("��й�ȣ ���Է��� �Է����ּ���");
			}else if($("#successData").val() !== 'success'){
				alert("�̸��� ������ ���ּ���.");
			}else if($("#ac_pwd").val() !== $("#ac_repwd").val()){
				alert("��й�ȣ�� Ȯ�����ּ���.");
			}else{
				f.submit();
			}
		}
	</script>
