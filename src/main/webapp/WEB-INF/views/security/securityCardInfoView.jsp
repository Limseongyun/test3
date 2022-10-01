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
								<div class="card-header">
									<div class="card-head-row card-tools-still-right">
										<h4 class="card-title">����ī��</h4>
									</div>
									<p class="card-category">
									��û �������� Ȯ��</p>
								</div>
								
								<div class="card-body">
									<div class="row">
										<div class="col-12">
										
										
										
										<!-- ����ī�� ��û form ���� -->
											<form action="securitycardcreate" method="post">
												<table class="table mt-1">
												<tbody>
													<tr>
														<th scope="col">
															���� ���� ��ȣ
														</th>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" value="${acNameNum }" readonly="readonly"
																	class="form-control input-full"/>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="col">�̸���</th>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" name="emailId" value="${mem_email }"
																	class="form-control input-full" readonly="readonly">
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
																	<button type="button" class="btn btn-danger" id="cancel">���Է�</button>
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
			//$(function() ����
			$("#cancel").click(function() {
				console.log("�� �ȵ�")
				location = "securitycard";
			});
		//$(function() ��
		})
			
	</script>
