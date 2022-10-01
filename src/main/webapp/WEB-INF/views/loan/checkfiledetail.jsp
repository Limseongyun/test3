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
												
												<h1>���⼭�� Ȯ��</h1>
												<hr>
												 
												<h3>÷�� ����</h3>
												
												<input type="hidden" value="${list[0].lc_num }" name="lc_num" id="lc_num"> 
												
												<c:forEach items="${list }" var="e">
													<c:if test="${e.lf_oriname ne null}">
														<div class="form-group row">
															<label for="file1" class="col-4" >${e.lf_name }</label>
															<div class="col-8">
																<a href="<c:url value="/Download.do?fileDir=/resources/upload/${e.lc_num }&fileName=${e.lf_oriname} "/>">${e.lf_oriname}</a>
															
													</div>
												</div>
													</c:if>
													
												</c:forEach>
												
												
												
												
											</div>
											<div class="col-1"></div>
										</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
					
			<p class="text-center"><input type="button" class="btn btn-info refile" value="�ٽ������ϱ�"></p>
			
			</div>
		
			


			
			<script>
			$('.refile').click(function() {
				location='checkfile?lc_num='+$('#lc_num').val();
			})
			$('.down').click(function() {
				fileName = $(this).text()
				lc_num = $('#lc_num').val()
				location.href = "Download.do?fileDir=/resources/upload/"+lc_num+"&fileName="+fileName
			})
	</script>

