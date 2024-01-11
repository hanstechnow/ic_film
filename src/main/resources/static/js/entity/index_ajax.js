var username;
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
                username=data.username;
                var html1 =username+"，IC电影！";
                var url1="/index/logOut?ticket="+_ticket;
                var html2="<a href="+url1+" style=\"font-size:x-small;text-decoration:none;\">退出</a>";
                $("#loginbar1").html(html1);
                $("#loginbar2").html(html2);
                $("#order_a").attr("href","/order/showOrder?username="+username);
                $("#cart_a").attr("href","/cart/showCart?username="+username);
            }
        },
        error : function(){
            alert('index error.');
        }
    });
});
function addCartOne(movieid){
    if(movieid==null){
        alert("商品id错误");
        return;
    }
    if(username==""||username==null){
        window.location.href="/index/toLogin";
        return;
    }
    $.ajax({
        url:"/cart/addCart?username="+username+"&movieid="+movieid+"&num=1",
        type:"GET",
        success:function (data) {
            alert(data);
            //window.location.href="/cart/showCart?username="+username;
        } ,
        error:function () {
            alert("发送失败");
        }
    });
}