<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
				<!-- ����� Ǫ���� ���� ���� -->
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="deposite_cancle" class="btn btn-white btn-sm btn-border mr-1">����</a> 
								 <span class="h2 mr-1"> > </span>
								 <a href="deposite_cancle_input_info" class="btn btn-white btn-sm btn-border mr-1">���������Է�</a>
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
				<div class="row">
							
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">����</div>
								</div>
								<div class="card-body" style="margin-bottom: 20px; margin-top: 0">
								<form action="cancel_check" method="post" id="f">
									<div class="row">
										<div class="col-md-10 col-lg-10">
											<table class="table">
												<thead>
													<tr><th colspan="2" style="border-style: none;" >
														<c:choose>
															<c:when test="${account.saving.sav_code != 0 }">
																<span class="h2">����� ���� ��ǰ</span>
															</c:when>
															<c:when test="${account.ins.ins_code != 0 }">
																<span class="h2">���ݽ� ���� ��ǰ</span>
															</c:when>
														</c:choose>
													</th></tr>
												</thead>
												<tbody>
												<c:choose>
													<c:when test="${account.saving.sav_code != 0 }">
														<tr>
															<td style="border-style: none; width: 60px; ">��</td >
															<td colspan="2" style="border-style: none; width: 140px; font-size: 20px;">${account.saving.sav_name}</td>
														</tr>
														<tr>
															<td style="border-style: none;"></td>
															<td style="border-style: none;" >���¹�ȣ :</td>
															<td style="border-style: none;">${account.ac_num}</td>
														</tr>
														<tr>
															<td style="border-style: none;"></td>
															<td style="border-style: none;" >���Գ�¥ :</td>
															<td style="border-style: none;">${account.ac_start_date}</td>
														</tr>
														<tr >
															<td style="border-style: none;"></td>
															<td style="border-style: none;">�ܾ� : </td>
															<td style="border-style: none;">${account.ac_balance}</td>
														</tr>
													</c:when>
													<c:when test="${account.ins.ins_code != 0 }">
														<tr>
															<td style="border-style: none; width: 60px; ">��</td >
															<td  style="border-style: none; width: 140px;">${account.ins.ins_name}</td>
														</tr>
														<tr>
															<td style="border-style: none;"></td>
															<td style="border-style: none;" >���¹�ȣ :</td>
															<td style="border-style: none;">${account.ac_num}</td>
														</tr>
														<tr>
															<td style="border-style: none;"></td>
															<td style="border-style: none;" >���Գ�¥ :</td>
															<td style="border-style: none;">${account.ac_start_date}</td>
															
														</tr>
														<tr >
															<td style="border-style: none;"></td>
															<td style="border-style: none;">�ܾ� : </td>
															<td style="border-style: none;">�� ${account.ac_balance}</td>
														</tr>
													</c:when>
												</c:choose>
												</tbody>
											</table>
									
									<hr/>
									<div class="form-inline" style="margin-left: 10%;">
										<span>�Ա� ���¹�ȣ</span>
										<input id="take_ac" name="take_ac" type="text" class="form-control" style="width: 400px; margin-left: 30px;" placeholder="���¹�ȣ�� �Է����ּ���" max="10"/>
									</div>
									<div style="margin-left: 60%; margin-top: 30px;" >
										<input type="button" class="btn btn-info" value="���" id="cancel">
										<input type="hidden" id="ac_code" name="ac_code" value="${account.ac_code }">
										<input type="hidden" id="ac_num" name="ac_num" value="${account.ac_num }">
										<input type="button" class="btn btn-info" value="�����ϱ�" id="next">
									</div>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- ���� ������ �� -->
					
			<!-- ������ ���̾ƿ� �� -->
		</div>
	</div>

			
			
	<script>
		$('#cancel').click(function() {
			location='index';
		});
		$("#next").click(function() {
			var take_ac = $("#take_ac").val();
			var ac_num = $("#ac_num").val();
			
			if(take_ac === ac_num){
				alert("�ٸ� ���¹�ȣ�� �Է����ּ���.");
				$('#take_ac').focus();
			}else if(take_ac === ''){
				alert("�Ա��Ͻ� ���¹�ȣ�� �Է����ּ���.");
		    }else {
		    	$.ajax({
					url:'acNumChk?take_ac='+take_ac,
					success:function(data){
						var mem_name=data;
 						if(mem_name === ""){
							alert("���¹�ȣ�� Ȯ�� �� �Է����ּ���");
							$('#take_ac').focus();
						}else{
							alert(mem_name+"���� ����: "+take_ac+" ���� ��ü�մϴ�.")
							f.submit();
						}
					}
				});
			}
			
		});
	</script>
