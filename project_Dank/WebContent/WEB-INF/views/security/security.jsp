<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����������</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="security" class="btn btn-white btn-sm btn-border mr-1">����ī�� / OTP</a>
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
				<c:if test="${error=='f' }">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div>
										<span class="h1 text-danger">�̹� ��û�Ǿ��ֽ��ϴ�.</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if> 
				<!-- ������ ���̾ƿ� ���� -->
				<div class="row justify-content-center align-items-center mb-5">
				<div class="col-md-3 pl-md-0">
							<div class="card-pricing2 card-success">
								<div class="pricing-header">
									<h3 class="fw-bold">����ī��</h3>
									<span class="sub-title">��û</span>
								</div>
								<div class="price-value">
									<div class="value">
									</div>
								</div>
								<ul class="pricing-content">
								</ul>
								<a href="securitycard" class="btn btn-success btn-border btn-lg w-75 fw-bold mb-3">����ī�� ��û</a>
							</div>
						</div>
					<div class="col-md-3 pl-md-0 pr-md-0">
						<div class="card-pricing2 card-primary">
							<div class="pricing-header">
								<h3 class="fw-bold">OTP</h3>
								<span class="sub-title">��û</span>
							</div>
							<div class="price-value">
								<div class="value" >
								</div>
							</div>
							<ul class="pricing-content">
							</ul>
							<a href="securityotp" class="btn btn-primary btn-border btn-lg w-75 fw-bold mb-3">OTP ��û</a>
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
		
		$(function() {
			
		})
	</script>

