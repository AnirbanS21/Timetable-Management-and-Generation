<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Syllabus</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  </head>
  <body class="background">
      <h1 align="center">Syllabus for IT Department</h1>
      <div class="box1">
      <h1 align="center" class="dd">SE</h1>
      <h2 class="aa" align="left">Semester-1</h2>
      <h2 class="bb" align="right">Semester-2</h2>
      <img src="SEsem1.jpg"class="module1">
      <img src="SEsem2.jpg"class="module2">
      </div>
      <br>
      <div class="box2">
      <h1  class="cc" align="center">TE</h1>
      <h2 class="aa" align="left">Semester-1</h2>
      <h2 class="bb" align="right">Semester-2</h2>
      <img src="TEsem I.jpg" class="module1">
      <img src="TEsem2.jpg"  class="module2">
      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <div class="box3">
      <h1 align="center" class="dd">BE</h1>
      <h2 class="aa" align="left">Semester-1</h2>
      <h2 class="bb" align="right">Semester -2</h2>
      <img src="BEsem1.jpg" class="module1" >
      <img src="BEsem2.jpg" class="module2" >
      </div>
  </body>
</html>

<style>
.box1,.box2,.box3{
    height: 200px;
    width:1800px;
}
.box2{
    top: 100%;
}
.box3{
    top: 2100px;
}
.module1,.module2 {
  width: 44%;
  min-height: 200px;
  background: white;
  position: relative;
  float: left;
  padding: 20px;
  margin-right: 4%;
  margin-bottom: 4%;
  box-shadow: 0 1px 3px black;
}
.come-in1 {
  transform: translateX(-550px);
  animation: come-in1 1s ease forwards 0.2s;
}
.come-in2 {
  transform: translateX(550px);
  animation: come-in2 1s ease forwards 0.2s;
}
.already-visible {
  transform: translateY(0);
  animation: none;
}
@keyframes come-in1 {
  to { transform: translateY(0); }
}
@keyframes come-in2 {
  to { transform: translateY(0); }
}
/*! normalize.css v5.0.0 | MIT License | github.com/necolas/normalize.css */
body {
  margin: 0;
}
article, aside, footer, header, nav, section, figcaption, figure, main {
  display: block;
}
figure {
  margin: 1em 40px;
}
[hidden] {
  display: none;
}
/* Columns and layout */
* {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}
#__bs_notify__ {
  display: none !important;
}
main {
  margin: 0 auto;
  padding: 0 2rem;
  max-width: 1280px;
  width: 100%;
}

.flex-grid {
  display: flex;
  justify-content: center;
}
.col {
  flex: 1;
  padding: 2rem;
  position: relative;
}
.col:nth-child(n+1) {
  margin-left: 2rem;
}
.col:last-child {
  margin-right: 2rem;
}
.col.vertical-align {
  display: flex;
  justify-content: center;
  flex-direction: column;
}
.single-column .col {
  margin-left: auto;
  margin-right: auto;
  max-width: 60rem;
  width: 100%;
}
@media (max-width: 680px) {
  .flex-grid {
    display: block;
  }
  .single-column .col {
    margin: 2rem;
    width: auto;
  }
}
/* Text styles */
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  src: local('Open Sans'), local('OpenSans'), url(https://fonts.gstatic.com/s/opensans/v13/cJZKeOuBrn4kERxqtaUH3bO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 700;
  src: local('Open Sans Bold'), local('OpenSans-Bold'), url(https://fonts.gstatic.com/s/opensans/v13/k3k702ZOKiLJc3WVjuplzKRDOzjiPcYnFooOUGCOsRk.woff) format('woff');
}
html {
  background: #F9FCFF;
  color: #333;
  font-size: 10px;
  font-family: 'Avenir Next', Open Sans, sans-serif;
  line-height: 1.15;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  
}
body {
  font-size: 1.8rem;
}
h2 {
  margin-bottom: 0;
}
h1 {
  font-size: 4.8rem;
}
h2 {
  font-size: 2.4rem;
}

p, li {
  font-size: 1.8rem;
  line-height: 1.5;
}
a {
  font-weight: bold;
  text-decoration: none;
}
a:hover {
  text-decoration: underline;
}

/* Custom styling for the content */
.rocky-image {
  width: 100%;
  max-width: 54rem;
}
.badge {
  border-radius: 50%;
  background: green;
  display: flex;
  flex-shrink: 0;
  height: 10rem;
  justify-content: center;
  align-items: center;
  margin: 0 auto;
  min-width: 10rem;
  width: 10rem;
  position: relative;
  box-shadow: 0 .2rem .1rem .1rem rgba(0,0,0,0.2);
}

.section-title {
  text-align: center;
}
.button {
  background: #269300;
  border-radius: .25em;
  color: #fff;
  display: inline-block;
  padding: .25em .5em;
  margin: 0 auto;
  text-align: center;
}

html, body {
  background: #fee;
  color: #19292E;
}

a {
  text-decoration: underline;
}

.content {
  margin: 4em auto;
  max-width: 740px;
  width: 80%;
}

h1 {
  font-size: 4em;
}

h2 {
  font-size: 3em;
}

p, ul {
  font-size: 1.5em;}

li {
  font-size: 1em;
}
.aa{
        position:relative;
        left:300px;
        top:46px;
}
.bb{
    position: relative;
    right: 300px;
    bottom: 60px;
}
.cc{
    position: relative;
    right:500px;
}
.dd{
    position: relative;
    right: 70px;
}
</style>
<script>
    (function($) {

  
  $.fn.visible = function(partial) {
    
      var $t            = $(this),
          $w            = $(window),
          viewTop       = $w.scrollTop(),
          viewBottom    = viewTop + $w.height(),
          _top          = $t.offset().top,
          _bottom       = _top + $t.height(),
          compareTop    = partial === true ? _bottom : _top,
          compareBottom = partial === true ? _top : _bottom;
    
    return ((compareBottom <= viewBottom) && (compareTop >= viewTop));

  };
    
})(jQuery);

var win = $(window);

var allMods1 = $(".module1");

allMods1.each(function(i, el) {
  var el = $(el);
  if (el.visible(true)) {
    el.addClass("already-visible"); 
  } 
});

win.scroll(function(event) {
  
  allMods1.each(function(i, el) {
    var el = $(el);
    if (el.visible(true)) {
      el.addClass("come-in1"); 
    } 
  });
  
});
var allMods2 = $(".module2");

allMods2.each(function(i, el) {
  var el = $(el);
  if (el.visible(true)) {
    el.addClass("already-visible"); 
  } 
});

win.scroll(function(event) {
  
  allMods2.each(function(i, el) {
    var el = $(el);
    if (el.visible(true)) {
      el.addClass("come-in2"); 
    } 
  });
  
});
</script>