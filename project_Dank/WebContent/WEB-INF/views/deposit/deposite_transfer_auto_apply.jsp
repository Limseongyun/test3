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
								 <a href="transfer" class="btn btn-white btn-sm btn-border mr-1">��ü</a> 
								 <span class="h2 mr-1"> > </span>
								 <a href="transfer_auto_apply" class="btn btn-white btn-sm btn-border mr-1">�ڵ���ü��û</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">���� ������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>
			<div class="page-inner mt--5">







				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">�ڵ���ü��û</div>
							</div>
							<div class="card-body" style="margin-bottom: 20px;">
								<div class="row">
									<div class="col-md-2 col-lg-2"></div>
									<div class="col-md-8 col-lg-8">
									<form action="transfer_auto_apply_process" method="post">
										<div class="form-group">
											<label for="email2">���¹�ȣ</label> 
											<select name="ac_num" id="ac_num" class="form-control" style="width: 360px; margin-left: 10%;">
											<c:forEach var="e" items="${myaclist }">
											
											<option value="${e }">${e }</option>
											
											</c:forEach>
											
											</select>
<!-- 											<input type="text" name="ac_num" -->
<!-- 												class="form-control" id="email2" -->
<!-- 												style="width: 400px; margin-left: 10%;" -->
<!-- 												placeholder="110-111-12345 : ���뿹��"> -->
										</div>
										<hr class="my-0">

										<div class="form-group ">
											<label for="email2">�Աݰ��¹�ȣ</label>

											<div class="form-inline" style="margin-left: 10%;">
												<input type="text" placeholder="HD" class="form-control"
													style="text-align: center; width: 60px;" />
												 <input name="ata_yourac" maxlength="10"
													type="text" placeholder="�Ա� ���� ��ȣ" class="form-control"
													style="text-align: center; width: 200px;"
													id="inputacval"
													 />
													<select name="" id="selectyourname" class="form-control" >
													
													<option value="">����̸�</option>
													
													</select>
													<input type="hidden" name="ata_yourmemcode" placeholder="����ڵ�" id="atapplymem" class="form-control" style=" text-align:center; background-color:red; width: 300px;"/>
												<div id="ajaxtarget"></div>
											</div>
										</div>
										<hr class="my-0">
										<div class="form-group ">
											<label for="email2">�ڵ���ü�ݾ׼���</label> <br />
						
											<div class="form-inline" style="margin-left: 10%;">

												<input type="text" name="ata_setmoney" id="ata_setmoney" placeholder="��ü �ݾ�" class="form-control"
													style="text-align: center; width: 360px;" />
											</div>
										</div>
										<hr class="my-0">
										
										
										<div class="form-group ">
											<label for="email2">������/��ü�ð� ����</label> <br />
												
											<div class="form-inline" style="margin-left: 10%;">
														<input type="date" id="ata_startdate" class="form-control" name="ata_startdate" />
														<input type="time" id="ata_time" name="ata_time"  class="form-control">
											</div>
										</div>
										<div class="form-group ">
											
											<div class="form-inline" >
													<label for="email2">�޴º����忡 �� ����</label> <br />
													<input type="text" name="atayouracmemo" class="form-control"  placeholder="�޴º����忡 �� ����" style="text-align: center; width: 300px;"/>
											</div>
											<div class="form-inline">
													<label for="email2">�����º����忡 �� ����</label> <br />
													<input type="text" name="atamyacmemo" class="form-control" placeholder="�����º����忡 �� ����" style="text-align: center; width: 300px;" />
											</div>
										</div>
										<input type="hidden" name="atacheck" value="0" />
										<input type="hidden" name="ataing" value="0" />
										<input type="hidden" name="atadterm" />
										<input type="hidden" name="atastopdate" />
													  
<!-- 													  <input type="button" data-toggle="collapse" data-target="#demo" value="�Ŵ�"/> -->
			
			
			
														<!--// �������� ���� -->
														
<!-- 														<div id="demo" class="collapse"> -->
<!-- 															<div class="form-group "> -->
<!-- 															<label for="email2">��ü�ֱ�</label> <br /> -->
				
<!-- 															<div class="form-inline" style="margin-left: 10%;"> -->
				
<!-- 																<input type="text" placeholder="�ſ� 19��" class="form-control" -->
<!-- 																	style="text-align: center; width: 360px;" name="atadterm" /> -->
<!-- 															</div> -->
<!-- 															</div> -->
<!-- 															<div class="form-group "> -->
<!-- 															<label for="email2">������</label> <br /> -->
				
