var email;
$(function(){
    var _ticket=$.cookie("FLOWER_TICKET");
    if(!_ticket){// 等于null时返回。
        return;
    }
    $.ajax({
        url:"/queryMember/" + _ticket,
        type:"GET",
        success:function(data){
            if(data!=null){
                email=data.email;
                var html1 =email+"，欢迎光临鲜花礼品网！";
                var url1="/index/logOut?ticket="+_ticket;
                var html2="<a href="+url1+" style=\"font-size:x-small;text-decoration:none;\">退出</a>";
                $("#loginbar1").html(html1);
                $("#loginbar2").html(html2);
                $("#order_a").attr("href","/order/showOrder?email="+email);
                $("#cart_a").attr("href","/cart/showCart?email="+email);
            }
        },
        error : function(){
            alert('index error.');
        }
    });
});
function addCartOne(flowerid){
    if(flowerid==null){
        alert("商品id错误");
        return;
    }
    if(email==""||email==null){
        window.location.href="/index/toLogin";
        return;
    }
    $.ajax({
        url:"/cart/addCart?email="+email+"&flowerid="+flowerid+"&num=1",
        type:"GET",
        success:function (data) {
            alert(data);
            //window.location.href="/cart/showCart?email="+email;
        } ,
        error:function () {
            alert("发送失败");
        }
    });
}