<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page trimDirectiveWhitespaces="true" %>
	
	<c:forEach var="e" items="${atlist }">
	<table border="1" class="table table-bordered">
	<tr>
		<td colspan="5" style="background: royalblue;"></td>
	</tr>
	
	<tr>
		<td rowspan="2" >�������</td><td>��ݰ�������</td><td>${e.ac_num }</td><td>�����º�</td><td>${e.myname }</td>
	</tr>
	<tr>
		<td>�������ǥ�ó���</td><td>${e.ata_myacmemo }</td><td>HD</td><td>HD</td>
	</tr>
	
	<tr>
		<td rowspan="2" >�Ա�����</td><td>�Աݰ�������</td><td>${e.ata_yourac }</td><td>�޴º�</td><td>${e.yourname }</td>
	</tr>
	<tr>
		<td>�Ա�����ǥ�ó���</td><td>${e.ata_youracmemo }</td><td>���</td>
		<td>
		<c:if test="${e.ata_check eq 0}">
		<form action="transfer_auto_cancle" method="post">
		<input type="hidden" name="ata_code" value="${e.ata_code }" />
		<input type="submit" value="���" />
		</form>
		</c:if>
		</td>
	</tr>
	<tr>
		<td rowspan="4" >�ڵ���ü����</td><td>������</td><td>${e.ata_startdate }</td><td>������</td><td><!-- ${e.ata_stopdate } -->//</td>
	</tr>
	<tr>
		<td>��ü�ݾ�</td><td>${e.ata_setmoney }</td><td>��ü����</td><td><!-- ${e.ata_dterm } -->//</td>
	</tr>
	<tr>
		<td>��ü�ð�</td><td>${e.ata_time }</td><td>�����Ȳ</td><td><!--${e.ata_ing }  -->//</td>
	</tr>
	<tr>
		<td>���Ῡ��</td><td>
		<c:if test="${e.ata_check eq 1}"> ��ü��</c:if>
		<c:if test="${e.ata_check eq 0}"> ������ü�ȴ�</c:if>
		<c:if test="${e.ata_check eq -1}"> ������</c:if>
		
		</td><td>�ð��缳��</td>
		<td> 
		<form action="transfer_timereset" method="post">
		<c:if test="${e.ata_check eq 0}">
		<input type="date" name="restartdate" id="ata_startdate"/>
		<br />
		<input type="time" name="retime" id="ata_time" />
		<input type="hidden" name="ata_code" value="${e.ata_code }" />
		<input type="submit" value="�ð��缳��" style="font-size: 3px;"/>
		</c:if>
		</form>
		 </td>
	</tr>
	
	</table>
	
	</c:forEach>
	<script>
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
	</script>