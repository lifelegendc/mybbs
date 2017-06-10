    <!--
 
   
//    function bigger(){
//    	 var img = document.getElementById('img');
//     img.style.width = '250px';
//     img.style.height = '125px';
//    }
//     
//    function smaller(){
//    	 var img = document.getElementById('img');
//     img.style.width = '200px';
//     img.style.height = '100px';
//     }
    //可进行图片的放大和缩小，本次网页设计尚未用到
	function checkAcnt(){
		var acnt = reg.user_name.value;
		if(acnt == ""){
			document.getElementById("user_name").innerHTML="账号不能为空";
			reg.user_name.focus;
			return false;
		}else{
			document.getElementById("user_name").innerHTML="";
		}
		
		if(acnt.length > 12){
			document.getElementById("user_name").innerHTML="只能输入长度小于等于12位的账号";
			reg.user_name.focus;
			return false;
		}else{
			document.getElementById("user_name").innerHTML="";
		}
		
		//以下方法可取消，因为使用正则表达式可得同样的效果，并且效率高
		/*
		if(hasSpace(acnt)){
			alert("不能包含空格和换行");
			reg.acnt.focus;
			return false;
		} 
		*/
		
		return true;
	}
	
	function checkPwd(){
		if(reg.user_password.value.length < 6){
			document.getElementById("pwdv").innerHTML="密码不能少于六位";
			reg.user_password.focus;
			return false;
		}else{
			document.getElementById("pwdv").innerHTML="";
		}
		
			return true;
	}
	function checkCpwd(){
		if(reg.user_password_again.value == ""){
			document.getElementById("cpwd").innerHTML="请确认设置的密码";
			reg.user_password_again.focus;
			return false;
		}else{
			document.getElementById("cpwd").innerHTML="";
		}
		
		if(reg.user_password.value != reg.user_password_again.value){
			document.getElementById("cpwd").innerHTML="两次输入密码不一致，请重新输入";
			reg.user_password_again.focus;
			return false;
		}else{
			document.getElementById("cpwd").innerHTML="";
		}
		return true;
	}
	

	
	function checkEmail(){
		if(reg.email.value == ""){
			document.getElementById("emailv").innerHTML="Email不能为空";
			reg.email.focus;
			return false;
		}else{
			document.getElementById("emailv").innerHTML="";
		}
		return true;
	}
	
	function checkQuestion(){
		if(reg.question.value == ""){
			document.getElementById("questionv").value="找回密码问题不能为空";
			reg.question.focus;
			return false;
		}else{
			document.getElementById("questionv").innerHTML="请牢记";
		}
		return true;
	}
	
	function checkAnswer(){
		if(reg.answer.value == ""){
			document.getElementById("answerv").innerHTML="找回密码答案不能为空";
			reg.answer.focus;
			return false;
		}else{
			document.getElementById("answerv").innerHTML="请牢记";
		}
		return true;
	}
	

	
	function openWin(user_name){
	   if (!checkAcnt()){
			reg.user_name.focus();
			//System.out.println("输入不合法！");
			return;
	   }
	//System.out.println(user_name.value); 
	// out.clear();  
	//out.flush();
	   var str="checkUser.jsp?user_name='"+user_name+"'";
	   window.showModalDialog(str,"","dialogWidth=300px;dialogHeight=150px;status=no;help=no;scrollbars=no");
	}
	
	function openWin2(user_name){
		   if (!checkAcnt()){
				reg.user_name.focus();
				//System.out.println("输入不合法！");
				return;
		   }
		//System.out.println(user_name.value); 
		// out.clear();  
		//out.flush();
		   var str="checkAdmin.jsp?user_name='"+user_name+"'";
		   window.showModalDialog(str,"","dialogWidth=300px;dialogHeight=150px;status=no;help=no;scrollbars=no");
		}
		
	//-->
