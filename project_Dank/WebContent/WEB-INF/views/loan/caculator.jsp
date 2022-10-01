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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">����</h2>
								<h5 class="text-white op-7 mb-2">
								<a href="index" class="btn btn-white btn-sm btn-border mr-1"><span class="flaticon-home"/></a>
								 <span class="h2 mr-1"> > </span>
								 <a href="caculator" class="btn btn-white btn-sm btn-border mr-1">���ڰ���</a>
								 </h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="checkbalance" class="btn btn-white btn-border btn-round mr-2">���� ������</a>
								<a href="qna" class="btn btn-secondary btn-round">������</a>
							</div>
						</div>
					</div>
				</div>
		
		<!--��ȯ�ؾ��ϴ� ����  -->
				<div class="row mt--4">
				<div class="col-sm-6 col-md-3"></div>
						<div class="col-sm-6 col-md-6">
								<div class="card card-stats card-round">
								
									<div class="card-body">
										<div class="row">
											<div class="col-2"></div>
											
											<div class="form-group col-8">
												<label class="form-label">��ȯ���</label>
												<div class="selectgroup w-100">
													<label class="selectgroup-item">
														<input type="radio" name="type" value="2" class="selectgroup-input" checked="checked">
														<span class="selectgroup-button">�����ݱյ�</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="type" value="1" class="selectgroup-input">
														<span class="selectgroup-button">���ݱյ�</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="type" value="3" class="selectgroup-input">
														<span class="selectgroup-button">�����Ͻ�</span>
													</label>
												</div>
											</div>
											<div class="col-2"></div>
											</div>
										
										<div class="row">
										<div class="col-2"></div>
												<div class="form-group col-8">
												<label class="form-label">��ȯ�Ⱓ</label>
												<div class="selectgroup w-100">
													<label class="selectgroup-item">
														<input type="radio" name="term" value="1" class="selectgroup-input" checked="checked">
														<span class="selectgroup-button">��</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="term" value="2" class="selectgroup-input">
														<span class="selectgroup-button">��</span>
													</label>
													<label>
														<input type="number" name="n" min="0" value="0" id="n" class="form-control input-lg">
													</label>
												</div>
											</div>
											<div class="col-2"></div>
										</div>	
										
										<div class="row">
										<div class="col-2"></div>
												<div class="form-group col-8">
												<label class="form-label">��ġ�Ⱓ</label>
												<div class="selectgroup w-100">
													<label class="selectgroup-item">
														<input type="radio" name="term2" value="1" class="selectgroup-input" checked="checked">
														<span class="selectgroup-button">��</span>
													</label>
													<label class="selectgroup-item">
														<input type="radio" name="term2" value="2" class="selectgroup-input">
														<span class="selectgroup-button">��</span>
													</label>
													<label>
														<input type="number" value="0" min="0" name="g" id="g" class="form-control input-lg">
													</label>
												</div>
											</div>
											<div class="col-2"></div>
										</div>	
										
										<div class="row">
										<div class="col-2"></div>
										<div class="col-5">
												<div class="form-group">
												<label class="form-label">���� �ݾ�</label>
												<div class="selectgroup w-100">
													<label>
														<input type="number" value="0" min="0" name="m" id="m" class="form-control input-lg">
													</label>
												</div>
											</div>
										</div>
										
										<div class="col-3">
												<div class="form-group">
												<label class="form-label">������(%)</label>
												<div class="selectgroup w-100">
													<label>
														<input type="number" value="0" min="0" name="r" id="r" class="form-control input-lg" step="0.1">
													</label> 
												</div>
											</div>
										</div>
										</div>
										<div class="row">
											<div class="col-2"></div>
											<div class="col-4">
											<button type="button" class="btn btn-primary" id="btnroll"> �ʱ�ȭ </button>
											</div>
											<div class="col-4">
											<button type="button" class="btn btn-primary" id="btn">����ϱ�</button>
											</div>
										</div>
										
									</div>
								</div>
							</div>
		<div class="col-sm-6 col-md-3"></div>
			
						</div>
						<div class="row">
				<div class="col-3"></div>
					<div class="row-card-no-pd col-6">
						<div id="target">
						<p class="text-center">���⸦ ����� ������!</p>
						</div>
						</div>
						<div class="col-3"></div>
						</div>
			</div>
		
			


			
			
			<script>
			
			$("input").keydown(function () {
			    // Save old value.
			    if (!$(this).val() || (parseInt($(this).val()) <= $('#maximum').val()  && parseInt($(this).val()) >= 0))
			    $(this).data("old", $(this).val());
			  });
			  $("input").keyup(function () {
			    // Check correct, else revert back to old value.
			    if (!$(this).val() || (parseInt($(this).val()) <= $('#maximum').val() && parseInt($(this).val()) >= 0)){
			    	
			    }else if(parseInt($(this).val()) < 0){
			    	alert('������ �Է��� �� �����ϴ�.')
			    	$(this).val(0);
			    }
			   

			  });
			
			$("#btnroll").click(function () {
				var radio_name = [];
				var radio = $("input[type=radio]"); //���� ������ �����ɴϴ�.
				$.each(radio, function (key, value) { // input radio�� name ���� �����ɴϴ�.
				radio_name.push($(value).attr('name'));
				});
				//(9) ["school", "school", "school", "school", "sex", "sex", "grade", "grade", "grade"] log��
				radio_name = $.unique(radio_name.sort()).sort(); //�ߺ���� �̸��� ����
				//(3) ["grade", "school", "sex"] log ��
				for (var i = 0; i < radio_name.length; i++) {
				$('input[name="' + radio_name[i] + '"]').removeAttr('checked');
				//üũ�Ǿ��ִ� �׸� ��� ����
				$('input[name="' + radio_name[i] + '"]')[0].checked = true;
				//name���� ù�� ��Ҹ� ����
				}
				
				$('#n').attr('value',0);
				$('#n').val(0);
				$('#g').attr('value',0);
				$('#g').val(0);
				$('#m').attr('value',0);
				$('#m').val(0);
				$('#r').attr('value',0);
				$('#r').val(0);
				
				});


			
			
			$('#btn').click(function() {
				$.ajax({
					type: "POST",
					url: "caculator",
					data: {type:$('[name=type]:checked').val(),term:$('[name=term]:checked').val(),n:$('#n').val(),term2:$('[name=term2]:checked').val(),g:$('#g').val(),m:$('#m').val(),r:$('#r').val()},
					success: function(data){
						$('#target').html(data);
						
						$.ajax({
							type: "POST",
							url: "caculatorchart",
							data: {type:$('[name=type]:checked').val(),term:$('[name=term]:checked').val(),n:$('#n').val(),term2:$('[name=term2]:checked').val(),g:$('#g').val(),m:$('#m').val(),r:$('#r').val()},
							success: function(data){
								var data  = JSON.parse(data)
								var chart = c3.generate({
									bindto: "#chart",
								    data: {
								        columns: [
								            data["r"],data["m"],data["mr"]
								        ]
								    }
								});
								
								
							}
							
						})
						
						
					}
					});


			})
			
			$('body').on('focus', 'input[type=number]', function (e) {
  $(this).on('wheel.disableScroll', function (e) {
    e.preventDefault()
  })
})
$('body').on('blur', 'input[type=number]', function (e) {
  $(this).off('wheel.disableScroll')
})
	</script>

