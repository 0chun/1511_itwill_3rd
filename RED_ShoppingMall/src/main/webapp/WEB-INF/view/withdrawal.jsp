<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- breadcrumbs -->
<script type="text/javascript" src="js/member.js"></script>
<link rel="stylesheet" href="css/customScript.css" type="text/css">
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a title="Go to Home Page" href="index.jsp">Home</a><span>&mdash;›</span></li>
				<li class="category13"><strong>회원 탈퇴</strong></li>
			</ul>
		</div>
	</div>
</div>
<!-- main-container -->
<div class="main-container col1-center-layout">
	<div class="main container">
		<div class="row">
			<section class="col-main col-sm-9 wow bounceInUp animated">
				<div class="page-title">
					<h2>회원탈퇴</h2>
				</div>
				<div class="static-contain">
					<form name="a">
						<fieldset class="group-select">
							<ul>
								<li id="billing-new-address-form">
									<fieldset>
										<legend>New Address</legend>
										<ul>
											<li>
											<input type="hidden" name="sm_password" value="${sMember.m_password}">
											<input type="hidden" name="sm_email" value="${sMember.m_email}">
											<input type="hidden" name="sm_phone" value="${sMember.m_phone}">
												<div class="customer-name">
													<div class="input-boxx name-firstname" style="width: 65%">
														<label for="billing:firstname"> 아이디<span
															class="required">* </span>
														</label> &nbsp;<span id="idMsg" style="color: red;"></span> <br>
														<input type="text" id="m_id" name="m_id"
															value="${sMember.m_id}" title="아이디" class="input-text"
															onchange="idcheck()" placeholder="기존 아이디 입력">
													</div>
												</div>
											</li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname" style="width: 65%">
														<label for="billing:lastname"> 비밀번호 <span
															class="required">*</span>
														</label> &nbsp;<span id="pwMsg" style="color: red;">${MSG}</span>
														<br> <input type="password" id="billing:lastname"
															name="m_password" value=""
															title="비밀번호" class="input-text" 
															placeholder="기존 비밀번호 입력">
													</div>
												</div>
											</li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname" style="width: 65%">
														<label for="billing:lastname"> 이메일 <span
															class="required">*</span>
														</label> &nbsp;<span id="emailMsg" style="color: red;"></span><br>
														<input type="text" id="billing:firstname" name="m_email"
															value="" title="이메일" class="input-text"
															onchange="emailcheck()"
															placeholder="가입 했을 당시 이메일 입력">
													</div>
												</div>
											</li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname" style="width: 65%">
														<label for="billing:lastname"> 휴대전화번호 <span
															class="required">*</span>
														</label> &nbsp;<span id="phoneMsg" style="color: red;"></span><br>
														<input type="text" id="billing:firstname" name="m_phone"
															value="" title="휴대전화번호"
															class="input-text" onchange="phonecheck()"
															placeholder="가입 했을 당시 휴대전화번호">
													</div>
												</div>
											</li>
										</ul>
									</fieldset>
								</li>

								<p class="require">
									<em class="required">* </em>필수 항목
								</p>
								<div class="buttons-set">
									<button type="button" title="Submit" class="button submit"
										onclick="withdrawal()">
										<span> 회원탈퇴 </span>
									</button>
								</div>
							</ul>
						</fieldset>
					</form>
				</div>
			</section>
			<jsp:include page="side_menu.jsp" />
		</div>
	</div>
</div>
<!--End main-container -->
