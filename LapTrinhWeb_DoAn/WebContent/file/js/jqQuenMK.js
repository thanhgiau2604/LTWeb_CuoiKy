﻿$(function(){


   /* $('.btnGT').click(function(){
        if ($("label#Username-error").display)
    }*/

	$("#formquenmk").validate({
            rules: {
                Username: {
                    required: true,
                    minlength: 6
                },
                PasswordC2: {
                    required: true,
                    minlength: 6
                },
            },
            messages: {
                Username: {
                    required: "Bạn phải nhập tên đăng nhập!",
                    minlength: "Bạn phải nhập tối thiểu 6 ký tự"
                },
                PasswordC2: {
                    required: "Bạn không được bỏ trống mật khẩu!",
                    minlength: "Bạn phải nhập tối thiểu 6 ký tự"
                },
            },
         });


    $("#laylaimk").validate({
            rules: {
                newpass: {
                    required: true,
                    minlength: 6
                },
                repass: {
                    required: true,
                    equalTo: "#Form-email5"
                },
            },
            messages: {
                newpass: {
                    required: "Bạn chưa nhập mật khẩu mới!",
                    minlength: "Bạn phải nhập tối thiểu 6 ký tự"
                },
                repass: {
                    required: "Bạn chưa xác nhận mật khẩu!",
                    equalTo: "Mật khẩu không khớp"
                },
            },
         })

    $("#formquenmk").on('submit',function(e){
        if ((!$('#Username-error').is(':visible')) && (!$('#PasswordC2-error').is(':visible')))
        {
            e.preventDefault();   
            $('#modalquenmk').modal("show");
        }
    })
});