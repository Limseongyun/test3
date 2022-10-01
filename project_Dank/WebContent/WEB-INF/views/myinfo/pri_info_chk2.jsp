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
								 <a href="pri_info_chk" class="btn btn-white btn-sm btn-border mr-1">������ ��ȸ</a>
								  <span class="h2 mr-1"> > </span>
								 <a href="pri_info_chk" class="btn btn-white btn-sm btn-border mr-1">������ ����</a>
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
								</div>
								<div class="card-body">
									
									<!-- �⺻ ���� ���̺� ���� -->
										<form action="updatemyinfo" method="post">
											<table class="table mt-3">
												<tbody>
												<!-- �⺻ ���� -->
													<tr>
														<th scope="col" colspan="2"><span class="h3">���� ����</span></th>
													</tr>
													<tr>
														<td>�̸�</td>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" id="mem_name" name="mem_name" value="${memberVO.mem_name}" required="required" class="form-control input-full"/>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<td>�̸���</td>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" id="mem_email" name="mem_email" value="${memberVO.mem_email}" required="required" class="form-control input-full"/>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<td>��ȭ��ȣ</td>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" id="mem_phn" name="mem_phn" value="${memberVO.mem_phn}" required="required" class="form-control input-full"/>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<td>�������</td>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" id="mem_birth" name="mem_birth" value="${memberVO.mem_birth}" maxlength="6" required="required" class="form-control input-full"/>
																</div>
															</div>
														</td>
													</tr>
													<tr>
														<td>�ּ�</td>
														<td>
															<div class="row">
																<div class="col-12">
																	<input type="text" id="mem_loc" name="mem_loc" value="${memberVO.mem_loc}" required="required" class="form-control input-full"/>
																</div>
															</div>
														</td>
													</tr>
												<!-- �� ���� -->
												
													<tr>
														<th scope="col" colspan="2"><span class="h3">�� ����</span></th>
													</tr>
													<tr>
														<td>���Գ�¥</td>
														<td>${memberVO.mem_in_date}</td>
													</tr>
													<tr>
														<td>������������</td>
														<td>
														<c:choose>
															<c:when test="${memberVO.mem_pri_chk==1 }">
																����
															</c:when>
															<c:otherwise>
																����
															</c:otherwise>
														</c:choose>
														</td>
													</tr>
													<tr>
														<td>�������۵���</td>
														<td>
														<c:choose>
															<c:when test="${memberVO.mem_email_chk==1 }">
																����
															</c:when>
															<c:otherwise>
																����
															</c:otherwise>
														</c:choose>
														</td>
													</tr>
													<tr>
														<td>����ī���û</td>
														<td>
														<c:choose>
															<c:when test="${scurityCardYN==1 }">
																����
															</c:when>
															<c:otherwise>
																����
															</c:otherwise>
														</c:choose>
														</td>
													</tr>
													<tr>
														<td>OTP��û</td>
														<td>
														<c:choose>
															<c:when test="${otpYN==1 }">
																����
															</c:when>
															<c:otherwise>
																����
															</c:otherwise>
														</c:choose>
														</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th colspan="2">
															<div class="row">
																<div class="col-md-4 ml-auto">
																	<button type="button" class="btn btn-warning" id="update">��й�ȣ �����ϱ�</button>
																</div>
																<div class="col-md-8 ml-auto mr-auto">
																	<button class="btn btn-danger" id="cancel">���</button>
																	<input type="submit" class="btn btn-success" value="Ȯ��">
																</div>
															</div>
														</th>
													</tr>
												</tfoot>
											</table>
											</form>
										<!-- �⺻ ���� ���̺� �� -->
								</div>
							</div>
						</div>
					</div>
					<!-- ������ ���̾ƿ� �� -->
				</div>
			</div>
	<script>
	$(function() {
		$("#update").click(function() {
			location = "mem_pw_reset";
		})
		
	})
	</script>
