<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content">
	<!-- ����� Ǫ���� ���� ���� -->
	<div class="panel-header bg-primary-gradient">
		<div class="page-inner py-5">
			<div
				class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
				<div>
					<h2 class="text-white pb-2 fw-bold">����������</h2>
					<h5 class="text-white op-7 mb-2">
						<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home" /></a> 
							<span class="h2 mr-1"> > </span> 
							<a href="mem_pw_reset_input" class="btn btn-white btn-sm btn-border mr-1">�̸��� ����</a> 
							<span class="h2 mr-1"> > </span> 
							<a href="mem_pw_reset" class="btn btn-white btn-sm btn-border mr-1">��ȣ �缳��</a>
					</h5>
				</div>
				<div class="ml-md-auto py-2 py-md-0">
					<a href="checkbalance"
						class="btn btn-white btn-border btn-round mr-2">���� ������</a> <a
						href="qna" class="btn btn-secondary btn-round">������</a>
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
						<p class="card-category">��ȣ �缳��</p>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-8 ml-auto mr-auto">
								<div class="table-responsive table-hover table-sales">
									<div style="margin: auto;">
										<div style="margin: auto;">
										<!-- ���̺� ���� -->
											<form action="mem_pw_success" method="post" name="f">
											<table class="table mt-3">
												<tbody>
													<tr>
														<td>�̸�</td>
														<td>
															<div class="col-md-9 p-0">
																<input type="text" class="form-control input-full"
																	id="inlineinput" value="${memberVO.mem_name }"
																	readonly="readonly">
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">��й�ȣ</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="password" id="pwd" name="pwd"
																	class="form-control input-full" placeholder="(��й�ȣ)">
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">��Ȯ��</th>
														<td>
															<div class="row">
																<div class="col-6">
																	<input type="password" id="repwd" name="repwd"
																	class="form-control input-full" placeholder="(��й�ȣ ��Ȯ��)">
																</div>
																<div class="col-6" id="target"></div>
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
																	<input type="button" class="btn btn-success" value="Ȯ��" onclick="chk()">
																</div>
															</div>
														</th>
													</tr>
												</tfoot>
											</table>
											</form>
											<!-- ���̺� �� -->
										</div>
									</div>
								</div>
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
	/* ȭ���� �� �ε��� ���� ���� */
	
	// ��ҹ�ư
		$("#cancel").click(function() {
			location = "index";
		});
	// �н����尡 ��ġ�ϴ��� Ȯ���Ѵ�.
		var oldVal = null;
		$("#repwd").on("propertychange change keyup paste input", function() {
		    var currentVal = $(this).val();
		    if(currentVal == oldVal) {
		        return;
		    }
		    oldVal = currentVal;
		   	if($('#repwd').val() !== $("#pwd").val()){
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� �ٸ��ϴ�.").addClass('text-danger');
		   }else {
			   $('#target').removeClass('text-danger');
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� ��ġ�մϴ�.").addClass('text-primary');;
			}
		});
		
		$("#pwd").on("propertychange change keyup paste input", function() {
		    var currentVal = $(this).val();
		    if(currentVal == oldVal) {
		        return;
		    }
		    oldVal = currentVal;
		    console.log("����");
		   	if($('#pwd').val() !== $("#repwd").val()){
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� �ٸ��ϴ�.").addClass('text-danger');
		   }else {
			   $('#target').removeClass('text-danger');
			   $('#target').html("�Է��Ͻ� ��й�ȣ�� ��ġ�մϴ�.").addClass('text-primary');;
			}
		});
	
	/* ȭ���� �� �ε��� ���� �� */
	})
	
	// Ȯ�� ��ư�� ������ �۵�
		function chk() {
		console.log("chk �۵�");
			if($("#pwd").val() === null){
				alert("��й�ȣ�� �Է����ּ���");
			}else if($("#repwd").val() === null){
				alert("��й�ȣ ���Է��� �Է����ּ���");
			}else if($("#pwd").val() !== $("#repwd").val()){
				alert("��й�ȣ�� Ȯ�����ּ���.");
			}else{
				f.submit();
			}
		}
	
	
</script>
