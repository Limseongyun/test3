<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


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
						<!-- ���� ��ư ���� -->
						<div class="col-md-2">
							<!-- ���� ��ȸ -->
							<div class="card" id="checkBalance">
								<div class="card-body pb-0">
									<h2 class="mb-2">���� ��ȸ</h2>
									<p class="text-muted">Check balance</p>
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
							<div class="card card-primary bg-primary-gradient">
								<div class="card-body">
									<h2 class="mb-2">ȯ�� ��ȸ</h2>
									<p class="d-flex justify-content-between pb-1 pt-1">Exchange rate</p>
								</div>
							</div>
							<!-- ȯ�� ��ȸ -->
						</div>
						<!-- ���� ��ư �� -->
						<div class="col-md-10">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">ȯ�� ��ȸ</h4>
									<h4 class="card-title" id="erdatetarget">ȯ�� ��ȸ</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="multi-filter-select" class="display table table-striped table-hover" >
											<thead>
												<tr>
													<th >��ȭ��</th>
													<th >������Ƕ�</th>
													<th >�����ĽǶ�</th>
													<th >�۱�_����ȯ<br />�����Ƕ�</th>
													<th >�۱�_����ȯ<br />�����Ƕ�</th>
													<th >�Ÿű�����</th> 
												</tr>
											</thead>
											<tfoot>
												<tr>
													<th >��ȭ��</th>
													<th >������Ƕ�</th>
													<th >�����ĽǶ�</th>
													<th >�۱�_����ȯ<br />�����Ƕ�</th>
													<th >�۱�_����ȯ<br />�����Ƕ�</th>
													<th >�Ÿű�����</th> 
												</tr>
											</tfoot>
											<tbody id="ex_datatable">
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>			
					<!-- ���� ������ �� -->
					<!-- ������ ���̾ƿ� �� -->
				</div>
			</div>
			
	<script id="scriptTarget"></script>
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
			$.ajax({
				url: "exchangeRateJson",
				success:function(data){
					var erj = decodeURIComponent(data);
					$("#scriptTarget").html(erj);
					for(var ele in exView){ 
						if (typeof(exView[ele])==="string") {
							$("#erdatetarget").html('<span class="h2">��ȸ ������ : '+'<span class="text-primary">'+exView[ele]+'</span></span>')
						}else {
							var html = "";
							for(var ele2 in exView[ele]){ 
								html += "<tr>";
								for (var e in exView[ele][ele2]) {
									if (exView[ele][ele2][e] == "0.00") {
										html += "<td>"+"-"+"</td>";
									}else {
										html += "<td>"+exView[ele][ele2][e]+"</td>";
									}
								}
								html +="</tr>" ;
							}
							$("#ex_datatable").html(html)
						}
					}
				}
			})
			setTimeout(function() {
				$('#basic-datatables').DataTable({
				});

				$('#multi-filter-select').DataTable( {
					"pageLength": 5,
					initComplete: function () {
						this.api().columns().every( function () {
							var column = this;
							var select = $('<select class="form-control"><option value=""></option></select>')
							.appendTo( $(column.footer()).empty() )
							.on( 'change', function () {
								var val = $.fn.dataTable.util.escapeRegex(
									$(this).val()
									);

								column
								.search( val ? '^'+val+'$' : '', true, false )
								.draw();
							} );

							column.data().unique().sort().each( function ( d, j ) {
								select.append( '<option value="'+d+'">'+d+'</option>' )
							} );
						} );
					}
				});
			}, 500)
			
		})
		
			
	</script>

