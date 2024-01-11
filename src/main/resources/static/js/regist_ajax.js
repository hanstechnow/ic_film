$(function(){
	$("input[name='username']").blur(function(){
		var username = $(this).val();
		
		if(formObj.checkNull("username","Username不能为空！") && formObj.checkUsername()){
			$.post("/index/checkusername",{"username":username},function(result){
				$("#username_msg").text(result);
				$("#username_msg").css("color","red");
			});
		}
	});
	
	$("input[name='passw1']").blur(function(){
		formObj.checkNull("passw1","密码不能为空！");
		formObj.checkPassword();
		
	});
	
	$("input[name='passw2']").blur(function(){
		formObj.checkNull("passw2","确认密码不能为空！");
		formObj.checkPassword();
	});
	
	$("form").submit(function(){
		var flag=true;
		flag=formObj.checkNull("username","Username不能为空！") && flag;
		flag=formObj.checkNull("passw1","密码不能为空！") && flag;
		flag=formObj.checkNull("passw2","确认密码不能为空！") && flag;
		flag=formObj.checkUsername() && flag;
		flag=formObj.checkPassword() && flag;
		
		var username = $("input[name='username']").val();
		var passw1 = $("input[name='passw1']").val();		
		if(flag){
			$.post("/index/doRegister",{"username":username,"passw1":passw1},function(result){
				if(result=="注册成功"){
					alert(result);
					window.location.href("/index");
				}else{}
					$("#form_msg").html(result);
					$("#form_msg").css("color","red");
			});		
		}
		return false;		
	});	
});

var formObj={
		"checkPassword":function(){
			var passw1=$("input[name='passw1']").val();
			var passw2=$("input[name='passw2']").val();
			if(passw1.length>0 &&passw2.length>0){
				if(passw1!=passw2){
					this.setMsg("passw1","两次密码不一致！");
					this.setMsg("passw2","两次密码不一致！");
					return false;
				}else{
					this.setMsg("passw1","");
					this.setMsg("passw2","");
				}
			}
			return true;
		},
		"checkUsername":function(){
			// var username=$("input[name='username']").val();
			// var regExp=/^\w+@\w+(\.\w+)+$/;
			// if(username.length>0){
			// 	if(!regExp.test(username)){
			// 		this.setMsg("username","username格式不正确！");
			// 		return false;
			// 	}
			// }
			return true;
		},
		"checkNull":function(name,msg){
			var value =$("input[name='"+ name +"']").val();
			if(value.length ==0){
				this.setMsg(name,msg);
				return false;
			}else{
				this.setMsg(name,"");
			}
			return true;
		},
		"setMsg":function(name,msg){
			$("#"+name+"_msg").text(msg);
			$("#"+name+"_msg").css("color","red");
	//		$("#passw2_msg").css("color","red");
		}
		
}

