<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

			<div class="content">
			<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="application" class="btn btn-white btn-sm btn-border mr-1">�����û</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">���� ������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>
				<!--���� ��û   -->
				<div class="row mt--4">
				<div class="col-sm-6 col-md-2"></div>
						<div class="col-sm-6 col-md-8">
								<div class="card card-stats card-round">
								
									<div class="card-body ">
										<div class="row">
											<div class="col-1"></div>
											<div class="col-10">
												<h1 class="text-center">��û�� �Ϸ�Ǿ����ϴ�!</h1>
												<h3 class="text-center">�Ϸ�� ��û�� �������� ���� �Ŀ� ���� �� �� �ֽ��ϴ�.</h3>
												<h3 class="text-center">��û�� ������ ��������� ��Ȳ ��ȸ�� ���� Ȯ���� �ֽʽÿ�.</h3>
											</div>
											<div class="col-1"></div>
										</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
					<div class="row">
					<div class="col-4"></div>
					<div class="col-2">
			<p class="text-center"><button type="button" class="btn btn-info" onclick="location='index'">Ȩ����</button></p>	
					</div>
					<div class="col-2">
			<p class="text-center"><button type="button" class="btn btn-info" onclick="location='check'">���� ��Ȳ ��ȸ</button></p>	
					</div>
		
					<div class="col-4"></div>
					</div>
			</div>
		
			


			
		
			<script>

			history.pushState(null, null, location.href);

			window.onpopstate = function(event) {	

			history.go(1);
	     
	</script>


