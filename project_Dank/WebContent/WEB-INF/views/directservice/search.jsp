<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">�˻�</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="search" class="btn btn-white btn-sm btn-border mr-1">�˻����</a>
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
										<h4 class="card-title">�˻�</h4>
									</div>
									<p class="card-category">�˻� ���</p>
								</div>
								
								<div class="card-body">
									<div class="row">
										<div class="col-md-6 ml-auto mr-auto" style="text-align: center;">
											<table>
												<thead>
													<tr>
														<th>
															<!-- �˻�â ���� -->
															<div class="row">
																<div class="col-10">
																	<div class="collapse" id="search-nav">
																		<form class="navbar-left navbar-form nav-search mr-md-3">
																			<div class="input-group">
																				<div class="input-group-prepend">
																					<button type="submit" class="btn btn-search pr-1">
																						<i class="fa fa-search search-icon"></i>
																					</button>
																				</div>
																				<input type="text" placeholder="Search ..." class="form-control">
																			</div>
																		</form>
																	</div>
																</div>
																<div class="col-2">
																	<button class="btn btn-success">�˻�</button>
																</div>
															</div>
															<!-- �˻�â �� -->
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td> </td>
													</tr>
												</tbody>
												<tfoot>
												<tr>
													<th>
														<div class="row">
															<div class="col-md-12 ml-auto mr-auto" style="text-align: center;">
																<button class="btn btn-success">Ȯ��</button>
															</div>
														</div>
													</th>
												</tr>
											</tfoot>
											</table>
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
		$("#checkBalance").click(function() {
			location = "checkBalance";
		});
	</script>

