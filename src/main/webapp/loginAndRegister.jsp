<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

	<head>
		<title>在线投票系统登录|注册</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="${APP_PATH }/static/js/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="${APP_PATH }/static/js/login.js"></script>
		<link href="${APP_PATH }/static/css/login2.css" rel="stylesheet" type="text/css" />
		<link rel="shortcut icon" type="image/x-icon" href="${APP_PATH }/static/images/favicon.ico">
	</head>

	<body>
		<h1>在线投票系统</h1>

		<div class="login" style="margin-top: 50px;">

			<div class="header">
				<div class="switch" id="switch">
					<a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
					<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a>
					<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
				</div>
			</div>

			<div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">

				<!--登录-->
				<div class="web_login" id="web_login">

					<div class="login-box">

						<div class="login_form">
							<form action="${APP_PATH }/login" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">
								<input type="hidden" name="did" value="0" /> <input type="hidden" name="to" value="log" />
								<div id="loginCue" class="cue"></div>
								<script>
									var msg = '${msg}';
									if(msg != ''){
										$("#web_qr_login").css("height","275px");
										$("#loginCue").append("<font color='red'><b>用户名或密码错误</b></font>");
									}else{
										$("#loginCue").hide();
									}
								</script>
								<div class="uinArea" id="uinArea">
									<label class="input-tips" for="u">帐号：</label>
									<div class="inputOuter" id="uArea">

										<input type="text" id="u" name="username" class="inputstyle" />
									</div>
								</div>
								<div class="pwdArea" id="pwdArea">
									<label class="input-tips" for="p">密码：</label>
									<div class="inputOuter" id="pArea">

										<input type="password" id="p" name="password" class="inputstyle" />
									</div>
								</div>

								<div style="padding-left: 50px; margin-top: 20px;">
									<input type="submit" value="登 录" style="width: 150px;" class="button_blue" />
								</div>
							</form>
						</div>

					</div>

				</div>
				<!--登录end-->
			</div>

			<!--注册-->
			<div class="qlogin" id="qlogin" style="display: none;">

				<div class="web_login">
					<form name="form2" id="regUser" accept-charset="utf-8" action="${APP_PATH }/register" method="post">
						<input type="hidden" name="to" value="reg" /> <input type="hidden" name="did" value="0" />
						<ul class="reg_form" id="reg-ul">
							<li>
								<div id="userCue" class="cue">
									${find_user == '用户名已存在' ? find_user : '快速注册请注意格式' }
								</div>
							</li>
							<li><label for="user" class="input-tips2">用户名：</label>
								<div class="inputOuter2">
									<input type="text" id="user" name="username" maxlength="16" class="inputstyle2" />
								</div>
							</li>

							<li><label for="passwd" class="input-tips2">密码：</label>
								<div class="inputOuter2">
									<input type="password" id="passwd" name="passwd" maxlength="16" class="inputstyle2" />
								</div>
							</li>
							<li><label for="passwd2" class="input-tips2">确认密码：</label>
								<div class="inputOuter2">
									<input type="password" id="passwd2" name="password" maxlength="16" class="inputstyle2" />
								</div>
							</li>


							<li>
								<div class="inputArea">
									<input type="button" id="reg" style="margin-top: 10px; margin-left: 85px;width: 150px;" class="button_blue" value="注册" />
								</div>

							</li>
							<!-- <div class="cl"></div> -->
					</ul>
					</form>

				</div>

			</div>
			<!--注册end-->
		</div>
	</body>

</html>