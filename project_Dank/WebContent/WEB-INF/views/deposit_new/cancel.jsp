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
								 <a href="deposite_cancle" class="btn btn-white btn-sm btn-border mr-1">���Գ���</a>
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
									<div class="row">
									<div class="col-md-1 col-lg-1"></div>
										<div class="col-md-10 col-lg-10">
											
										<!-- ���� ���� ���� -->
											<c:if test="${savlist != null}">
												<table class="table">
													<thead>
														<tr><th colspan="4" style="border-style: none;" ><span class="h2">����� ���� ��ǰ</span></th></tr>
													</thead>
													<tbody>
														<c:forEach items="${savlist }" var="e">
														<form action="cancel_input_info" method="post">
														<tr>
															<td style="border-style: none; width: 60px; ">��</td >
															<td  style="border-style: none; width: 140px;">${e.saving.sav_name }</td>
															<td style="width: 400px; border-style: none;">���¹�ȣ : ${e.ac_num }</td>
															<td style="border-style: none;">
																<input type="hidden" id="ac_code" name="ac_code" value="${e.ac_code }">
																<input type="submit" class="btn btn-info" value="�����ϱ�">
															</td>
														</tr>
														</form>
														<tr>
															<td style="border-style: none;"></td><td style="border-style: none;" >���Գ�¥ :</td>
															<td style="border-style: none;"> ${e.ac_start_date }</td>
														</tr>
														<tr>
															<td style="border-style: none;"></td>
															<td style="border-style: none;">�ܾ� : </td>
															<td style="border-style: none;">${e.ac_balance }��</td>
															<!-- <td style="border-style: none;"><a href="deposite_cancle_check_select">�������� ���� ��������</a></td> -->
														</tr>
														</c:forEach>
													</tbody>
												</table>
											</c:if>
										<!-- ���� ���� ���� -->
											<c:if test="${inslist != null}">
													<table class="table">
														<thead>
															<tr><th colspan="4" style="border-style: none;" ><span class="h2">���ݽ� ���� ��ǰ</span></th></tr>
														</thead>
														<tbody>
															<form action="cancel_input_info" method="post">
															<c:forEach items="${inslist }" var="e">
															<tr>
																<td style="border-style: none; width: 60px; ">��</td >
																<td  style="border-style: none; width: 140px;">${e.ins.ins_name }</td>
																<td style="width: 400px; border-style: none;">���¹�ȣ : ${e.ac_num }</td>
																<td style="border-style: none;">
																	<input type="hidden" id="ac_code" name="ac_code" value="${e.ac_code }">
																	<input type="submit" class="btn btn-info" value="�����ϱ�">
																</td>
															</tr>
															<tr>
																<td style="border-style: none;"></td><td style="border-style: none;" >���Գ�¥ :</td>
																<td style="border-style: none;"> ${e.ac_start_date }</td>
															</tr>
															<tr>
																<td style="border-style: none;"></td><td style="border-style: none;">�ܾ� : </td>
																<td style="border-style: none;">${e.ac_balance }��</td>
																<!-- <td style="border-style: none;"><a href="deposite_cancle_check_select">�������� ���� ��������</a></td> -->
															</tr>
															</c:forEach>
															</form>
														</tbody>
													</table>
											</c:if>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						</div>
					<!-- ���� ������ �� -->
					
					<!-- ������ ���̾ƿ� �� -->
				</div>
			</div>

			
	<script>
			
	</script>
