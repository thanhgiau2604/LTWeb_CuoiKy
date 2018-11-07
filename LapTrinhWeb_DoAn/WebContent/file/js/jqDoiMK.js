$(function(){
	$("#formdoimatkhau").validate({
            rules: {
                PasswordOld: {
                    required: true,
                    minlength: 6
                },
                PasswordNew: {
                    required: true,
                    minlength: 6
                },
                Repassword: {
                    required: true,
                    equalTo: "#PasswordNew",
                },
            },
            messages: {
                PasswordOld: {
                    required: "Bạn phải nhập mật khẩu hiện tại",
                    minlength: "Mật khẩu phải có ít nhất 6 ký tự",

                },
                PasswordNew: {
                    required: "Bạn phải nhập mật khẩu mới", 
                    minlength: "Mật khẩu phải có ít nhất 6 ký tự"
                },
                 Repassword: {
                    required: "Bạn phải nhập lại mật khẩu mới", 
                    equalTo: "Mật khẩu không khớp"
                }
            },
         })
});