<!-- 															<div class="form-inline" style="margin-left: 10%;"> -->
<!-- 																<input type="date" class="form-control"  name="atastopdate"/> -->
<!-- 															</div> -->
<!-- 															</div> -->
																		    
														
<!-- 														  </div> -->
														<!-- �������� ���� //-->
										
										
										

										

										<div class="form-group ">
											<div class="form-inline">
											
										
												<a href="transfer_auto"><button type="button" class="btn btn-danger "
													style="margin-left: 10%; width: 200px;">���</button></a>
											
													<input type="button" id="gogonext" class="btn btn-success " value="��û" style="margin-left: 10%; width: 200px;" />
											</div>
										</div>





										</form>
									</div>






								</div>
							</div>

						</div>
					</div>
				</div>




			
		</div>

	</div>





<script>
		var getarr =null;
		var settime="";
		 
		$(document).ready(function() {
			$('#inputacval').keyup(function() {
				
				document.getElementById('ajaxtarget').innerHTML ="";
				var add = "";
				$.ajax({
					url:'getmemcodewhentr?acnum='+$('#inputacval').val(),
					success: function (data) {
								getarr=data;
								//console.log(typeof(data))
								
								data.forEach(function(item, index) {
									add +="<option value="+item.mem_code+">";
									if(item.mem_code==='0'){
										add +="����̸�";
									}else{
										add +=item.mem_name
									}
									
									add +="</option>";
								})
								document.getElementById('selectyourname').innerHTML = add;
								
								$('#atapplymem').val($('#selectyourname').val())
					}

				})
				
				
				
				
			})
			
			$('#selectyourname').change(function() {
				$('#atapplymem').val("0");
				var youracvar =$('#selectyourname').val();
				//console.log(typeof(youracvar))
				$('#atapplymem').val(youracvar);
				//console.log("���尪��"+$('#atapplymem').val());
			})
			
			
			
			
			
			$('#ata_startdate').change(function() {
				settime="0";
				let year=String(new Date().getFullYear());
				let month=String(new Date().getMonth()+1);
				
				let date = String(new Date().getDate());

				if (month.length < 2) month = '0' + month;
				if (date.length < 2) date = '0' + date;
	
				let startdatearr = $('#ata_startdate').val().split("-");

				if(parseInt(year) <= parseInt(startdatearr[0])){
					if(parseInt(year) ===parseInt(startdatearr[0])){
						if(parseInt(month)<=parseInt(startdatearr[1])){
							if(parseInt(month)===parseInt(startdatearr[1])){
								if(parseInt(date)<=parseInt(startdatearr[2])){				
								}else {
									$('#ata_startdate').val(year+'-'+month+'-'+date)
									settime="1";
									checktime();
								}
							}
						}else {
							$('#ata_startdate').val(year+'-'+month+'-'+date)
							settime="1";
							checktime();
						}
					}
				}else {
					$('#ata_startdate').val(year+'-'+month+'-'+date)
					settime="1";
					checktime();
				}
			})
			
			$('#ata_time').change(function() {
				 checktime();
			})
			
			function checktime(){
				let hour = String(new Date().getHours());
				let minute = String(new Date().getMinutes());
				
				if (hour.length < 2) hour = '0' + hour;
				if (minute.length < 2) minute = '0' + minute;
				
				let timearr = $('#ata_time').val().split(":");

				if(settime ==="1"){
					if(parseInt(hour) <= parseInt(timearr[0])){
						
						if(parseInt(hour) === parseInt(timearr[0])){
							if(parseInt(minute) <=parseInt(timearr[1])){

							}else {

								$('#ata_time').val(hour+":"+minute)
							}
						}
						
					}else {

						$('#ata_time').val(hour+":"+minute)
					}
				}
			}
			

			$('#ata_setmoney').keyup(function() {
				//console.log($(this).val())
				
				$.ajax({
					url:'getmybalwhentr?ac_num='+$('#ac_num').val(),
					success: function (data) {

						if(parseInt($('#ata_setmoney').val()) > parseInt(data)){
							$('#ata_setmoney').val(data)
						}
						
					}
				})
							
					

			})
				
			
			$('#gogonext').mouseover(function() {
				if((($('#atapplymem').val() === "0")===false) && (($('#atapplymem').val() === "")===false) ){
					$('#gogonext').attr('type','submit')
				}else {
					$('#gogonext').attr('type','button')
				}
			})
			
		
			
		})
	</script>

