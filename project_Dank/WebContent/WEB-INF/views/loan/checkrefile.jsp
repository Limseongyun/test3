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
								 <a href="check" class="btn btn-white btn-sm btn-border mr-1">������Ȳ��ȸ</a>
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
		<form action="refileupload" method="post" class="form-horizontal" enctype="multipart/form-data">
				<div class="row mt--4">
				<div class="col-sm-6 col-md-2"></div>
						<div class="col-sm-6 col-md-8">
								<div class="card card-stats card-round">
								
									<div class="card-body ">
										<div class="row">
											<div class="col-1"></div>
											<div class="col-10">
												
												<h1>��������</h1>
												<hr>
												
												<h3>÷�� ����</h3>
												
												<input type="hidden" value="${lc_num }" name="lc_num" id="lc_num"> 
												<div class="form-group row">
													<label for="file1" class="col-4" >�ֹε�ϵ</label>
													<div class="col-8">
														<input type="file" id="mfile1" name="mfile1" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file2" class="col-4">�ֹε���ʺ�</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile2" name="mfile2" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file3" class="col-4" >�ҵ�ݾ������</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile3" name="mfile3" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file4" class="col-4">���Ȯ�������</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile4" name="mfile4" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file5" class="col-4">�ǰ����賳�η�Ȯ�μ�</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile5" name="mfile5" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file6" class="col-4">�ǰ������ڰݵ��Ȯ�μ�</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile6" name="mfile6" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file7" class="col-4">�ٷμҵ��õ¡��������</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile7" name="mfile7" >
													</div>
												</div>
												<div class="form-group row">
													<label for="file8" class="col-4">����ڵ����</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile8" name="mfile8" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file9" class="col-4">������ֹε�ϵ</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile9" name="mfile9" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file10" class="col-4">������ֹε���ʺ�</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile10" name="mfile10" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file11" class="col-4">����ڼҵ�ݾ������</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile11" name="mfile11" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file12" class="col-4">����ڻ��Ȯ�������</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile12" name="mfile12" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file13" class="col-4">����ڰǰ����賳�η�Ȯ�μ�</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile13" name="mfile13" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file14" class="col-4">����ڰǰ������ڰݵ��Ȯ�μ�</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile14" name="mfile14" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file15" class="col-4">����ڱٷμҵ��õ¡��������</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile15" name="mfile15" >
													</div>
												</div>
												<div class="form-group row">
													<label for="file16" class="col-4">����ڻ���ڵ����</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile16" name="mfile16" >
													</div>
												</div>
											
												<div class="form-group row">
													<label for="file17" class="col-4">��Ÿ1</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile17" name="mfile17" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file18" class="col-4">��Ÿ2</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile18" name="mfile18" >
													</div>
												</div>
												
												<div class="form-group row">
													<label for="file19" class="col-4">��Ÿ3</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile19" name="mfile19" >
													</div>
												</div>
											
												<div class="form-group row">
													<label for="file20" class="col-4">��Ÿ4</label>
													<div class="col-8">
														<input type="file" class="form-control-file" id="mfile20" name="mfile20" >
													</div>
												</div>
												
												
												
											</div>
											<div class="col-1"></div>
										</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
					
			<p class="text-center"><input type="submit" class="btn btn-info" value="�����ϱ�"></p>
		</form>
			</div>
		
			


			
			<script>
		
	</script>

