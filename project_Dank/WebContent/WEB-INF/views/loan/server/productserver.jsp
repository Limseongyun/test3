<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page trimDirectiveWhitespaces="true" %>
<input type="hidden" id="lp_num" value="${vo.lp_num }">
		<div class="col-md-12">
		<h1 class="text-center">${vo.lp_name }</h1><br>
		</div>
		<div class="col-md-12">
		<p class="text-center">������ : ${vo.lp_interestrate }%</p><br>
		</div>
		<div class="col-md-12">
		<p class="text-center">�ִ� ���� �ݾ� : ${vo.lp_maximum }��</p><br>
		</div>
		<div class="col-md-12">
		<p class="text-center">�ߵ� ���� ������ : ${vo.lp_cancelfee }%</p>
		</div>