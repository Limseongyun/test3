<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">ȭ����</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="chatGide" class="btn btn-white btn-sm btn-border mr-1">ȭ���� ��û</a>
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
										<h4 class="card-title">ä�� ȭ����</h4>
									</div>
									<p class="card-category">�����Է�</p>
								</div>
								
								<div class="card-body">
									<div class="row">
										<div class="col-12">
											<!-- �����Է� form ���� -->
												<div class="col-md-8 ml-auto mr-auto">
													<div class="form-group ">
														<label for="name" class="col-2 control-label">
															�̸�
														</label>
														<div class="row">
															<div class="col-8">
																<input type="hidden" id="mem_code" value="${mem_code}"/>
		   														<input type="text" class="form-control"  id="mem_name" name="mem_name" value="${mem_name}" readonly="readonly">
		   													</div>  
														</div>
													</div>
												</div>
												<div class="col-md-8 ml-auto mr-auto">
													<div class="form-group ">
														<label for="name" class="col-2 control-label">
															�ڵ�����ȣ
														</label>
														<div class="row">
															<div class="col-6">
		   														<input type="text" id="mem_phn" name="mem_phn" readonly="readonly"
																	class="form-control input-full" value="${mem_phn }">
		   													</div>  
		   													<div class="col-6">
																<button type="button" class="btn btn-primary" id="phnBtn">�����ڵ� ����</button>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-8 ml-auto mr-auto">
													<div class="form-group ">
														<label for="name" class="col-2 control-label">
															������ȣ
														</label>
														<div class="row">
															<div class="col-6">
		   														<input type="text" id="codenum" name="codenum" required="required"
																	class="form-control input-full">   
		   													</div>  
		   													<div class="col-6">
																<button type="button" class="btn btn-primary" id="codeCheck">Ȯ��</button>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-8 ml-auto mr-auto">
													<div class="form-group ">
														<div class="row">
															<div class="col-md-6 ml-auto mr-auto">
																<button class="btn btn-danger" id="cancel">���</button>
																<input id="chttCnsltGuide" type="button" class="btn btn-success" value="����">
															</div>
														</div>
													</div>
												</div>
										<!-- �����Է� form �� -->
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
				var smsCode = null;
				
				$("#cancel").click(function() {
					location = "index";
				});
				
				$("#codeCheck").click(function() {
					console.log("smsCode : "+smsCode);
					console.log("codenum : "+$("#codenum").val());
					if ($("#codenum").val() == smsCode) {
						$("#codenum").attr("readonly", true);
						$("#codeTarget").html('<button class="btn btn-success btn-sm" disabled="disabled">Success</button>');
						$("#codeTarget").append('<input type="hidden" value="success" name="successData" id="successData"/>');
						
						var path = "https://192.168.0.167:3000/chatGide";
						var roomNum = "room="+smsCode; // �� ��ȣ
						var user = "user="+$("#mem_name").val(); // ���� �̸�
						var mem_code = "userNum="+$("#mem_code").val(); // ��� ��ȣ 
						var url = path+'?' + roomNum + "&" + user + "&" + mem_code; // url �ۼ�
						$("#chttCnsltGuide").attr("onclick", "window.open('"+encodeURI(url,"UTF-8")+"','_blank','height=' + (screen.height) + ',width=' + (screen.width) + 'fullscreen=yes'+',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,left=0')");
						//$("#chttCnsltGuide").attr("onclick", "location = '"+encodeURI(url,"UTF-8")+"'");
					}else {
						$("#codeTarget").append('<input type="hidden" value="fail" name="successData" />')
					}
					
				})
				
				$('#phnBtn').click(function(e) {
					phoneNum = $("#mem_phn").val();
					swal({
						title: '������ȣ�� ���� �Ͻðڽ��ϱ�?',
						text: "��ȭ��ȣ�� Ȯ�����ּ���. \n"+phoneNum,
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
								url:"smssend?phoneNum="+phoneNum,
								success:function(data){
									smsCode = data;
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

