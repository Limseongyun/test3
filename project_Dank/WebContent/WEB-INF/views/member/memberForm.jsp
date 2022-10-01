<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
label{
padding-top: 10px;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

</style>
			<div class="content">
			<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">ȸ������</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="memberform" class="btn btn-white btn-sm btn-border mr-1">ȸ������</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">���� ������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>
				
		<form action="memberjoin" method="post" class="form-horizontal"> 
		<input type="hidden" value="${reip}" name="mem_reip" />
				<div class="row mt--4">
				<div class="col-sm-6 col-md-2"></div>
						<div class="col-sm-6 col-md-8">
								<div class="card card-stats card-round">
								
									<div class="card-body ">
												<h1>ȸ������</h1>
												<hr>
												<h3>��û�� ����</h3>
												<div class="col-md-10 ml-auto mr-auto" style="text-align:right;">
													<span class="text-danger h4" > * �ʼ�����</span>
												</div>
												<div class="col-md-10 ml-auto mr-auto">
													<div class="form-group ">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>�̸���</label>
														<div class="row">
															<div class="col-6">
		   														<input type="email" class="form-control"  id="mem_email1" name="mem_email">
		   														<div id="target">
			   														<input type='hidden' id='chk' value='0'>
			   													</div>
		   													</div>  
		   													<div class="col-6">
																<button type="button" class="btn btn-info" id="idchk">�ߺ��˻�</button>
																<button type="button" class="btn btn-primary" id="emailBtn">�����ڵ� ����</button>
															</div>
														</div>
													</div> 
													<div class="form-group">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>������ȣ</label>
														<div class="row">
															<div class="col-6">
																<input type="text" id="codenum" name="codenum" required="required"
																class="form-control input-full">                                      
															</div>
															<div class="col-4 mt-1" id="codeTarget">
																<button type="button" class="btn btn-primary" id="codeCheck">Ȯ��</button>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>��й�ȣ</label>
														<div class="row">
															<div class="col-10">
		   														<input type="password" class="form-control"  id="mem_pwd1" name="mem_pwd">
		   													</div>
	   													</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>��й�ȣȮ��</label>
														<div class="row">
															<div class="col-10">
		   														<input type="password" class="form-control"  id="mem_pwd2" name="mem_pwd2">
		   													</div>
	   													</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>�̸�</label>
														<div class="row">
															<div class="col-10">
		   														<input type="text" class="form-control"  id="mem_name" name="mem_name">
		   													</div>
	   													</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>��ȭ��ȣ</label>
														<div class="col-10 row">
															<select id="mem_phn1" name="mem_phn1" class="col-3">
																<option>010</option>
																<option>016</option>
																<option>019</option>
															</select>
	   														<p class="col-1 text-center">��</p>
	   														<input type="number" class="form-control col-3"  id="mem_phn2" name="mem_phn2">
	   														<p class="col-1 text-center">��</p>
	   														<input type="number" class="form-control col-3" id="mem_phn3" name="mem_phn3">
	   													</div>
													</div>
													<div class="form-group">
														<label for="mem_birth" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>�������</label>
														<div class="row">
															<div class="col-10">
		   														<input type="number" class="form-control" id="mem_birth" name="mem_birth" placeholder="��)951201">
		   													</div>
	   													</div>
													</div>
														<div class="form-group">
														<label for="name" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>�ּ�</label>
														<div class="row">
															<div class="col-10">
		   														<input type="text" class="form-control"  id="mem_loc" name="mem_loc">
		   													</div>
	   													</div>
													</div>
													<div class="form-check">
														<label for="mem_birth" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>����</label>
														<br />
														<div class="col-10 ">
															<label class="form-radio-label">
																<input class="form-radio-input" type="radio" name="mem_gender" value="M"  checked="">
																<span class="form-radio-sign">����</span>
															</label>
															<label class="form-radio-label ml-3">
																<input class="form-radio-input" type="radio" name="mem_gender" value="F">
																<span class="form-radio-sign">����</span>
															</label>
	   													</div>
													</div>
													<div class="form-check">
														<label for="mem_birth" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>�̸��ϼ��ŵ���</label>
														<br />
														<div class="col-10 ">
															<label class="form-radio-label">
																<input class="form-radio-input" type="radio" name="mem_email_chk" value="1">
																<span class="form-radio-sign">����</span>
															</label>
															<label class="form-radio-label ml-3">
																<input class="form-radio-input" type="radio" name="mem_email_chk" value="0"  checked="">
																<span class="form-radio-sign">����</span>
															</label>
	   													</div>
													</div>
													<div class="form-check">
														<label for="mem_birth" class="col-2 control-label"><span class="text-danger blockquote blockquote-primary"> * </span>������������</label>
														<br />
														<div class="col-10 ">
															<label class="form-radio-label">
																<input class="form-radio-input" type="radio" name="mem_pri_chk" value="1">
																<span class="form-radio-sign">����</span>
															</label>
															<label class="form-radio-label ml-3">
																<input class="form-radio-input" type="radio" name="mem_pri_chk" value="0" checked="">
																<span class="form-radio-sign">����</span>
															</label>
	   													</div>
													</div>
													<div class="form-group">
														<label for="name" class="col-2 control-label">����</label>
														<div class="col-10 row">
															<select id="mem_job" name="mem_job" class="form-control col-5 ">
																<option value="0">��Ÿ</option>
																<option value="1">����</option>
															</select>
	   													</div>
													</div>
												</div>
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-2"></div>
			
						</div>
					
			<p class="text-center"><button type="submit" class="btn btn-info" id="btn">�����ϱ�</button></p>
		</form>
			</div>
		
			


			
			<script>
			$(function() {
				var email = null;
				var emailCode = null;
				$("#cancel").click(function() {
					location = "security";
				});
				
				$("#codeCheck").click(function() {
					console.log("emailCode : "+emailCode);
					console.log("codenum : "+$("#codenum").val());
					if ($("#codenum").val() == emailCode) {
						$("#mem_email1").attr("readonly", true);
						$("#codenum").attr("readonly", true);
						$("#codeTarget").html('<button class="btn btn-success btn-sm" disabled="disabled">Success</button>');
						$("#codeTarget").append('<input type="hidden" value="success" name="successData" />')
					}else {
						$("#codeTarget").append('<input type="hidden" value="fail" name="successData" />')
					}
					
				})
				
				$('#emailBtn').click(function(e) {
					email = $("#mem_email1").val();
					swal({
						title: '�̸����� ���� �Ͻðڽ��ϱ�?',
						text: "�̸����� Ȯ�����ּ���. \n"+email,
						type: 'warning',
						buttons:{
							confirm: {
								text : '����',
								className : 'btn btn-success'
							},
							cancel: {
								text : '���',
								visible: true,
								className: 'btn btn-danger'
							}
						}
					}).then((Delete) => {
						if (Delete) {
							$.ajax({
								url:"emailsend?email="+email,
								success:function(data){
									emailCode = data;
								}
							})
							swal({
								title: '���۵Ǿ����ϴ�.',
								text: '���۵� �ڵ带 �Է����ּ���.',
								type: 'success',
								buttons : {
									confirm: {
										text : 'Ȯ��',
										className : 'btn btn-success'
									}
								},
								
							});
						} else {
							swal.close();
						}
					});
				});
			})
				
			
			
			
		$(function() {
			
			/*  */
			$('#check1').click(function() {
				$.ajax({
					url:'radio?radio='+$('#check1').val(),
					success: function(data) {
						$('#mem_chk').html(data)
					}
				})
			})
			$('#check2').click(function() {
				$.ajax({
					url:'radio?radio='+$('#check2').val(),
					success: function(data) {
						$('#mem_chk').html(data)
					}
				})
			})
			
		
			$("form").submit(function(event) {
				
				if ( $('#mem_email1') == "") {
					alert("id�� �Է����ּ���.");
					event.preventDefault(); return; 
					} 
				if($('#chk').val() == 0 ){
					alert("email �ߺ�Ȯ���� ���ּ���.");
					event.preventDefault(); return; 
				}
				if ($('#mem_pwd1').val() == "") { 
					alert("pw�� �Է����ּ���.");
					event.preventDefault(); return; }
				if($('#mem_pwd2').val() != $('#mem_pwd1').val()){
					alert("pw�� ��ġ���� �ʽ��ϴ�.");
					event.preventDefault(); return; 
					
				}
				if($('#mem_name').val() == ""){
					alert("�̸��� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if($('#mem_phn1').val() == ""){
					alert("��ȭ��ȣ ���ڸ��� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if($('#mem_phn2').val() == ""){
					alert("��ȭ��ȣ �߰��ڸ��� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if(parseInt($('#mem_phn2').val()) < 100 ||parseInt($('#mem_phn2').val()) >10000){
					alert("��ȭ��ȣ �߰��ڸ��� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if($('#mem_phn3').val() == ""){
					alert("��ȭ��ȣ ���ڸ��� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if(parseInt($('#mem_phn3').val()) < 100 ||parseInt($('#mem_phn3').val()) >10000){
					alert("��ȭ��ȣ ���ڸ��� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if($('#mem_birth').val() == ""){
					alert("��������� Ȯ�����ּ��� ��)950101");
					event.preventDefault(); return; 
					
				}
				if($('#mem_birth').val().length !=6){
					alert("��������� Ȯ�����ּ��� ��)950101");
					event.preventDefault(); return; 
					
				}
				if(parseInt($('#mem_birth').val()) <= 0 ||parseInt($('#mem_birth').val()) >999999){
					alert("��������� Ȯ�����ּ��� ��)950101");
					event.preventDefault(); return; 
					
				}
				if($('#mem_loc').val() == ""){
					alert("�ּҸ� Ȯ�����ּ���.");
					event.preventDefault(); return; 
					
				}
				if($(':input[name=mem_pri_chk]:checked').val() == 0){
					alert("�����������Ǹ� ���ּ���.");
					event.preventDefault(); return; 
					
				}
				
			}); 
			
			
			$('#idchk').click(function() {
				$.ajax({
					url:'idchk?mem_email='+$('#mem_email1').val(),
					success: function(data) {
						$('#target').html(data)
					}
				})

			})
			
			
			$('#mem_email1').keydown(function() {
				var idchk="<p style='color:red'>�ߺ��˻縦 ���ּ���</p>";
				idchk+="<input type='hidden' id='chk' value='0'>";
				$('#target').html(idchk)
			})
			
			
		})
		
					$('form').on('focus', 'input[type=number]', function (e) {
  $(this).on('wheel.disableScroll', function (e) {
    e.preventDefault()
  })
})
$('form').on('blur', 'input[type=number]', function (e) {
  $(this).off('wheel.disableScroll')
})
		
	</script>


