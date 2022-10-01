<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Sidebar -->
		<div class="sidebar sidebar-style-2">			
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<c:choose>
						<c:when test="${member.mem_email==null }">
							<!-- �α��� â �����մϴ�. -->
								<div class="form-group">
									
									<input type="button"  onclick="location='loginPage'" class="btn btn-primary btn-block" value="�α���" />
									<input type="button" onclick="location='memberForm'" class="btn btn-primary btn-block" value="ȸ������" />
								</div>
							<!-- �α��� â �� -->
							<!-- ȸ������ â �����մϴ�. -->
								<!-- <div class="form-group">
									
								</div> -->
							<!-- ȸ������ â �� -->
						</c:when>
						<c:otherwise>
							<!-- �α��� ���� ���� -->
							<div class="user">
								<div class="info">
									<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
										<span>
											
											<span class="user-level">${member.mem_name }��</span>
											<span class="caret"></span>
										</span>
									</a>
									<div class="clearfix"></div>
		
									<div class="collapse in" id="collapseExample">
										<ul class="nav">
											<li>
												<a href="pri_info_chk">
													<span class="link-collapse">����������</span>
												</a>
											</li>
											<li>
												<a href="logout">
													<span class="link-collapse">�α׾ƿ�</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- �α��� ���� �� -->
						</c:otherwise>
					</c:choose>
					
					<ul class="nav nav-primary">
						
						<li class="nav-item">
							<a data-toggle="collapse" href="#deposit">
								<i class="fas fa-layer-group"></i>
								<p>����</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="deposit">
								<ul class="nav nav-collapse">
									<li>
										<a href="inquire">
											<span class="sub-item">��ȸ</span>
										</a>
									</li>
									<li>
										<a href="transfer">
											<span class="sub-item">��ü</span>
										</a>
									</li>
									<li>
										<a href="new">
											<span class="sub-item">�ű�</span>
										</a>
									</li>
									<li>
										<a href="cancel">
											<span class="sub-item">����</span>
										</a>
									</li>
									<!-- <li>
										<a href="analysis">
											<span class="sub-item">�м�</span>
										</a>
									</li> -->
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#sidebarLayouts">
							<i class="fas fa-layer-group"></i>
							<p>����</p>
							<span class="caret"></span>
							</a>
							<div class="collapse" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									<li>
										<a href="product">
											<span class="sub-item">��ǰ�Ұ�</span>
										</a>
									</li>
									<li>
										<a href="application">
											<span class="sub-item">���� ��û</span>
										</a>
									</li>
									<li>
										<a href="fileuploadhome">
											<span class="sub-item">���� ����</span>
										</a>
									</li>
									<li>
										<a href="check">
											<span class="sub-item">���� ��Ȳ ��ȸ</span>
										</a>
									</li>
									<li>
										<a href="repayment">
											<span class="sub-item">���� ��ȯ</span>
										</a>
									</li>
									<li>
										<a href="caculator">
											<span class="sub-item">���� ����</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="nav-item">
							<a data-toggle="collapse" href="#forms">
								<i class="fas fa-layer-group"></i>
								<p>������</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="forms">
								<ul class="nav nav-collapse">
									<li>
										<a href="qna">
											<span class="sub-item">���� ã�� ����</span>
										</a>
									</li>
									<li>
										<a href="1on1question_princhk">
											<span class="sub-item">1:1 �����ϱ�</span>
										</a>
									</li>
									<li>
										<a href="myquestion">
											<span class="sub-item">���� ���Ǳ�</span>
										</a>
									</li>
									<!-- <li>
										<a href="forms/forms.jsp">
											<span class="sub-item">����� ATM ��ȸ</span>
										</a>
									</li> -->
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#tables">
								<i class="fas fa-layer-group"></i>
								<p>���� ���� ����</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="tables">
								<ul class="nav nav-collapse">
									<li>
										<a href="pri_info_chk">
											<span class="sub-item">���� ���� ��ȸ / ����</span>
										</a>
									</li>
									<li>
										<a href="tap">
											<span class="sub-item">ID ��ȸ</span>
										</a>
									</li>
									<li>
										<a href="mem_pw_reset_input">
											<span class="sub-item">����� ��ȣ �缳��</span>
										</a>
									</li>
									<li>
										<a href="security">
											<span class="sub-item">����ī�� / OTP</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="chatGide">
								<i class="fas fa-layer-group"></i>
								<p>ä�� ȭ����</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="goNews">
								<i class="fas fa-layer-group"></i>
								<p>�������</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<!-- End Sidebar -->