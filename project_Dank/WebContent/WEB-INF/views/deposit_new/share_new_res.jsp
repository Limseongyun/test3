<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<div class="content">
	<!-- ����� Ǫ���� ���� ���� -->
	<div class="panel-header bg-primary-gradient">
		<div class="page-inner py-5">
			<div
				class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
				<div>
					<h2 class="text-white pb-2 fw-bold">����</h2>
					<h5 class="text-white op-7 mb-2">
						<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span
							class="flaticon-home" /></a> <span class="h2 mr-1"> > </span> <a
							href="" class="btn btn-white btn-sm btn-border mr-1">��������</a>
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
		<div class="row">

			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-head-row">
							<div class="card-title">�������� ��û</div>
						</div>
					</div>
					<div class="card-body">
						<div class="chart-container" style="min-height: 425px">
							<div class="row">
								<div class="col-md-4 ml-auto">
									<span class="h3">${sessionScope.member.mem_name } ����</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<span class="h5">${your_name}�԰��� ��������</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10">
									<form action="share_new_insert" method="post">
										<input type="hidden" name="your_name" value="${your_name}">
										<input type="hidden" name="shas_code" value="${shas_code}">
										<input type="hidden" name="sav_code" value="${sav_code}">
										<input type="hidden" name="your_email" value="${your_email}">
										<input type="hidden" name="deptype" value="${deptype}">
										<table class="table mt-1">
											<thead>

											</thead>
											<tbody>
												<tr>
													<th scope="col">�������� �̸�</th>
													<td>
														<div class="row">
															<div class="col-7">
																<input type="text" name="ac_name" class="form-control"
																	id="mem_email">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">���� �̸���</th>
													<td>
														<div class="row">
															<div class="col-7">
																<input type="email" name="mem_email" disabled="disabled"
																	class="form-control" id="mem_email"
																	value="${sessionScope.member.mem_email}">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">���� ��й�ȣ</th>
													<td>
														<div class="row">
															<div class="col-7">
																<input type="password" maxlength="4" name="ac_pwd"
																	class="form-control" id="ac_pwd"
																	placeholder="Enter Password">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td colspan="2">
														<div class="row">
															<div class="col-md-6 ml-auto mr-auto">
																<button class="btn btn-primary" type="submit">Ȯ��</button>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</form>
								</div>
							</div>
							<canvas id="statisticsChart"></canvas>
						</div>
						<div id="myChartLegend"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- ���� ������ �� -->

	</div>
</div>





<script>
	
</script>
