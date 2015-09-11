//专门检测用户名
   function checkName(){
	   var name =$.trim($("#uname") .val());//val()方法可以获取文本域的值。$.trim去除输入字符串两段的空格
       //alert(name);
       var len=name.length;
	   var errmsg=null;
	   var ret=false;//默认为false。
	   if(len == 0){errmsg='昵称不能为空' ;}
	  else if (len<2){errmsg='昵称不能小于2个字符';}
	  else {errmsg='ok!';ret=true;}
	   $('#uname-element span') .text(errmsg);//.text()方法是修改标签里面的内容。
       return ret;//只有检测成功的时候才返回true。
   };
 //专门检查密码
function checkPass(){
var pass=$("#upass").val();
var len=pass.length;
var errmsg=null;
var ret=false;
if  (len==0) {errmsg='密码不能为空';}
else if (len<6) {errmsg = '密码不能小于六位';}
else {errmsg= 'ok!';ret=true;}
$('#upass-element span') .text(errmsg);
return ret;
   };
//检查重复密码
function checkRepass(){
var pass=$("#upass").val();
var fpass=$("#repass").val();
var len=pass.length;
var errmsg=null;
var ret=false;
if  (len==0) {errmsg='重复密码不能为空';}
else if (pass!=fpass) {errmsg = '两次密码不一致';}
else {errmsg= 'ok!';ret=true;}
$('#repass-element span') .text(errmsg);
   return ret;
};
//检测email
/*
判断邮箱格式:
邮箱一般不区分大小写,将首先把大写字母转换为小写字幕。
chengliran@126.com   包含chenliran=>字幕、数字、中横线（1-30个）  @  126 =>字幕、数字、中横线（1-65个字符） .   com=>cn、net、info、org（只能是字母2-6个字符）几部分
perl 风格的正则表达式：
/[a-z0-9-]{1,30}@[a-z0-9-]{1,65}.[a-z]{2,4}/
*/
function isEmail(str) {
	str = str.toLowerCase();//简单的js函数，将大写转换为小写。
 var regex=/[a-z0-9-]{1,30}@[a-z0-9-]{1,65}.[a-z]{2,4}/;
//str=为转换方法
return regex.test(str);//用regex去test str，如果格式符合regx的正则表达式，则返回true，否则返回false。
}


   function checkEmail(){
	    var email =$.trim($("#email") .val());//val()方法可以获取文本域的值。$.trim去除输入字符串两段的空格
       //alert(name);
       var len=email.length;
	   var errmsg=null;
	   var ret=false;
	   if(len == 0){errmsg='Email不能为空';}
	  else if (!isEmail(email)){errmsg='Email 格式不正确';}
	  else {errmsg='ok!';ret=true;}
	   $('#email-element span') .text(errmsg);//.text()方法是修改标签里面的内容。
      return ret;
   };
  $(document).ready(function(){
	  $("#emil").blur(function(){
		  checkEmail();
		  });
	  $("#uname") .blur(function(){
	  checkName();
	  });
	  
	  $("#upass") .blur(function(){
	  checkPass();
	  });
	  
	   $("#repass") .blur(function(){
	  checkRepass();
	  });

	
$(':submit') .click(function(){
 if(!checkName()){return false;}//!checkName就是返回false的意思。此时的if为真，则执行此函数，阻止提交。
 if(!checkName()){return false;}
 if(!checkPass()){return false;}
 if(!checkRepass()){return false;}
 if(!checkEmail()){return false;}
  //在我们这个例子中，如果submit按钮点击后出现在了页面刷新就说明它提交了。submit默认情况下是会提交了，但是我们要的效果是只要检测到前面有一项不合格就阻止submit提交，阻止提交的方法是return false;这就需要前面的处理函数返回布尔值。返回布尔值得写法是 var ret=false 然后什么时候ret=true，然后做后return ret，这就是返回true或或false.
  
  });

});
	