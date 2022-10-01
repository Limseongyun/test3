<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
								 <a href="" class="btn btn-white btn-sm btn-border mr-1">����</a> 
								 <span class="h2 mr-1"> > </span>
								 <a href="" class="btn btn-white btn-sm btn-border mr-1">�м�</a>
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
										<h4 class="card-title">���ñ��� �� ��</h4>
										<div class="card-tools">
											<a data-toggle="collapse" href="#todayPay" class="collapsed" aria-expanded="false">
												<button class="btn btn-icon btn-link btn-primary btn-xs">
													<span class="fa fa-angle-down"></span>
												</button>
											</a>
											<button class="btn btn-icon btn-link btn-primary btn-xs btn-refresh-card"><span class="fa fa-sync-alt"></span></button>
											<button class="btn btn-icon btn-link btn-primary btn-xs"><span class="fa fa-times"></span></button>
										</div>
									</div>
								</div>
								<div class="card-body collapse" id="todayPay">
									<div class="row">
										<div class="col-md-10">
											<div class="card">
											<div class="card-header">
												<div class="card-title">4�� �� ���� : 500,000,000��</div>
												<div class="card-title">5�� �� ���� : 2,500,000,000��</div>
											</div>
												<div class="card-body">
													<div class="chart-container">
														<canvas id="barChart"></canvas>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- �Һ�޷� ���� -->
					<div class="row row-card-no-pd">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row card-tools-still-right">
										<div class="col-md-1 p-0">
											<h4 class="card-title">�Һ�޷�</h4>
										</div>
										
										<div class="col-md-2 p-0">
															<select class="form-control" id="exampleFormControlSelect1">
																<option>5��</option>
																<option>4��</option>
																<option>3��</option>
																<option>2��</option>
																<option>1��</option>
															</select>
														</div>
										<div class="card-tools">
											<a data-toggle="collapse" href="#calPay" class="collapsed" aria-expanded="false">
												<button class="btn btn-icon btn-link btn-primary btn-xs">
													<span class="fa fa-angle-down"></span>
												</button>
											</a>
											<button class="btn btn-icon btn-link btn-primary btn-xs btn-refresh-card"><span class="fa fa-sync-alt"></span></button>
											<button class="btn btn-icon btn-link btn-primary btn-xs"><span class="fa fa-times"></span></button>
										</div>
									</div>
								</div>
								<div class="card-body collapse" id="calPay">
									<div class="row">
										<div class="col-md-12">
											<div class="card">
											<div class="card-header">
												<div class="card-title text-primary">5�� �� �Һ� : 5,700,000��</div>
												<div class="card-title text-danger">5�� �� ���� : 6,000,000��</div>
											</div>
												<div class="card-body">
													<table class="table table-bordered table-head-bg-info table-bordered-bd-info mt-0" id="consumptionCalendar">
														<thead>
															<tr>
																<th colspan="7" style="text-align: center;">
																<span class="h1">5��</span>
																</th>
															</tr>
															<tr>
																<th scope="col" style="text-align: center;">��</th>
																<th scope="col" style="text-align: center;">��</th>
																<th scope="col" style="text-align: center;">ȭ</th>
																<th scope="col" style="text-align: center;">��</th>
																<th scope="col" style="text-align: center;">��</th>
																<th scope="col" style="text-align: center;">��</th>
																<th scope="col" style="text-align: center;">��</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td>1<p class="text-primary">60,000</p></td>
																<td>2</td>
															</tr>
															<tr>
																<td>3</td>
																<td>4<p class="text-primary">90,000</p></td>
																<td>5</td>
																<td>6</td>
																<td>7</td>
																<td>8</td>
																<td>9<p class="text-primary">20,000</p></td>
															</tr>
															<tr>
																<td>10<p class="text-danger">6,000,000</p></td>
																<td>11<p class="text-primary">30,000</p></td>
																<td>12<p class="text-primary">20,000</p></td>
																<td>13<p class="text-primary">10,000</p></td>
																<td>14<p class="text-primary">50,000</p></td>
																<td>15<p class="text-primary">60,000</p></td>
																<td>16<p class="text-primary">380,000</p></td>
															</tr>
															<tr>
																<td>17</td>
																<td>18</td>
																<td>19</td>
																<td>20</td>
																<td>21</td>
																<td>22</td>
																<td>23</td>
															</tr>
															<tr>
																<td>24</td>
																<td>25</td>
																<td>26</td>
																<td>27</td>
																<td>28</td>
																<td>29</td>
																<td>30</td>
															</tr>
															<tr>
																<td>31</td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- �Һ�޷� �� -->
					<!-- ī�װ��� �Һ� ���� -->
					<div class="row row-card-no-pd">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row card-tools-still-right">
										<div class="col-md-2 p-0">
											<h4 class="card-title">ī�װ��� �Һ�</h4>
										</div>
										
										<div class="col-md-2 p-0">
															<select class="form-control" id="exampleFormControlSelect1">
																<option>5��</option>
																<option>4��</option>
																<option>3��</option>
																<option>2��</option>
																<option>1��</option>
															</select>
														</div>
										<div class="card-tools">
											<a data-toggle="collapse" href="#catePay" class="collapsed" aria-expanded="false">
												<button class="btn btn-icon btn-link btn-primary btn-xs">
													<span class="fa fa-angle-down"></span>
												</button>
											</a>
											<button class="btn btn-icon btn-link btn-primary btn-xs btn-refresh-card"><span class="fa fa-sync-alt"></span></button>
											<button class="btn btn-icon btn-link btn-primary btn-xs"><span class="fa fa-times"></span></button>
										</div>
									</div>
								</div>
								<div class="card-body collapse" id="catePay">
									<div class="row">
										<div class="col-md-10">
											<div class="card">
											<div class="card-header">
												<div class="card-title">5�� �� ���� : 2,500,000,000��</div>
											</div>
												<div class="card-body">
													<div class="chart-container">
														<canvas id="doughnutChart" style="width: 50%; height: 50%"></canvas>
													</div>
													<div class="row">
														<div class="col-4">
															<table class="table table-hover">
																<thead>
																	
																</thead>
																<tbody>
																	<tr>
																		<th><span class="h3 text-danger">�ĺ�</span></th>
																		<td><span class="h3 text-danger">50,000</span></td>
																	</tr>
																	<tr>
																		<th><span class="h3 text-warning">����</span></th>
																		<td><span class="h3 text-warning">300,000</span></td>
																	</tr>
																	<tr>
																		<th><span class="h3 text-primary">�����</span></th>
																		<td><span class="h3 text-primary">90,000</span></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ī�װ��� �Һ� �� -->
					<!-- ������ ���̾ƿ� �� -->
				</div>
			</div>


		
			<script>
			$(function() {
				$("#checkBalance").click(function() {
					location = "checkBalance";
				});
				
				var barChart = document.getElementById('barChart').getContext('2d'),
				doughnutChart = document.getElementById('doughnutChart').getContext('2d');

				var myBarChart = new Chart(barChart, {
					type: 'bar',
					data: {
						labels: ["4�� 1��", "4�� 2��", "4�� 3��", "4�� 4��", "5�� 1��", "5�� 2��", "5�� 3��", "5�� 4��"],
						datasets : [{
							label: "��",
							backgroundColor: 'rgb(23, 125, 255)',
							borderColor: 'rgb(23, 125, 255)',
							data: [10.5, 20.3, 5, 16, 15, 30, 24, 15],
						}],
					},
					options: {
						responsive: true, 
						maintainAspectRatio: false,
						scales: {
							yAxes: [{
								ticks: {
									beginAtZero:true
								}
							}]
						},
					}
				});

				var myDoughnutChart = new Chart(doughnutChart, {
					type: 'doughnut',
					data: {
						datasets: [{
							data: [50000, 300000, 90000],
							backgroundColor: ['#f3545d','#fdaf4b','#1d7af3']
						}],

						labels: [
						'�ĺ�',
						'����',
						'�����'
						]
					},
					options: {
						responsive: true, 
						maintainAspectRatio: false,
						legend : {
							position: 'bottom'
						},
						layout: {
							padding: {
								left: 20,
								right: 20,
								top: 20,
								bottom: 20
							}
						}
					}
				});
			})
			
	</script>
