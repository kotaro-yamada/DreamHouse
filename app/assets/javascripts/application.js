// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require jquery.min.js
//= require_tree .
//= require moment
//= require fullcalendar

//$(document).ready(function(){
  // NOTE: ブラウザバック時挙動がおかしくなるので要修正
  // id = q_prefecture_id_eq な要素群を持ってくる
  //let prefectureSelect = document.getElementById('q_prefecture_id_eq')
  //if(prefectureSelect) {
      // 持ってきた要素群の値が変化(=change)したら処理を行う
   // prefectureSelect.addEventListener('change', function(){
    // 持ってきた要素群のうち選択された要素(=東京などの)value(=13 ,14 ,15 ..)を取得する
   // let prefectureId =  prefectureSelect.selectedIndex
    // id = city_select な要素群を持ってくる
   // let cityElement = document.getElementById('city_select')
    // 東京の場合は表示する
    // 東京以外の場合は非表示にする
   // if ( prefectureId == 13 ) {
      // 改行なしで表示
      //cityElement.style.display = 'inline'
   // } else {
     // cityElement.style.display = 'none'
    //}
  //})
 // }
//});
//　ログインパネル　上記JSと分離して記述
// turbolinks:loadで毎回のページ読み込みを追記
$(document).on('turbolinks:load', function() {
  $('.nav_toggle').on('click', function () {
      $('.nav_toggle, .toggle-menu').toggleClass('show');
  });
})

/*fullcalendar*/
$(function () {
  $(document).on('turbolinks:load', function () {
      function eventCalendar() {
          return $('#calendar').fullCalendar({});
      };
      function clearCalendar() {
          $('#calendar').html('');
      };
      $(document).on('turbolinks:load', function () {
        eventCalendar();
      });
      $(document).on('turbolinks:before-cache', clearCalendar);

      $('#calendar').fullCalendar({
        houses: '/show.json'
      });
    }
  });
});

