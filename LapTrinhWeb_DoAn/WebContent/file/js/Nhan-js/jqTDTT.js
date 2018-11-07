$(function(){
	$("#formtdtt").validate({
            rules: {
                Fullname: {
                    required: true,
                    minlength: 5
                },
                email: {
                    required: true,
                    email: true
                },
                Telenum: {
                    required: true,
                    minlength:10,
                    maxlength:12,
                    number: true
                },
                Address: {
                    required: true,
                },
            },
            messages: {
                Fullname: {
                    required: "Bạn phải nhập họ và tên!",
                    minlength: "Tên kì thi ít nhất là 5 ký tự"
                },
                email: {
                    required: "Bạn phải nhập email!",
                    email: "Email không đúng định dạng!"
                },
                Telenum: {
                    required: "Bạn phải nhập số điện thoại cá nhân",
                    number: "Bạn phải nhập số",
                    minlength: "Số điện phải phải có ít nhất 9 chữ số",
                    maxlength: "Số điện thoại có tối đa 12 chữ số"
                },
                Address: {
                    required: "Bạn phải nhập địa chỉ",
                },
            },
         })
});
