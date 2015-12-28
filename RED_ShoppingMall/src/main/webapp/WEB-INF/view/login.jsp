<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="main-container col1-layout">
	<div class="main container">
		<div class="account-login">
			<div class="page-title">
				<h2>로그인 / 회원가입</h2>
			</div>
			<fieldset class="col2-set">
				<legend>로그인 / 회원가입</legend>
				<div class="col-1 new-users">
						<h2>POLO 회원가입을 환영합니다!</h2>
					<div class="content">
						<br />
						<p>
							<br /> 지금 POLO 의 회원으로 가입하시면 전국 어디서나 신속한 배송 서비스, 선호 브랜드 상품의
							묶음배송 서비스, 상품을 구매 시 마다 현금처럼 사용할 수 있는 포인트 적립 및 사용 서비스, 주문내역관리 등의
							체계적 MEMBER 서비스 등 다양한 혜택을 받으실 수 있습니다.
						</p>
						<br />
						<div class="buttons-set">
							<button onclick="location.href='joinForm';"
								class="button create-account" type="button">
								<span>회원가입</span>
							</button>
						</div>
					</div>
				</div>
				<form action="login" name="f" method="post">
					<div class="col-2 registered-users">
						<strong>로그인</strong>
						<div class="content">
							<ul class="form-list">
								<li><label for="email">아이디 <span
										class="required">*</span><span
										style="color: red; font-size: 10px;">&nbsp;&nbsp;&nbsp;
											${MSG1 }</span></label> <br> <input type="text" title="Email Address"
									class="input-text required-entry" id="email"
									value="${fMember.m_id }" name="login[username]"></li>
								<li><label for="pass">비밀번호 <span class="required">*</span><span
										style="color: red; font-size: 10px;">&nbsp;&nbsp;&nbsp;
											${MSG2 }</span></label> <br> <input type="password" title="Password"
									id="pass" class="input-text required-entry validate-password"
									name="login[password]" value="${fMember.m_password }"></li>
							</ul>
							<p class="required">* 필수입력란 입니다.</p>
							<div class="buttons-set">

								<button id="send2" name="send" type="submit"
									class="button login">
									<span>로그인</span>
								</button>

								<a class="forgot-word"
									href="http://demo.magentomagik.com/computerstore/customer/account/forgotpassword/">비밀번호를
									잊어버리셨나요?</a>
							</div>
						</div>
					</div>
				</form>
			</fieldset>
		</div>
		<br> <br> <br> <br> <br>
	</div>
</section>