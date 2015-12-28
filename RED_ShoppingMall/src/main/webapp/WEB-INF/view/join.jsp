<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- breadcrumbs -->
  <script type="text/javascript" src="js/member.js"></script>
  <link rel="stylesheet" href="css/customScript.css" type="text/css">
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <ul>
          <li class="home"> <a title="Go to Home Page" href="index.jsp">Home</a><span>&mdash;›</span></li>
          <li class="category13"><strong>회원가입</strong></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- main-container -->
  		
  <div class="main-container col1-center-layout" style="margin-left: 24%;">
    <div class="main container">
      <div class="row">
        <section class="col-main col-sm-9 wow bounceInUp animated">
          <div class="page-title">
            <h2> 회원가입 </h2>
          </div>
          <div class="static-contain">
					<form name="a" >
						<fieldset class="group-select">
							<ul>
								<li id="billing-new-address-form">
									<fieldset>
										<legend>New Address</legend>
										<input type="hidden" name="billing[address_id]" value=""
											id="billing:address_id">
										<ul>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-firstname">
														<label for="billing:firstname"> 아이디<span
															class="required">* </span> </label> &nbsp;<span id="idMsg" style="color: red;"></span> <br> 
															<input type="text"
															id="m_id" name="m_id"
															value="${jMember.m_id}" title="아이디"
															class="input-textt " onchange="idcheck()" placeholder="영문소문자,숫자 포함 5~12자리 이내"> 
															<button type="button" title="Submit" class="button search"
															 onclick="ajaxRequestPost()">
															 	<span> 중복확인 </span>
														</button>
													</div>
												</div>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 이름 <span
															class="required">*</span>
														</label> &nbsp;<span id="nameMsg" style="color: red;"></span> <br> 
														<input type="text" id="billing:firstname"
															name="m_name" value="${jMember.m_name}" title="이름"
															class="input-text" onchange="namecheck()" placeholder="예: 홍길동" onclick="clearId()">
													</div>
												</div>
											</li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 비밀번호 <span
															class="required">*</span>
														</label> &nbsp;<span id="pwMsg" style="color: red;">${MSG}</span> <br>
														 <input type="password" id="billing:lastname"
															name="m_password" value="${jMember.m_password}"
															title="비밀번호" class="input-text" onchange="pwcheck()" onclick="clearId()"
															placeholder="영문, 숫자 2가지조합 8~12자리 이내.">
													</div>
												</div>
											
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 비밀번호 재입력 <span
															class="required">*</span>
														</label> &nbsp;<span id="pwMsg2" style="color: red;">${MSG}</span> <br>
														 <input type="password" id="billing:lastname"
															name="m_password2" value="" title="비밀번호 재입력"
															class="input-text" onchange="pwcheck2()" placeholder="비밀번호와 똑같이 입력해주세요.">
													</div>
												</div>
											</li>
										
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 이메일 <span
															class="required">*</span>
														</label> &nbsp;<span id="emailMsg" style="color: red;"></span><br> 
														<input type="text" id="billing:firstname"
															name="m_email" value="${jMember.m_email}"
															title="이메일" class="input-text" onchange="emailcheck()"
															placeholder="예: Example@naver.com">
													</div>
												</div>
											
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 휴대전화번호 <span
															class="required">*</span>
														</label> &nbsp;<span id="phoneMsg" style="color: red;"></span><br>
														<input type="text" id="billing:firstname"
															name="m_phone" value="${jMember.m_phone}"
															title="휴대전화번호" class="input-text" onchange="phonecheck()"
															placeholder="예: 010-1234-1234" >
													</div>
												</div>
											</li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 주소 <span
															class="required">*</span>
														</label>&nbsp;<span id="addressMsg" style="color: red;"></span><br>
														<input type="text" id="billing:firstname"
															name="m_address" value="${jMember.m_address}"
															title="Last Name" class="input-textt" 
															placeholder="지역의 동/읍/면/리 명을 공백 없이 입력.">
														 <button type="button" title="우편번호찾기" class="button search" 
															 onclick="zipcode_view()">  
															<span> 우편번호 </span>
														</button>
													</div>
												</div >
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 우편번호 <span
															class="required">*</span>
														</label> &nbsp;<span id="zipcodeMsg" style="color: red;"></span><br> 
														<input type="text" id="billing:firstname"
															name="m_zipcode" value="${jMember.m_zipcode}"
															title="우편번호" class="input-text" readonly="readonly"
															placeholder="우편번호를 검색해주세요." onclick="selectZipcode()">
													</div>
												</div>
											</li>
										
										</ul>
									</fieldset>
								</li>
								<li>
												<div class="customer-name">
													<div class="input-box name-lastname">
														<label for="billing:lastname"> 성별 <span
															class="required">*</span>
														</label> &nbsp;<span id="genderMsg" style="color: red;"></span><br>
														<input type="radio" id="input-radio"
															name="m_sex" value="남성" title="남성"
															class="input-radio">남성 &nbsp;&nbsp; <input
															type="radio" id="input-radio" name="m_sex"
															value="여성" title="여성" class="input-radio">여성
													</div>
												</div>
											</li>
								<li>

									<p class="require">
										<em class="required">* </em>필수 항목
									</p>
									<div class="buttons-set">
										<button type="button" title="회원가입" class="button submit"
											onclick="joinSub();">
											<span> 회원가입 </span>
										</button>
									</div>
								</li>
							</ul>
			
						</fieldset>
					</form>
				</div>
        </section>
      
      </div>
    </div>
  </div>
  	
  <!--End main-container --> 