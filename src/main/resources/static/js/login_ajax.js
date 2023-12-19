$(function() {
	$("form").submit(function() {
		var email = $("input[name='email']").val();
		var password = $("input[name='password']").val();
		$.get("/index/doLogin", {
			"email" : email,
			"password" : password
		}, function(result) {
			if(result=="登录成功!")
				window.location.href="/index";
			else
				alert(result);
		});
		return false;
	})
})
