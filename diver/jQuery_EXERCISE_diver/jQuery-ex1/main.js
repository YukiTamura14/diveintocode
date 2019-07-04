$(function() {
  $('.tab li').click(function() {
    // すべてのタブからselectクラスを取り除く
    $('.tab li').removeClass('select');
    $(this).addClass('select');
     $('.content li').addClass('hide');
     
      const index = $('.tab li').index($(this))
       $('.content li').eq(index).removeClass('hide');
  });
});