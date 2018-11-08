$(function(){
	$("#formthemtb").validate({
            rules: {
                noidungtb: {
                    required: true,
                    minlength: 10
                },
                optradio: {
                    required: true
                }

            },
            messages: {
                noidungtb: {
                    required: "Bạn không được bỏ trống nội dung!",
                    minlength: "Nội dung thông báo ít nhất 10 ký tự"
                },
                optradio: {
                    required: "!"
                }
            },
         })
});
