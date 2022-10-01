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
							href="search" class="btn btn-white btn-sm btn-border mr-1">��������</a>
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
									<span class="h3">${sessionScope.member.mem_name} ����</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10">
									<form action="" method="post" id="go">
									<input type="hidden" name="shas_code" value="${shas_code}">
									<input type="hidden" name="deptype" value="${deptype}">
									<input type="hidden" name="sav_code" value="${sav_code}">
									<input type="hidden" name="phone" value="" id="phone">
										<table class="table mt-1">
											<thead>

											</thead>
											<tbody>
												<tr>
													<th scope="col">���� �̸�</th>
													<td>
														<div class="row">
															<div class="col-md-5">
																<input type="text" class="form-control input-full" id="your_name" name="your_name"
																	placeholder="Enter Input">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">���� ��ȭ��ȣ</th>
													<td>
														<div class="row">
															<div class="phone col-3">
																<input type="text" class="form-control" id=""
																	value="010">
															</div>
															<div class="phone col-3">
																<input type="text" class="form-control" id="">
															</div>
															<div class="phone col-3">
																<input type="text" class="form-control" id="">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="col">���� �̸���</th>
													<td>
														<div class="row">
															<div class="col-8">
																<input type="email" name="your_email"
																	class="form-control" id="your_email"
																	placeholder="Enter Email">
															</div>
															<div class="col-4">
																<button type="button" class="btn btn-primary"
																	id="emailBtn">�����ϱ�</button>
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td colspan="2">
														<div class="row">
															<div class="col-md-6 ml-auto mr-auto">
																<button class="btn btn-primary" type="button"
																	id="submit">Ȯ��</button>
																<button type="button" class="btn btn-danger"
																	onclick="location='new'">���</button>
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
	$(document).ready(
			function() {
				var num = 0;
				$("#submit").click(function() {
					if (num === 1) {
						document.getElementById("go").action="share_new_res";
						var phone = "";
						$('.phone input').each(function(i, element) {
							phone += $(this).val();
						});
						$('#phone').attr("value", phone);
						$(this).attr("type", "submit");
						$(this).submit();
					} else {
						alert("��ϵ� �̸����� �ƴմϴ�.");
				
					}
				});

				$('#emailBtn').click(
						function(e) {
							email = $("#your_email").val();
							console.log(email);
							$.ajax({
								url : "checkEmail?email=" + email,
								success : function(data) {
									num = data;
									if (data === 1) {
										$('#emailBtn').removeClass().addClass(
												"btn btn-success");
										$('#emailBtn').html("����");
										function idchk(num) {

											$("idchk1").attr("action",
													"share_new_res");
											$("idchk1").submit();

											alert("�������� �ʴ� ���̵��Դϴ�.");

										}
									} else {
										$('#emailBtn').removeClass().addClass(
												"btn btn-danger");
										$('#emailBtn').html("����");
									}
								}
							});

						});
			});
</script>


