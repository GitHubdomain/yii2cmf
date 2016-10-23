/**
 * Created by yidashi on 16/7/28.
 */
$.extend(yii, {
    confirm: function (message, ok, cancel) {
        $.modal.confirm(message, ok, cancel);
    }
});
$(function () {
    $(document).off('click', "[data-remote-modal]").on('click', "[data-remote-modal]", function() {
        var url = $(this).data('remote-modal-url') || $(this).attr('href');
        var title = $(this).data('remote-modal-title') || $(this).text();
        var data = $(this).data('remote-modal-params') || {};
        $.modal.load(url, title, data);
        return false;
    });
})
$(function(){
    $("[data-toggle=tooltip]").tooltip({container: 'body'});

    //投票
    $('.vote a').on('click', function() {
        var a = $(this);
        var title = a.attr('data-original-title');
        $.ajax({
            url: a.attr('href'),
            dataType: 'json',
            success: function(data) {
                a.parent().find('.up i').attr('class', 'fa fa-thumbs-o-up');
                a.parent().find('.down i').attr('class', 'fa fa-thumbs-o-down');
                a.find('i').attr('class', a.find('i').attr('class').replace('o-', ''));
                a.parent().find('.up em').html(data.up);
                a.parent().find('.down em').html(data.down);
                a.attr('data-original-title');
                a.attr('data-original-title', '您已' + title).tooltip('show').attr('data-original-title', title);
            }
        });
        return false;
    });
    //详细页收藏
    $('.favourites a').on('click', function() {
        var a = $(this);
        var i = a.find('i');
        var em = a.find('em');
        var params = a.data('params');
        $.ajax({
            url: a.attr('href'),
            type:'post',
            data:params,
            dataType: 'json',
            success: function(data) {
                if(data.action == 'create') {
                    i.attr('class', 'fa fa-star');
                    a.attr('data-original-title', '您已收藏').tooltip('show').attr('data-original-title', '取消收藏');
                } else {
                    i.attr('class', 'fa fa-star-o');
                    a.attr('data-original-title', '您已取消收藏').tooltip('show').attr('data-original-title', '收藏');
                }
                em.html(data.count);
            }
        });
        return false;
    });
    //回复
    $(document).on("click", ".reply-btn", function(){
        $('.reply-form').removeClass('hidden');
        $('.reply-form').appendTo($(this).closest('.media-body'));
        $('.reply-form').find('.parent_id').val($(this).parents('li').attr('data-key'));
        if($(this).parents('div.media').length > 0) {
            $('.reply-form').find('textarea').val('@' + $(this).closest('.media-body').find('[rel=author]').first().html() + ' ');
        } else {
            $('.reply-form').find('textarea').val('');
        }
        return false;
    });
    // 签到
    $(".btn-registration").click(function(){
        var button = $(this);
        var url = button.attr('href');
        $.ajax({
            url: url,
            dataType: 'json',
            method:'post',
            success: function(html){
                button.html("<i class=\"fa fa-calendar-check-o\"></i> 今日已签到<br />已连续" + html.days + "天").removeClass('btn-registration').addClass('disabled');
            }
        });
        return false;
    });
    $(document).on('click', '.follow', function() {
        var a = $(this);
        var url = a.attr('href');
        $.ajax({
            url:url,
            method:'post',
            dataType: 'json',
            success:function(data) {
                if (a.hasClass('btn')) {
                    a.html('<i class="fa fa-check"></i> ' + data.message).addClass('disabled');
                } else {
                    a.replaceWith('<i class="fa fa-check"></i> ' + data.message);
                }
            }
        });
        return false;
    });
});
$('.view-content a').attr('target', '_blank');


$(document).ajaxError(function(event,xhr,options,exc){
    if(xhr.status == 302){
        $.modal.load(xhr.getResponseHeader('X-Redirect'));
    } else if(xhr.status == 403){
        $.modal.login();
    } else {
        var message = xhr.responseJSON ? xhr.responseJSON.message : '操作失败';
        $.modal.error(message);
    }
});
