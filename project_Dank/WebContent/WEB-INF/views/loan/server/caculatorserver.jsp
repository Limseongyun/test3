<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<table class="table table-hover">
<thead>
<tr>
	<th>ȸ��</th>
	<th>���Կ���</th>
	<th>��������</th>
	<th>����ȯ��</th>
	<th>�����ܱ�</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list }" var="e" varStatus="i">
<tr>
	<td>${i.index+1 }</td>
	<td>${e.repayM }</td>
	<td>${e.repayR }</td>
	<td>${e.repayMR }</td>
	<td>${e.balance }</td>
</tr>
</c:forEach>
</tbody>
<tfoot>
<tr>
	<td>�հ�</td>
	<td>${m }</td>
	<td>${sumR }</td>
	<td>${sumT }</td>
	<td>0</td>
<tr>
</tfoot>
</table>
<div id="chart"></div>