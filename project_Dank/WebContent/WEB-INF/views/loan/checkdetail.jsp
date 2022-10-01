<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">����������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row mt--4">
				<div class="col-sm-6 col-md-2"></div>
						<div class="col-sm-6 col-md-8">
								<div class="card card-stats card-round">
								
									<div class="card-body ">
										<div class="row">
											<div class="col-1"></div>
											<div class="col-10">
												
												<h1>���� ����</h1>
												<hr>
												<h3>��û�� ����</h3>
												<div class="form-group row">
													<label for="name" class="col-2 control-label">�̸�</label>
													<div class="col-10">
   														<input type="text" class="form-control"  id="name" readonly="readonly" value="${member.mem_name }">
   													</div>
												</div>
												<div class="form-group row">
													<label for="name" class="col-2 control-label">�̸���</label>
													<div class="col-10">
   														<input type="text" class="form-control"  id="name" readonly="readonly" value="${member.mem_email }">
   													</div>
												</div>
												<div class="form-group row">
													<label for="name" class="col-2 control-label">�������</label>
													<div class="col-10">
   														<input type="text" class="form-control"  id="name" readonly="readonly" value="${member.mem_birth }">
   													</div>
												</div>
												
   														<input type="hidden" class="form-control"  id="mem_code" name="mem_code"  value="${member.mem_code }">
   												
												<hr>
												<h3>��������</h3>
												<div class="form-group row">
													<label class="col-2 control-label" >�����ȣ</label>
													<div class="col-10">
														${vo.lc_num }
														<input type="hidden" name="lc_num" id="lc_num" value="${vo.lc_num }">
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >�������</label>
													<div class="col-10">
														${vo.lc_state }
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >�����û��</label>
													<div class="col-10">
														${vo.loanApplicationVO.la_sysdate }
													</div>
												</div>
												
												
												<div class="form-group row">
													<label class="col-2 control-label" >�����</label>
													<div class="col-10">
														${vo.loanProductVO.lp_name }
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >��������</label>
													<div class="col-10">
														${vo.loanApplicationVO.la_hamount }��
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >���������</label>
													<div class="col-10">
														${vo.loanApplicationVO.la_startdate }
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >��ȯ���</label>
													<div class="col-10">
														${vo.loanApplicationVO.lr_type }
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >��ġ�Ⱓ</label>
													<div class="col-10">
														${vo.loanApplicationVO.la_livingterm }
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-2 control-label" >��ȯ�Ⱓ</label>
													<div class="col-10">
														${vo.loanApplicationVO.la_repayterm }
													</div>
												</div>
												
												
												<c:if test="${vo.lc_state eq '����Ϸ�' or vo.lc_state eq '��ȯ����'}">
												<hr>
													<h3>��ȯ����</h3>
													
													<div class="form-group row">
													<label class="col-2 control-label">���������</label>
													<div class="col-10">
														${vo.loanRepayVO.lr_startdate }
													</div>
												</div>
												<div class="form-group row">
													<label class="col-2 control-label">�������</label>
													<div class="col-10">
														${vo.loanRepayVO.lr_amount }��
													</div>
												</div>
												<div class="form-group row">
													<label class="col-2 control-label">����</label>
													<div class="col-10">
														${vo.loanRepayVO.lr_balance }��
													</div>
												</div>
												<div class="form-group row">
													<label class="col-2 control-label">���ڻ�ȯ��</label>
													<div class="col-10">
														${vo.loanRepayVO.lr_interest }��
													</div>
												</div>
												
												
												<div class="form-group row">
													<label class="col-2 control-label">��ȯ������</label>
													<div class="col-10">
														${vo.loanRepayVO.lr_firstdate }
													</div>
												</div>
												<div class="form-group row">
													<label class="col-2 control-label">��ȯ��</label>
													<div class="col-10">
														�ſ� ${vo.loanRepayVO.lr_repaydate }��
													</div>
												</div>
												<div class="form-group row">
													<label class="col-2 control-label">�������</label>
													<div class="col-10">
														${vo.loanRepayVO.lr_reaccount }
													</div>
												</div>
												
												
												</c:if>
												
												
											
											</div>
											<div class="col-1"></div>
										</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
					<c:choose>
					<c:when test="${vo.lc_state eq '�������'}">
					</c:when>
					<c:when test="${vo.lc_state eq '����������'}">
			<p class="text-center"><button type="button" class="btn btn-info" id="file" value="${vo.lc_num }">��������</button></p>
					</c:when>
					<c:when test="${vo.lc_state eq '�������'}">
					<p class="text-center"><button type="button" class="btn btn-info" id="loanstart" value="${vo.lc_num }">�����ϱ�</button></p>
					</c:when>
					<c:when test="${vo.lc_state eq '����Ϸ�'}">
					<p class="text-center"><button type="button" class="btn btn-info" value="${vo.lc_num }">��ȯ�ϱ�</button></p>
					</c:when>
					<c:otherwise>
					<p class="text-center"><button type="button" class="btn btn-info" id="refile" value="${vo.lc_num }">��������</button></p>
					</c:otherwise>
					
					</c:choose>
			</div>
		
			


			
			<script>

	
	$('#file').click(function() {
			location='checkfile?lc_num='+$(this).val();
		})
		
		$('#loanstart').click(function() {
			location='repaymentstart?lc_num='+$(this).val();
		})
		$('#refile').click(function() {
			location='checkfiledetail?lc_num='+$(this).val();
		})
		
		
	</script>

