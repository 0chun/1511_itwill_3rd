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
				<li class="category13"><strong>내 정보 수정</strong></li>
			</ul>
		</div>
	</div>
</div>
<!-- main-container -->
<div class="main-container col1-center-layout" >
	<div class="main container">
		<div class="row">
			<section class="col-main col-sm-9 wow bounceInUp animated">
				<div class="page-title">
					<h2>[${sMember.m_id}]님 회원정보</h2>
				</div>
				<div class="static-contain">
					<form name="a">
						<fieldset class="group-select">
							<ul>
								<li id="billing-new-address-form">
									<fieldset>
										<legend>New Address</legend>
										<ul>
											<li><input type="hidden" name="m_id"
												value="${sMember.m_id}" /> 
												<input type="hidden"
												name="m_password" value="${sMember.m_password}" />
												<input type="hidden" name= "m_sex" value="${sMember.m_sex}">
												<div class="customer-name" id="oldPassword">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 부분 변경 또는 전체 변경도
															가능합니다. <span class="required">*</span>
														</label><br>
														<button type="button" title="전체변경" class="button search"
															onclick="changeA()" value="0" name="abutton"> 
															<span> 전체변경 </span>
														</button>
													</div>
												</div>

												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 이름 변경을 원하시면 선택해주세요.
															<span class="required">*</span>
														</label> &nbsp;&nbsp;&nbsp;<span id="nameMsg" style="color: red;"></span>
														<br>
														<button type="button" title="이름변경" class="button search"
															onclick="changeN()" value="0" name="nbutton">
															<span> 이름변경 </span>
														</button>
														<input type="text" id="billing:firstname" name="m_name"
															value="${sMember.m_name}" title="Last Name"
															class="input-text" onchange="namecheck()"
															placeholder="예: 홍길동" style="display: none">

													</div>
												</div></li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 이메일 변경을 원하시면
															선택해주세요.<span class="required">*</span>
														</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
														<span id="emailMsg" style="color: red;"></span><br>
														<button type="button" title="이메일변경" class="button search"
															onclick="changeE()" value="0" name="ebutton">
															<span> 이메일변경 </span>
														</button>
														<input type="text" id="billing:firstname" name="m_email"
															value="${sMember.m_email}" title="이메일" class="input-text"
															onchange="emailcheck()"
															placeholder="예: Example@naver.com" style="display: none">
													</div>
												</div>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 휴대전화번호 변경을 원하시면
															선택해주세요. <span class="required">*</span>
														</label> <span id="phoneMsg" style="color: red;"></span><br>
														<button type="button" title="휴대전화번호변경"
															class="button search" onclick="changeP()" value="0"
															name="pbutton">
															<span> 휴대전화번호변경 </span>
														</button>
														<input type="text" id="billing:firstname" name="m_phone"
															value="${sMember.m_phone}" title="휴대전화번호"
															class="input-text" onchange="phonecheck()"
															placeholder="예: 010-1234-1234" style="display: none">
													</div>
												</div>
											</li>
											<li>
												<div class="customer-name">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 주소 변경을 원하시면 선택해주세요.<span
															class="required">*</span>
														</label> <span id="addressMsg" style="color: red;"></span><br>
														<input type="text" id="billing:firstname" name="m_address"
															value="${sMember.m_address}" title="Last Name"
															class="input-text" placeholder="지역의 동/읍/면/리 명을 입력."
															onchange="zipcode_view()" style="display: none">
														<button type="button" title="Submit" class="button search"
															name="zvbutton" onclick="zipcode_view()"
															style="display: none">
															<span> 우편번호검색 </span>
														</button>
														<button type="button" title="주소변경" class="button search"
															onclick="changeAZ()" value="0" name="azbutton">
															<span> 주소변경 </span>
														</button>
													</div>
												</div>
											
												<div class="customer-name" id="zipcodeli"
													style="display: none">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 우편번호 <span
															class="required">*</span>
														</label> &nbsp;<span id="zipcodeMsg" style="color: red;"></span><br>
														<span id="zipcodeMsg" style="color: red;"></span> <input
															type="text" id="billing:firstname" name="m_zipcode"
															value="${sMember.m_zipcode}" title="Last Name"
															class="input-text" readonly="readonly"
															placeholder="우편번호를 검색해주세요." onclick="selectZipcode()">
													</div>
												</div>
											
												<div class="customer-name" id="oldPassword">
													<div class="input-boxx name-lastname">
														<label for="billing:lastname"> 비밀번호변경 전용페이지로 가기. <span
															class="required">*</span>
														</label><br>
														<button type="button" title="비밀번호변경" class="button search"
															onclick="changePass()" value="0" name="chbutton">
															<span> 비밀번호변경 페이지 </span>
														</button>
														<!--    <div class="customer-name" id="changePassword"
                                             style="display: none">
                                             <div class="input-boxx name-lastname">
                                                <input type="password" id="billing:" name="oldPassword"
                                                   value="" title="Last Name" class="input-textt"
                                                   placeholder="기존 비밀번호를 입력해주세요.">
                                                &nbsp; <span id="pwMsg3" style="color: red;"></span> <input
                                                   type="password" id="billing:" name="m_password"
                                                   value="" title="Last Name" class="input-textt"
                                                   onchange="pwcheck()" placeholder="새로운 비밀번호">
                                                &nbsp; <span id="pwMsg" style="color: red;"></span> <input
                                                   type="password" id="billing:" name="m_password2"
                                                   value="" title="Last Name" class="input-textt"
                                                   onchange="pwcheck2()" placeholder="새로운 비밀번호 재입력">
                                                &nbsp; <span id="pwMsg2" style="color: red;"></span> <br>
                                             </div>
                                          </div> -->
													</div>
												</div>

											</li>
											<!--    <li>
                                   <div class="customer-name" id="zipcode" >
                                      <div class="input-boxx name-lastname">
                                          <label for="billing:lastname" id="searchAddress">  
                                          </label>&nbsp;<span id="hideMsg" style="color: red;"></span><br>
                                          <select id="billing:firstname" name="searchZip" 
                                             title="Last Name" class="input-select" size="5">
                                             <option value="433-224" >부천시 소사구 괴안동 433-224</option>
                                             <option value="433-225" >부천시 소사구 괴안동 433-225</option>
                                             <option value="433-226" >부천시 소사구 괴안동 433-226</option>
                                             <option value="433-227" >부천시 소사구 괴안동 433-227</option>
                                             <option value="433-228" >부천시 소사구 괴안동 433-228</option>
                                       </select>
                                           <button type="button" title="Submit" class="button search" id="zipcodebutton"
                                              onclick="sendZipcode()">  
                                             <span> 선택완료 </span>
                                          </button>
                                       </div>
                                     </div>
                                     </li> -->
										</ul>
									</fieldset>
								</li>

								<p class="require">
									<em class="required">* </em>필수 항목
								</p>
								<div class="buttons-set">
									<button type="button" title="Submit" class="button submit"
										onclick="updateInfo()">
										<span> 정보변경 </span>
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
