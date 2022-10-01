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
								 <a href="deposite_cancle" class="btn btn-white btn-sm btn-border mr-1">����</a> 
								 <span class="h2 mr-1"> > </span>
								 <a href="deposite_cancle_check_select" class="btn btn-white btn-sm btn-border mr-1">����Ȯ��</a>
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
				<div class="row">
							
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">����</div>
								</div>
								<div class="card-body" style="margin-bottom: 20px; margin-top: 0">
								<form action="cancelComplete" method="post">
									<div class="row">
										<div class="col-md-10 col-lg-10">
											<table class="table table-hover" style="margin-left: 20%;" >
												<thead>
													<tr><th colspan="2" style="border-style: none;" >
														<c:choose>
															<c:when test="${account.saving.sav_code != 0 }">
																<span class="h2">����� ���� ��ǰ</span>
															</c:when>
															<c:when test="${account.ins.ins_code != 0 }">
																<span class="h2">���ݽ� ���� ��ǰ</span>
															</c:when>
														</c:choose>
													</th></tr>
												</thead>
												<tbody >
													<c:choose>
															<c:when test="${account.saving.sav_code != 0 }">
																<tr>
																	<td style="border-style: none; width: 140px;">��ǰ��</td>
																	<td style="width: 400px; border-style: none;">${account.saving.sav_name}</td>
																</tr>
																<tr>
																	<td style="border-style: none;" >���¹�ȣ</td>
																	<td style="border-style: none;">${account.ac_num}</td>
																</tr>
																<tr>
																	<td style="border-style: none;" >���� ������</td>
																	<td style="border-style: none;">2020.00.00</td>
																</tr>
																<tr>
																	<td style="border-style: none;">��ȸ�Ͻ� </td>
																	<td style="border-style: none;">2020.00.00 14:12:33</td>
																</tr>
																<tr>
																	<td style="border-style: none;">���� �ܾ� </td>
																	<td style="border-style: none;">${account.ac_balance}</td>
																</tr>
																<tr >
																	<td style="border-style: none;">���� ����� </td>
																	<td style="border-style: none;">5,004,223</td>
																</tr>
																<tr>
																	<td style="border-style: none;">�������� </td>
																	<td style="border-style: none;"> 5,362</td>
																</tr>
															</c:when>
															<c:when test="${account.ins.ins_code != 0 }">
																<span class="h2">���ݽ� ���� ��ǰ</span>
															</c:when>
														</c:choose>
												</tbody>
												
											</table>
											<hr/>
											<div style="margin-left: 60%; margin-top: 30px;" >
												<input type="button" class="btn btn-info" value="���" id="cancel">
												<input type="submit" class="btn btn-info" value="�����ϱ�">
											</div>
										</div>
									</div>
								</form>
								</div>
							</div>
						</div>
					</div>
					<!-- ���� ������ �� -->
					
					<!-- ������ ���̾ƿ� �� -->
				</div>
			</div>

	<script>
	$('#cancel').click(function() {
		location='index';
	});
	</script>
