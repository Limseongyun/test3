<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">HD Bank</h2>
								<h5 class="text-white op-7 mb-2">�������. HD Bank ���� �������Դϴ�.</h5>
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
						<!-- ���� ��ư 4�� ���� -->
						<div class="col-md-2">
							<!-- ���� ��ȸ -->
							<div class="card card-primary bg-primary-gradient" href="#pills-home-nobd">
								<div class="card-body">
									<h2 class="mb-2">���� ��ȸ</h2>
									<p class="d-flex justify-content-between pb-1 pt-1">Check balance</p>
								</div>
							</div>
							<!-- ���� ��ȸ -->
							<!-- ���� ��ü -->
							<div class="card" id="transfer">
								<div class="card-body pb-0">
									<h2 class="mb-2">���� ��ü</h2>
									<p class="text-muted">Wire money</p>
								</div>
							</div>
							<!-- ���� ��ü -->
							<!-- �м� -->
							<!-- <div class="card" id="analysis">
								<div class="card-body pb-0">
									<h2 class="mb-2">�м�</h2>
									<p class="text-muted">Analysis</p>
								</div>
							</div> -->
							<!-- �м� -->
							<!-- ȯ�� ��ȸ -->
							<div class="card" id="exchangeRate">
								<div class="card-body pb-0">
									<h2 class="mb-2">ȯ�� ��ȸ</h2>
									<p class="text-muted">Exchange rate</p>
								</div>
							</div>
							<!-- ȯ�� ��ȸ -->
						</div>
						<!-- ���� ��ư 4�� �� -->
						<div class="col-md-10">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">������ȸ</div>
									</div>
								</div>
								<div class="card-body">
									<div class="chart-container" style="min-height: 425px">
									
									<div class="row">
									<div class="col-5">
									
									<form action="chkvalue" method="post" >
										<table class="table mt-1">
											<tbody>
												<tr>
													<th scope="col">���� ��ȣ</th>
													<td>
														<div class="col-md-12 p-0">
															<input type="text" class="form-control input-full" required="required"
															id="ac_num" name="ac_num" placeholder="(-���� �Է�)" maxlength="10">
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">���� ��ȣ</th>
													<td>
														<div class="col-md-12 p-0">
															<input type="password" class="form-control input-full"  required="required"
															id="ac_pwd" name="ac_pwd" placeholder="(4�ڸ�)" maxlength="4">
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">�ֹι�ȣ</th>
													<td>
														<div class="col-md-12 p-0">
															<input type="text" class="form-control input-full"  required="required"
															id="membirth" name="membirth" placeholder="(�� 6�ڸ�)" maxlength="6">
														</div>
													</td>
												</tr>
												<!-- <tr>
													<th scope="col">��ȸ����</th>
													<td>
														<div class="col-md-12 p-0">
															<label class="form-radio-label">
																<input class="form-radio-input" type="radio" name="type" checked="checked" value="1">
																<span class="form-radio-sign">��ü</span>
															</label>
															<label class="form-radio-label ml-12">
																<input class="form-radio-input" type="radio" name="type" value="2">
																<span class="form-radio-sign">�Ա�</span>
															</label>
															<label class="form-radio-label ml-12">
																<input class="form-radio-input" type="radio" name="type" value="3">
																<span class="form-radio-sign">���</span>
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">��ȸ ��¥</th>
													<td>
														<div class="col-md-12 p-0">
															<input class="form-control" type="date" id="searchDate" name="searchDate" required="required">
														</div>
													</td>
												</tr> -->
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">
														<div class="row">
															<div class="col-md-6 ml-auto mr-auto">
																<input type="hidden" id="check" value="${check }" />
																<input type="submit" value="��ȸ" class="btn btn-success"/>
															</div>
														</div>
													</th>
												</tr>
											</tfoot>
										</table>
										</form>
									</div>
									<!-- ���� ���̺� ���� -->
									<c:if test="${history !=null}">
									<div class="col-md-7">
										<table class="table mt-1">
											<thead>
												<tr>
													<th scope="col" colspan="4" style="text-align: center;">���¹�ȣ : ${ac_num }</th>
													
												</tr>
												<tr>
													<th scope="col">��¥</th>
													<th scope="col">���</th>
													<th scope="col">�ܾ�</th>
													<th scope="col">���</th>
												</tr>
											</thead>
											
											<tbody>
												<tr>
													<c:forEach var="e" items="${history}">
														<tr>
															<%-- <td scope="col">${e.r_num }</td> --%>
															<td scope="col">${e.dealdate }</td>
															<c:choose>
																<c:when test="${e.dep_money!=null }">
																<td scope="col"><span class="text-primary">+ ${e.dep_money }</span></td>
																</c:when>
																<c:when test="${e.wit_money!=null }">
																<td scope="col"><span class="text-danger">- ${e.wit_money }</span></td>
																</c:when>
															</c:choose>
															<td scope="col">${e.balance }</td>
															<td scope="col">${e.name }</td>
														
														</tr>
													</c:forEach>
												</tr>
												
											</tbody>
										</table>
										<!-- ��������ȣ ���� -->
										<div style="display: block; text-align: center;">
										<c:if test="${paging.startPage != 1 }">
										<!--���������� -->
											<a href="inquire_detail?ac_num=${ac_num }&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><</a>
										</c:if>
										<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
											var="p">
											<c:choose>
												<c:when test="${p == paging.nowPage }">
													<b>${p }</b>
												</c:when>
												<c:when test="${p != paging.nowPage }">
													<a href="inquire_detail?ac_num=${ac_num }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
												</c:when>
											</c:choose>
										</c:forEach>
										<c:if test="${paging.endPage != paging.lastPage}">
											<a href="inquire_detail?ac_num=${ac_num }&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">></a>
										</c:if>
									</div>
									<!-- ��������ȣ �� -->
									</div>
									</c:if>
									
								</div>
										<canvas id="statisticsChart"></canvas>
									</div>
									<div id="myChartLegend">
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
		/* ������ �̵� �ڹٽ�ũ��Ʈ ���� */
		$("#checkBalance").click(function() {
			location = "checkbalance";
		});
		$("#transfer").click(function() {
			location = "transfer";
		});
		$("#analysis").click(function() {
			location = "analysis";
		});
		$("#exchangeRate").click(function() {
			location = "exchangerate";
		});
		/* ������ �̵� �ڹٽ�ũ��Ʈ �� */
		
		$(function() {
			if ($("#check").val()=="no") {
				chk();
			}
		})
			
		function chk() {
			email = $("#mem_email").val();
			swal({
				title: '�Է��� ���� Ʋ�Ƚ��ϴ�.',
				type: 'warning',
				buttons:{
					confirm: {
						text : 'Ȯ��',
						className : 'btn btn-success'
					}
					
				}
			})
		}
	</script>

