<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
			<div class="content">	
	<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="check" class="btn btn-white btn-sm btn-border mr-1">������Ȳ ��ȸ</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">���� ������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>
				<!--���� ��û ��ȸ  -->
				<div class="row mt--4">
				<div class="col-sm-6 col-md-2"></div>
						<div class="col-sm-6 col-md-8">
								<div class="card card-stats card-round">
								
									<div class="card-body ">
										<div class="row">
										<h2>&nbsp;&nbsp;&nbsp;&nbsp;���� ��û ��Ȳ</h2>
											<table class="table table-hover">
												<thead>
													<tr>
														<th>��ǰ��</th>
														<th>��û��¥</th>
														<th>��û�ݾ�</th>
														<th>�������</th>
														<th>�������</th>
														<th>�󼼺���</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach items="${list }" var="e">
												<c:if test="${e.lc_state ne '����Ϸ�' and e.lc_state ne '��ȯ����'}">
												
													<tr>
													 <td>${e.loanProductVO.lp_name}</td>
														<td>${e.loanApplicationVO.la_sysdate }</td>
														<td>${e.loanApplicationVO.la_hamount }</td>
														<td>${e.lc_state }</td>
														
														<c:choose>
															<c:when test="${e.lc_state eq '�������'}">
														<td><button type="button" class="btn btn-lg btn-primary" disabled="disabled">�������</button></td>														
															</c:when>
															<c:when test="${e.lc_state eq '����������' }">
														<td><button type="button" class="btn btn-lg btn-primary file" value="${e.lc_num }">��������</button></td>
															</c:when>
															
															<c:when test="${e.lc_state eq '�������' }">
														<td><button type="button" class="btn btn-lg btn-primary loanstart" value="${e.lc_num}">�������</button></td>
															
															</c:when>
															<c:when test="${e.lc_state eq '���ΰ���' }">
														<td><button type="button" class="btn btn-lg btn-primary loanstart" disabled="disabled" value="${e.lc_num}">���ΰ���</button></td>
															
															</c:when>
															<c:otherwise>
														<td><button type="button" class="btn btn-lg btn-primary refile" value="${e.lc_num }">�߰�����</button></td>
															
															</c:otherwise>
														</c:choose>	
														<td><button type="button" class="btn btn-lg btn-primary checkdetail" value="${e.lc_num }">�󼼺���</button></td>
													</tr>
													</c:if>
												</c:forEach>
													
												</tbody>
											</table>
										
										</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
		
		
		
		<!--��ȯ�ؾ��ϴ� ����  -->
				<div class="row mt--4">
				<div class="col-sm-6 col-md-2"></div>
						<div class="col-sm-6 col-md-8">
								<div class="card card-stats card-round">
								
									<div class="card-body ">
										<div class="row">
											<table class="table table-hover">
											<h2>&nbsp;&nbsp;&nbsp;&nbsp;���� ��ȯ ��Ȳ</h2>
												<thead>
													<tr>
														<th>��ǰ��</th>
														<th>���⳯¥</th>
														<th>�������</th>
														<th>�����ܾ�</th>
														<th>�����ȯ</th>
														<th>�󼼺���</th>
													</tr>
												</thead>
												<tbody>
												 <c:forEach items="${list }" var="e">
													<c:if test="${e.lc_state eq '����Ϸ�'}">
													<tr>
														<td>${e.loanProductVO.lp_name}</td>
														<td>${e.loanRepayVO.lr_startdate }</td>
														<td>${e.loanRepayVO.lr_amount }</td>
														<td>${e.loanRepayVO.lr_balance }</td>
														<c:choose>
															<c:when test="${e.lc_state eq '����Ϸ�'}">
																<td><button type="button" class="btn btn-lg btn-primary repay" value="${e.lc_num }">��ȯ�ϱ�</button></td>
															</c:when>
														
														</c:choose>
														<td><button type="button" class="btn btn-lg btn-primary checkdetail" value="${e.lc_num }">�󼼺���</button></td>
													</tr>
													
													</c:if>
												 </c:forEach>
												</tbody>
											</table>
										
										</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
			</div>
		
			

			
			
			<script>
		$('.checkdetail').click(function() {
			location='checkdetail?lc_num='+$(this).val();
		})
		
		$('.file').click(function() {
			location='checkfile?lc_num='+$(this).val();
		})
		
		$('.loanstart').click(function() {
			location='repaymentstart?lc_num='+$(this).val();
		})
		$('.refile').click(function() {
			location='checkfiledetail?lc_num='+$(this).val();
		})
		$('.repay').click(function() {
			location='repaymentloan?lc_num='+$(this).val();
		})
	</script>

