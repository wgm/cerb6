BODY, TD {
	font-family: Arial, Helvetica, sans-serif;
	font-size:12px;
	color: rgb(60,60,60);
}

FORM {
	margin:0px;
}

A {
	color:rgb(50,50,50);
}

H1 {
	font-size:20px;
	font-weight:bold;
	color: rgb(0, 120, 0);
	margin-top:0px;
	margin-bottom:3px;
}

H2 {
	font-size:14px;
	color: rgb(60,60,60);
	margin-top:0px;
	margin-bottom:3px;
}

BUTTON {
	background-color:rgb(230,230,230);
	background: linear-gradient(top, rgb(240,240,240), rgb(210,210,210));
	background: -webkit-gradient(linear, left top, left bottom, from(rgb(240,240,240)), to(rgb(210,210,210)));
	background: -moz-linear-gradient(top, rgb(240,240,240), rgb(210,210,210));
	background: -o-linear-gradient(top, rgb(240,240,240), rgb(210,210,210));
	background: -ms-linear-gradient(top, rgb(240,240,240), rgb(210,210,210));
	cursor:pointer;
	
	color:rgb(50,50,50);
	border:0;
	
	margin-right:1px;
	vertical-align:middle;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	
	padding:5px;
	margin:0px;
}

BUTTON:hover {
	background:none;
	background-color:rgb(160,198,254);
	background: linear-gradient(top, rgb(238,242,245), rgb(160,198,254));
	background: -webkit-gradient(linear, left top, left bottom, from(rgb(238,242,245)), to(rgb(160,198,254)));
	background: -moz-linear-gradient(top, rgb(238,242,245), rgb(160,198,254));
	background: -o-linear-gradient(top, rgb(238,242,245), rgb(160,198,254));
	background: -ms-linear-gradient(top, rgb(238,242,245), rgb(160,198,254));
	cursor:pointer;
}

BUTTON SPAN.glyphicons {
  color: #505050;
  font-size: 16px;
}
BUTTON SPAN {
  vertical-align: middle;
}

INPUT[type=text], INPUT[type=password], SELECT, TEXTAREA {
	border:1px solid rgb(150,150,150);
	padding:2px;
}

INPUT[type=text]:focus, INPUT[type=password]:focus, SELECT:focus, TEXTAREA:focus {
	border:1px solid rgb(121,183,231);
}

INPUT[type=text]:focus, INPUT[type=password]:focus {
	/*background-color:rgb(245,245,245);*/
}

FIELDSET {
	border:1px solid rgb(230,230,230);
	margin-bottom:10px;
	
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}

FIELDSET LEGEND {
	color:rgb(0,120,0);
	font-size:120%;
	font-weight:bold;
}

FIELDSET LEGEND A {
	color:rgb(0,120,0);
}

FIELDSET.minimal {
	border: 0;
	border-top: 1px solid rgb(230,230,230);
}

DIV.header {
	font-size: 14px;
}

DIV.header H1 {
	margin-bottom:0px;
}

DIV.header B {
	color: rgb(0,120,0);
}

UL.menu {
	padding:0px;
	margin:0px;
	list-style:none;
}

UL.menu LI {
	padding:8px 8px;
	margin:0px 2px;
	float:left;
	background-color:rgb(240,240,240);
	-moz-border-radius: 5px 5px 0px 0px;
	-webkit-border-radius: 5px 5px 0px 0px;
	border-radius: 5px 5px 0px 0px;
}

UL.menu LI:hover {
	background-color:rgb(220,220,220);
}

UL.menu LI A {
	color:rgb(80,80,80);
	padding:5px 0px 5px 0px;
	text-decoration:none;
	font-weight:normal;
}

UL.menu LI.selected {
	background-color:rgb(69,85,96);
}

UL.menu LI.selected A {
	color:rgb(255,255,255);
	font-weight:bold;
	text-decoration:none;
}

/* Sidebar */

TABLE.sidebar {
	width:220px;
	border-radius: 5px;
}

TABLE.sidebar TH {
	background-color:rgb(140,140,140);
	font-size:10pt;
	font-weight:bold;
	line-height: 22px;
	padding-left: 6px;
	text-align: left;
	color: rgb(255,255,255);
	border-radius: 5px 5px 0px 0px;
}

TABLE.sidebar TD {
	background-color: rgb(240,240,240);
	padding: 5px;
}

TABLE.sidebar TD A {
}

TABLE.sidebar TD INPUT {
	border:1px solid rgb(200,200,200);
	margin-bottom:1px;
}

/* Worklists */

TABLE.worklistBody TH {
	background-color: rgb(200,200,200);
	background: linear-gradient(top, rgb(240,240,240), rgb(200,200,200));
	background: -webkit-gradient(linear, left top, left bottom, from(rgb(240,240,240)), to(rgb(200,200,200)));
	background: -moz-linear-gradient(top, rgb(240,240,240), rgb(200,200,200));
	background: -o-linear-gradient(top, rgb(240,240,240), rgb(200,200,200));
	background: -ms-linear-gradient(top, rgb(240,240,240), rgb(200,200,200));
	padding:2px 0px 2px 5px;
	border-right:1px solid rgb(175,175,175);
	text-align: left;
	cursor:pointer;
}

TABLE.worklistBody TH:hover {
	background-color: rgb(150,150,150);
	background: linear-gradient(top, rgb(200,200,200), rgb(150,150,150));
	background: -webkit-gradient(linear, left top, left bottom, from(rgb(200,200,200)), to(rgb(150,150,150)));
	background: -moz-linear-gradient(top, rgb(200,200,200), rgb(150,150,150));
	background: -o-linear-gradient(top, rgb(200,200,200), rgb(150,150,150));
	background: -ms-linear-gradient(top, rgb(200,200,200), rgb(150,150,150));
	border-right:1px solid rgb(175,175,175);
}

TABLE.worklistBody TH A {
	font-size: 12px;
	vertical-align:middle;
	font-weight: bold;
	text-decoration:none;
	color: rgb(80,80,80);
}

TABLE.worklistBody TH:hover A {
	text-decoration:none;
	color:white;
}

TABLE.worklistBody TD A.record-link {
	font-weight: bold;
}

#footer {
	padding-bottom:10px;
	text-align:center;
}

#tagline {
	padding-top:5px;
	width:98%;
	padding:5px;
	text-align:right;
}

.tableRowBg {
	background-color: rgb(254, 254, 254);
}

.tableRowAltBg {
	background-color: rgb(244, 244, 244);
}

.hover {
	background-color: rgb(255, 255, 206);
}

#content {
	padding-top: 5px;
}

/* Modules */
#account {
	border:1px solid rgb(204,204,204);
	padding:5px;
}

#home {
	padding:5px;
}

#account_sidebar UL LI {
	padding: 3px;
}

#history DIV.message {
	margin:5px;
	margin-bottom:10px;
	border:1px solid rgb(230,230,230);
	padding:5px;
	border-radius: 5px;
}

#history DIV.message SPAN.header {
}

#history DIV.outbound_message {
}

#history DIV.outbound_message SPAN.header {
}

#history DIV.inbound_message {
}

#history DIV.reply {
	margin:10px;
}

#history DIV.reply TEXTAREA {
}

#history DIV.email {
	white-space:pre-wrap;
	white-space:-moz-pre-wrap;
	white-space:-pre-wrap;
	white-space:-o-pre-wrap;
	word-wrap:break-word;
	_white-space:pre;
	
	margin-bottom:10px;
	
	font-family: inherit;
	line-height: 16px;
}

/* KB */

#kb h1.title {
	font-size: 200%;
	color: rgb(50,50,50);
	font-weight: bold;
	text-align: left;
	border: none;
	margin:0;
}

#kb div.content {
	margin: 10px 5px 10px 5px;
}

#kb div.content { 
	color: rgb(50,50,50);
	font-family: Arial, Helvetica, Verdana, sans-serif;
	font-size: 100%;
	line-height: 140%;
}

#kb div.content h1, #kb div.content h2, #kb div.content h3, #kb div.content h4, #kb div.content h5, #kb div.content h6 { 
	font-weight: bold;
	color: rgb(0,120,0);
	margin:20px 0px;
}

#kb div.content h1 {
	font-size: 190%;
	color: rgb(0,120,0);
	border-bottom: 1px solid rgb(180,180,180);
	padding-bottom: 5px;
	margin-bottom: 5px;
}

#kb div.content h2 {
	font-size: 170%;
	margin-bottom: 5px;
	color: rgb(50,50,50);
}

#kb div.content h3 {
	font-size: 145%;
	color: rgb(74,110,158);
	border-bottom: 1px solid rgb(180,180,180);
	padding-bottom: 5px;
}

#kb div.content h4 {
	font-size: 130%;
	color: rgb(50,50,50);
}

#kb div.content h5 {
	font-size: 110%;
	font-style: italic;
	color: rgb(50,50,50);
}

#kb div.content h6 {
	font-size: 100%;
	font-style: italic;
	color: rgb(50,50,50);
}

#kb div.content pre {
	border-top: 1px solid rgb(200,200,200);
	border-right: 1px solid rgb(200,200,200);
	border-left: 3px solid rgb(150,150,150);
	border-bottom: 3px solid rgb(150,150,150);
	background-color: rgb(240,240,240);
	color: #1111111;
	padding: 0.5em;
}

#kb div.content code {
	background-color:rgb(240,240,240);
	color:rgb(0,0,0);
	padding:0px 3px;
	font-weight:bold;
}

#kb div.content blockquote {
	font-style:italic;
	color:rgb(50,50,50);
	padding:0px 3px;
	margin-left:20px;
	border-left:solid 5px rgb(240,240,240);
	padding-left:5px;
}

#kb div.content ul li {
	margin: 5px 0px 10px 0px;
}

#kb div.content ol li {
	margin: 5px 0px 10px 0px;
}

#kb div.content li img {
	margin-top: 10px;
}

/* Labels */

LABEL.error {
	background-color:rgb(255,235,235);
	color:rgb(180,0,0);
	font-weight:bold;
}

DIV.error {
	border:1px solid rgb(180,0,0);
	background-color:rgb(255,235,235);
	color:rgb(180,0,0);
	font-weight:bold;
	margin:10px;
	padding:5px;
}

DIV.success {
	border:1px solid rgb(0,180,0);
	background-color:rgb(235,255,235);
	color:rgb(0,180,0);
	font-weight:bold;
	margin:10px;
	padding:5px;
}

@font-face {
  font-family: 'Glyphicons Regular';
  src: url("{devblocks_url}c=resource&p=cerberusweb.support_center&f=fonts/glyphicons-regular.eot{/devblocks_url}");
  src: url("{devblocks_url}c=resource&p=cerberusweb.support_center&f=fonts/glyphicons-regular.eot?{/devblocks_url}#iefix") format("embedded-opentype"), url("{devblocks_url}c=resource&p=cerberusweb.support_center&f=fonts/glyphicons-regular.woff2{/devblocks_url}") format("woff2"), url("{devblocks_url}c=resource&p=cerberusweb.support_center&f=fonts/glyphicons-regular.woff{/devblocks_url}") format("woff"), url("{devblocks_url}c=resource&p=cerberusweb.support_center&f=fonts/glyphicons-regular.ttf{/devblocks_url}") format("truetype"), url("{devblocks_url}c=resource&p=cerberusweb.support_center&f=fonts/glyphicons-regular.svg#glyphiconsregular{/devblocks_url}") format("svg");
}
.glyphicons {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Regular';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  vertical-align: top;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.glyphicons.x05 {
  font-size: 12px;
}

.glyphicons.x2 {
  font-size: 48px;
}

.glyphicons.x3 {
  font-size: 72px;
}

.glyphicons.x4 {
  font-size: 96px;
}

.glyphicons.x5 {
  font-size: 120px;
}

.glyphicons.light:before {
  color: #f2f2f2;
}

.glyphicons.drop:before {
  text-shadow: -1px 1px 3px rgba(0, 0, 0, 0.3);
}

.glyphicons.flip {
  -moz-transform: scaleX(-1);
  -o-transform: scaleX(-1);
  -webkit-transform: scaleX(-1);
  transform: scaleX(-1);
  filter: FlipH;
  -ms-filter: "FlipH";
}

.glyphicons.flipv {
  -moz-transform: scaleY(-1);
  -o-transform: scaleY(-1);
  -webkit-transform: scaleY(-1);
  transform: scaleY(-1);
  filter: FlipV;
  -ms-filter: "FlipV";
}

.glyphicons.rotate90 {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}

.glyphicons.rotate180 {
  -webkit-transform: rotate(180deg);
  -moz-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}

.glyphicons.rotate270 {
  -webkit-transform: rotate(270deg);
  -moz-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg);
}

.glyphicons-glass:before {
  content: "\E001";
}

.glyphicons-leaf:before {
  content: "\E002";
}

.glyphicons-dog:before {
  content: "\E003";
}

.glyphicons-user:before {
  content: "\E004";
}

.glyphicons-girl:before {
  content: "\E005";
}

.glyphicons-car:before {
  content: "\E006";
}

.glyphicons-user-add:before {
  content: "\E007";
}

.glyphicons-user-remove:before {
  content: "\E008";
}

.glyphicons-film:before {
  content: "\E009";
}

.glyphicons-magic:before {
  content: "\E010";
}

.glyphicons-envelope:before {
  content: "\2709";
}

.glyphicons-camera:before {
  content: "\E011";
}

.glyphicons-heart:before {
  content: "\E013";
}

.glyphicons-beach-umbrella:before {
  content: "\E014";
}

.glyphicons-train:before {
  content: "\E015";
}

.glyphicons-print:before {
  content: "\E016";
}

.glyphicons-bin:before {
  content: "\E017";
}

.glyphicons-music:before {
  content: "\E018";
}

.glyphicons-note:before {
  content: "\E019";
}

.glyphicons-heart-empty:before {
  content: "\E020";
}

.glyphicons-home:before {
  content: "\E021";
}

.glyphicons-snowflake:before {
  content: "\2744";
}

.glyphicons-fire:before {
  content: "\E023";
}

.glyphicons-magnet:before {
  content: "\E024";
}

.glyphicons-parents:before {
  content: "\E025";
}

.glyphicons-binoculars:before {
  content: "\E026";
}

.glyphicons-road:before {
  content: "\E027";
}

.glyphicons-search:before {
  content: "\E028";
}

.glyphicons-cars:before {
  content: "\E029";
}

.glyphicons-notes-2:before {
  content: "\E030";
}

.glyphicons-pencil:before {
  content: "\270F";
}

.glyphicons-bus:before {
  content: "\E032";
}

.glyphicons-wifi-alt:before {
  content: "\E033";
}

.glyphicons-luggage:before {
  content: "\E034";
}

.glyphicons-old-man:before {
  content: "\E035";
}

.glyphicons-woman:before {
  content: "\E036";
}

.glyphicons-file:before {
  content: "\E037";
}

.glyphicons-coins:before {
  content: "\E038";
}

.glyphicons-airplane:before {
  content: "\2708";
}

.glyphicons-notes:before {
  content: "\E040";
}

.glyphicons-stats:before {
  content: "\E041";
}

.glyphicons-charts:before {
  content: "\E042";
}

.glyphicons-pie-chart:before {
  content: "\E043";
}

.glyphicons-group:before {
  content: "\E044";
}

.glyphicons-keys:before {
  content: "\E045";
}

.glyphicons-calendar:before {
  content: "\E046";
}

.glyphicons-router:before {
  content: "\E047";
}

.glyphicons-camera-small:before {
  content: "\E048";
}

.glyphicons-star-empty:before {
  content: "\E049";
}

.glyphicons-star:before {
  content: "\E050";
}

.glyphicons-link:before {
  content: "\E051";
}

.glyphicons-eye-open:before {
  content: "\E052";
}

.glyphicons-eye-close:before {
  content: "\E053";
}

.glyphicons-alarm:before {
  content: "\E054";
}

.glyphicons-clock:before {
  content: "\E055";
}

.glyphicons-stopwatch:before {
  content: "\E056";
}

.glyphicons-projector:before {
  content: "\E057";
}

.glyphicons-history:before {
  content: "\E058";
}

.glyphicons-truck:before {
  content: "\E059";
}

.glyphicons-cargo:before {
  content: "\E060";
}

.glyphicons-compass:before {
  content: "\E061";
}

.glyphicons-keynote:before {
  content: "\E062";
}

.glyphicons-paperclip:before {
  content: "\E063";
}

.glyphicons-power:before {
  content: "\E064";
}

.glyphicons-lightbulb:before {
  content: "\E065";
}

.glyphicons-tag:before {
  content: "\E066";
}

.glyphicons-tags:before {
  content: "\E067";
}

.glyphicons-cleaning:before {
  content: "\E068";
}

.glyphicons-ruler:before {
  content: "\E069";
}

.glyphicons-gift:before {
  content: "\E070";
}

.glyphicons-umbrella:before {
  content: "\2602";
}

.glyphicons-book:before {
  content: "\E072";
}

.glyphicons-bookmark:before {
  content: "\E073";
}

.glyphicons-wifi:before {
  content: "\E074";
}

.glyphicons-cup:before {
  content: "\E075";
}

.glyphicons-stroller:before {
  content: "\E076";
}

.glyphicons-headphones:before {
  content: "\E077";
}

.glyphicons-headset:before {
  content: "\E078";
}

.glyphicons-warning-sign:before {
  content: "\E079";
}

.glyphicons-signal:before {
  content: "\E080";
}

.glyphicons-retweet:before {
  content: "\E081";
}

.glyphicons-refresh:before {
  content: "\E082";
}

.glyphicons-roundabout:before {
  content: "\E083";
}

.glyphicons-random:before {
  content: "\E084";
}

.glyphicons-heat:before {
  content: "\E085";
}

.glyphicons-repeat:before {
  content: "\E086";
}

.glyphicons-display:before {
  content: "\E087";
}

.glyphicons-log-book:before {
  content: "\E088";
}

.glyphicons-address-book:before {
  content: "\E089";
}

.glyphicons-building:before {
  content: "\E090";
}

.glyphicons-eyedropper:before {
  content: "\E091";
}

.glyphicons-adjust:before {
  content: "\E092";
}

.glyphicons-tint:before {
  content: "\E093";
}

.glyphicons-crop:before {
  content: "\E094";
}

.glyphicons-vector-path-square:before {
  content: "\E095";
}

.glyphicons-vector-path-circle:before {
  content: "\E096";
}

.glyphicons-vector-path-polygon:before {
  content: "\E097";
}

.glyphicons-vector-path-line:before {
  content: "\E098";
}

.glyphicons-vector-path-curve:before {
  content: "\E099";
}

.glyphicons-vector-path-all:before {
  content: "\E100";
}

.glyphicons-font:before {
  content: "\E101";
}

.glyphicons-italic:before {
  content: "\E102";
}

.glyphicons-bold:before {
  content: "\E103";
}

.glyphicons-text-underline:before {
  content: "\E104";
}

.glyphicons-text-strike:before {
  content: "\E105";
}

.glyphicons-text-height:before {
  content: "\E106";
}

.glyphicons-text-width:before {
  content: "\E107";
}

.glyphicons-text-resize:before {
  content: "\E108";
}

.glyphicons-left-indent:before {
  content: "\E109";
}

.glyphicons-right-indent:before {
  content: "\E110";
}

.glyphicons-align-left:before {
  content: "\E111";
}

.glyphicons-align-center:before {
  content: "\E112";
}

.glyphicons-align-right:before {
  content: "\E113";
}

.glyphicons-justify:before {
  content: "\E114";
}

.glyphicons-list:before {
  content: "\E115";
}

.glyphicons-text-smaller:before {
  content: "\E116";
}

.glyphicons-text-bigger:before {
  content: "\E117";
}

.glyphicons-embed:before {
  content: "\E118";
}

.glyphicons-embed-close:before {
  content: "\E119";
}

.glyphicons-table:before {
  content: "\E120";
}

.glyphicons-message-full:before {
  content: "\E121";
}

.glyphicons-message-empty:before {
  content: "\E122";
}

.glyphicons-message-in:before {
  content: "\E123";
}

.glyphicons-message-out:before {
  content: "\E124";
}

.glyphicons-message-plus:before {
  content: "\E125";
}

.glyphicons-message-minus:before {
  content: "\E126";
}

.glyphicons-message-ban:before {
  content: "\E127";
}

.glyphicons-message-flag:before {
  content: "\E128";
}

.glyphicons-message-lock:before {
  content: "\E129";
}

.glyphicons-message-new:before {
  content: "\E130";
}

.glyphicons-inbox:before {
  content: "\E131";
}

.glyphicons-inbox-plus:before {
  content: "\E132";
}

.glyphicons-inbox-minus:before {
  content: "\E133";
}

.glyphicons-inbox-lock:before {
  content: "\E134";
}

.glyphicons-inbox-in:before {
  content: "\E135";
}

.glyphicons-inbox-out:before {
  content: "\E136";
}

.glyphicons-cogwheel:before {
  content: "\E137";
}

.glyphicons-cogwheels:before {
  content: "\E138";
}

.glyphicons-picture:before {
  content: "\E139";
}

.glyphicons-adjust-alt:before {
  content: "\E140";
}

.glyphicons-database-lock:before {
  content: "\E141";
}

.glyphicons-database-plus:before {
  content: "\E142";
}

.glyphicons-database-minus:before {
  content: "\E143";
}

.glyphicons-database-ban:before {
  content: "\E144";
}

.glyphicons-folder-open:before {
  content: "\E145";
}

.glyphicons-folder-plus:before {
  content: "\E146";
}

.glyphicons-folder-minus:before {
  content: "\E147";
}

.glyphicons-folder-lock:before {
  content: "\E148";
}

.glyphicons-folder-flag:before {
  content: "\E149";
}

.glyphicons-folder-new:before {
  content: "\E150";
}

.glyphicons-edit:before {
  content: "\E151";
}

.glyphicons-new-window:before {
  content: "\E152";
}

.glyphicons-check:before {
  content: "\E153";
}

.glyphicons-unchecked:before {
  content: "\E154";
}

.glyphicons-more-windows:before {
  content: "\E155";
}

.glyphicons-show-big-thumbnails:before {
  content: "\E156";
}

.glyphicons-show-thumbnails:before {
  content: "\E157";
}

.glyphicons-show-thumbnails-with-lines:before {
  content: "\E158";
}

.glyphicons-show-lines:before {
  content: "\E159";
}

.glyphicons-playlist:before {
  content: "\E160";
}

.glyphicons-imac:before {
  content: "\E161";
}

.glyphicons-macbook:before {
  content: "\E162";
}

.glyphicons-ipad:before {
  content: "\E163";
}

.glyphicons-iphone:before {
  content: "\E164";
}

.glyphicons-iphone-transfer:before {
  content: "\E165";
}

.glyphicons-iphone-exchange:before {
  content: "\E166";
}

.glyphicons-ipod:before {
  content: "\E167";
}

.glyphicons-ipod-shuffle:before {
  content: "\E168";
}

.glyphicons-ear-plugs:before {
  content: "\E169";
}

.glyphicons-record:before {
  content: "\E170";
}

.glyphicons-step-backward:before {
  content: "\E171";
}

.glyphicons-fast-backward:before {
  content: "\E172";
}

.glyphicons-rewind:before {
  content: "\E173";
}

.glyphicons-play:before {
  content: "\E174";
}

.glyphicons-pause:before {
  content: "\E175";
}

.glyphicons-stop:before {
  content: "\E176";
}

.glyphicons-forward:before {
  content: "\E177";
}

.glyphicons-fast-forward:before {
  content: "\E178";
}

.glyphicons-step-forward:before {
  content: "\E179";
}

.glyphicons-eject:before {
  content: "\E180";
}

.glyphicons-facetime-video:before {
  content: "\E181";
}

.glyphicons-download-alt:before {
  content: "\E182";
}

.glyphicons-mute:before {
  content: "\E183";
}

.glyphicons-volume-down:before {
  content: "\E184";
}

.glyphicons-volume-up:before {
  content: "\E185";
}

.glyphicons-screenshot:before {
  content: "\E186";
}

.glyphicons-move:before {
  content: "\E187";
}

.glyphicons-more:before {
  content: "\E188";
}

.glyphicons-brightness-reduce:before {
  content: "\E189";
}

.glyphicons-brightness-increase:before {
  content: "\E190";
}

.glyphicons-circle-plus:before {
  content: "\E191";
}

.glyphicons-circle-minus:before {
  content: "\E192";
}

.glyphicons-circle-remove:before {
  content: "\E193";
}

.glyphicons-circle-ok:before {
  content: "\E194";
}

.glyphicons-circle-question-mark:before {
  content: "\E195";
}

.glyphicons-circle-info:before {
  content: "\E196";
}

.glyphicons-circle-exclamation-mark:before {
  content: "\E197";
}

.glyphicons-remove:before {
  content: "\E198";
}

.glyphicons-ok:before {
  content: "\E199";
}

.glyphicons-ban:before {
  content: "\E200";
}

.glyphicons-download:before {
  content: "\E201";
}

.glyphicons-upload:before {
  content: "\E202";
}

.glyphicons-shopping-cart:before {
  content: "\E203";
}

.glyphicons-lock:before {
  content: "\E204";
}

.glyphicons-unlock:before {
  content: "\E205";
}

.glyphicons-electricity:before {
  content: "\E206";
}

.glyphicons-ok-2:before {
  content: "\E207";
}

.glyphicons-remove-2:before {
  content: "\E208";
}

.glyphicons-cart-out:before {
  content: "\E209";
}

.glyphicons-cart-in:before {
  content: "\E210";
}

.glyphicons-left-arrow:before {
  content: "\E211";
}

.glyphicons-right-arrow:before {
  content: "\E212";
}

.glyphicons-down-arrow:before {
  content: "\E213";
}

.glyphicons-up-arrow:before {
  content: "\E214";
}

.glyphicons-resize-small:before {
  content: "\E215";
}

.glyphicons-resize-full:before {
  content: "\E216";
}

.glyphicons-circle-arrow-left:before {
  content: "\E217";
}

.glyphicons-circle-arrow-right:before {
  content: "\E218";
}

.glyphicons-circle-arrow-top:before {
  content: "\E219";
}

.glyphicons-circle-arrow-down:before {
  content: "\E220";
}

.glyphicons-play-button:before {
  content: "\E221";
}

.glyphicons-unshare:before {
  content: "\E222";
}

.glyphicons-share:before {
  content: "\E223";
}

.glyphicons-chevron-right:before {
  content: "\E224";
}

.glyphicons-chevron-left:before {
  content: "\E225";
}

.glyphicons-bluetooth:before {
  content: "\E226";
}

.glyphicons-euro:before {
  content: "\20AC";
}

.glyphicons-usd:before {
  content: "\E228";
}

.glyphicons-gbp:before {
  content: "\E229";
}

.glyphicons-retweet-2:before {
  content: "\E230";
}

.glyphicons-moon:before {
  content: "\E231";
}

.glyphicons-sun:before {
  content: "\2609";
}

.glyphicons-cloud:before {
  content: "\2601";
}

.glyphicons-direction:before {
  content: "\E234";
}

.glyphicons-brush:before {
  content: "\E235";
}

.glyphicons-pen:before {
  content: "\E236";
}

.glyphicons-zoom-in:before {
  content: "\E237";
}

.glyphicons-zoom-out:before {
  content: "\E238";
}

.glyphicons-pin:before {
  content: "\E239";
}

.glyphicons-albums:before {
  content: "\E240";
}

.glyphicons-rotation-lock:before {
  content: "\E241";
}

.glyphicons-flash:before {
  content: "\E242";
}

.glyphicons-google-maps:before {
  content: "\E243";
}

.glyphicons-anchor:before {
  content: "\2693";
}

.glyphicons-conversation:before {
  content: "\E245";
}

.glyphicons-chat:before {
  content: "\E246";
}

.glyphicons-male:before {
  content: "\E247";
}

.glyphicons-female:before {
  content: "\E248";
}

.glyphicons-asterisk:before {
  content: "\002A";
}

.glyphicons-divide:before {
  content: "\00F7";
}

.glyphicons-snorkel-diving:before {
  content: "\E251";
}

.glyphicons-scuba-diving:before {
  content: "\E252";
}

.glyphicons-oxygen-bottle:before {
  content: "\E253";
}

.glyphicons-fins:before {
  content: "\E254";
}

.glyphicons-fishes:before {
  content: "\E255";
}

.glyphicons-boat:before {
  content: "\E256";
}

.glyphicons-delete:before {
  content: "\E257";
}

.glyphicons-sheriffs-star:before {
  content: "\E258";
}

.glyphicons-qrcode:before {
  content: "\E259";
}

.glyphicons-barcode:before {
  content: "\E260";
}

.glyphicons-pool:before {
  content: "\E261";
}

.glyphicons-buoy:before {
  content: "\E262";
}

.glyphicons-spade:before {
  content: "\E263";
}

.glyphicons-bank:before {
  content: "\E264";
}

.glyphicons-vcard:before {
  content: "\E265";
}

.glyphicons-electrical-plug:before {
  content: "\E266";
}

.glyphicons-flag:before {
  content: "\E267";
}

.glyphicons-credit-card:before {
  content: "\E268";
}

.glyphicons-keyboard-wireless:before {
  content: "\E269";
}

.glyphicons-keyboard-wired:before {
  content: "\E270";
}

.glyphicons-shield:before {
  content: "\E271";
}

.glyphicons-ring:before {
  content: "\02DA";
}

.glyphicons-cake:before {
  content: "\E273";
}

.glyphicons-drink:before {
  content: "\E274";
}

.glyphicons-beer:before {
  content: "\E275";
}

.glyphicons-fast-food:before {
  content: "\E276";
}

.glyphicons-cutlery:before {
  content: "\E277";
}

.glyphicons-pizza:before {
  content: "\E278";
}

.glyphicons-birthday-cake:before {
  content: "\E279";
}

.glyphicons-tablet:before {
  content: "\E280";
}

.glyphicons-settings:before {
  content: "\E281";
}

.glyphicons-bullets:before {
  content: "\E282";
}

.glyphicons-cardio:before {
  content: "\E283";
}

.glyphicons-t-shirt:before {
  content: "\E284";
}

.glyphicons-pants:before {
  content: "\E285";
}

.glyphicons-sweater:before {
  content: "\E286";
}

.glyphicons-fabric:before {
  content: "\E287";
}

.glyphicons-leather:before {
  content: "\E288";
}

.glyphicons-scissors:before {
  content: "\E289";
}

.glyphicons-bomb:before {
  content: "\E290";
}

.glyphicons-skull:before {
  content: "\E291";
}

.glyphicons-celebration:before {
  content: "\E292";
}

.glyphicons-tea-kettle:before {
  content: "\E293";
}

.glyphicons-french-press:before {
  content: "\E294";
}

.glyphicons-coffee-cup:before {
  content: "\E295";
}

.glyphicons-pot:before {
  content: "\E296";
}

.glyphicons-grater:before {
  content: "\E297";
}

.glyphicons-kettle:before {
  content: "\E298";
}

.glyphicons-hospital:before {
  content: "\E299";
}

.glyphicons-hospital-h:before {
  content: "\E300";
}

.glyphicons-microphone:before {
  content: "\E301";
}

.glyphicons-webcam:before {
  content: "\E302";
}

.glyphicons-temple-christianity-church:before {
  content: "\E303";
}

.glyphicons-temple-islam:before {
  content: "\E304";
}

.glyphicons-temple-hindu:before {
  content: "\E305";
}

.glyphicons-temple-buddhist:before {
  content: "\E306";
}

.glyphicons-bicycle:before {
  content: "\E307";
}

.glyphicons-life-preserver:before {
  content: "\E308";
}

.glyphicons-share-alt:before {
  content: "\E309";
}

.glyphicons-comments:before {
  content: "\E310";
}

.glyphicons-flower:before {
  content: "\2698";
}

.glyphicons-baseball:before {
  content: "\26BE";
}

.glyphicons-rugby:before {
  content: "\E313";
}

.glyphicons-ax:before {
  content: "\E314";
}

.glyphicons-table-tennis:before {
  content: "\E315";
}

.glyphicons-bowling:before {
  content: "\E316";
}

.glyphicons-tree-conifer:before {
  content: "\E317";
}

.glyphicons-tree-deciduous:before {
  content: "\E318";
}

.glyphicons-more-items:before {
  content: "\E319";
}

.glyphicons-sort:before {
  content: "\E320";
}

.glyphicons-filter:before {
  content: "\E321";
}

.glyphicons-gamepad:before {
  content: "\E322";
}

.glyphicons-playing-dices:before {
  content: "\E323";
}

.glyphicons-calculator:before {
  content: "\E324";
}

.glyphicons-tie:before {
  content: "\E325";
}

.glyphicons-wallet:before {
  content: "\E326";
}

.glyphicons-piano:before {
  content: "\E327";
}

.glyphicons-sampler:before {
  content: "\E328";
}

.glyphicons-podium:before {
  content: "\E329";
}

.glyphicons-soccer-ball:before {
  content: "\E330";
}

.glyphicons-blog:before {
  content: "\E331";
}

.glyphicons-dashboard:before {
  content: "\E332";
}

.glyphicons-certificate:before {
  content: "\E333";
}

.glyphicons-bell:before {
  content: "\E334";
}

.glyphicons-candle:before {
  content: "\E335";
}

.glyphicons-pushpin:before {
  content: "\E336";
}

.glyphicons-iphone-shake:before {
  content: "\E337";
}

.glyphicons-pin-flag:before {
  content: "\E338";
}

.glyphicons-turtle:before {
  content: "\E339";
}

.glyphicons-rabbit:before {
  content: "\E340";
}

.glyphicons-globe:before {
  content: "\E341";
}

.glyphicons-briefcase:before {
  content: "\E342";
}

.glyphicons-hdd:before {
  content: "\E343";
}

.glyphicons-thumbs-up:before {
  content: "\E344";
}

.glyphicons-thumbs-down:before {
  content: "\E345";
}

.glyphicons-hand-right:before {
  content: "\E346";
}

.glyphicons-hand-left:before {
  content: "\E347";
}

.glyphicons-hand-up:before {
  content: "\E348";
}

.glyphicons-hand-down:before {
  content: "\E349";
}

.glyphicons-fullscreen:before {
  content: "\E350";
}

.glyphicons-shopping-bag:before {
  content: "\E351";
}

.glyphicons-book-open:before {
  content: "\E352";
}

.glyphicons-nameplate:before {
  content: "\E353";
}

.glyphicons-nameplate-alt:before {
  content: "\E354";
}

.glyphicons-vases:before {
  content: "\E355";
}

.glyphicons-bullhorn:before {
  content: "\E356";
}

.glyphicons-dumbbell:before {
  content: "\E357";
}

.glyphicons-suitcase:before {
  content: "\E358";
}

.glyphicons-file-import:before {
  content: "\E359";
}

.glyphicons-file-export:before {
  content: "\E360";
}

.glyphicons-bug:before {
  content: "\E361";
}

.glyphicons-crown:before {
  content: "\E362";
}

.glyphicons-smoking:before {
  content: "\E363";
}

.glyphicons-cloud-download:before {
  content: "\E364";
}

.glyphicons-cloud-upload:before {
  content: "\E365";
}

.glyphicons-restart:before {
  content: "\E366";
}

.glyphicons-security-camera:before {
  content: "\E367";
}

.glyphicons-expand:before {
  content: "\E368";
}

.glyphicons-collapse:before {
  content: "\E369";
}

.glyphicons-collapse-top:before {
  content: "\E370";
}

.glyphicons-globe-af:before {
  content: "\E371";
}

.glyphicons-global:before {
  content: "\E372";
}

.glyphicons-spray:before {
  content: "\E373";
}

.glyphicons-nails:before {
  content: "\E374";
}

.glyphicons-claw-hammer:before {
  content: "\E375";
}

.glyphicons-classic-hammer:before {
  content: "\E376";
}

.glyphicons-hand-saw:before {
  content: "\E377";
}

.glyphicons-riflescope:before {
  content: "\E378";
}

.glyphicons-electrical-socket-eu:before {
  content: "\E379";
}

.glyphicons-electrical-socket-us:before {
  content: "\E380";
}

.glyphicons-message-forward:before {
  content: "\E381";
}

.glyphicons-coat-hanger:before {
  content: "\E382";
}

.glyphicons-dress:before {
  content: "\E383";
}

.glyphicons-bathrobe:before {
  content: "\E384";
}

.glyphicons-shirt:before {
  content: "\E385";
}

.glyphicons-underwear:before {
  content: "\E386";
}

.glyphicons-log-in:before {
  content: "\E387";
}

.glyphicons-log-out:before {
  content: "\E388";
}

.glyphicons-exit:before {
  content: "\E389";
}

.glyphicons-new-window-alt:before {
  content: "\E390";
}

.glyphicons-video-sd:before {
  content: "\E391";
}

.glyphicons-video-hd:before {
  content: "\E392";
}

.glyphicons-subtitles:before {
  content: "\E393";
}

.glyphicons-sound-stereo:before {
  content: "\E394";
}

.glyphicons-sound-dolby:before {
  content: "\E395";
}

.glyphicons-sound-5-1:before {
  content: "\E396";
}

.glyphicons-sound-6-1:before {
  content: "\E397";
}

.glyphicons-sound-7-1:before {
  content: "\E398";
}

.glyphicons-copyright-mark:before {
  content: "\E399";
}

.glyphicons-registration-mark:before {
  content: "\E400";
}

.glyphicons-radar:before {
  content: "\E401";
}

.glyphicons-skateboard:before {
  content: "\E402";
}

.glyphicons-golf-course:before {
  content: "\E403";
}

.glyphicons-sorting:before {
  content: "\E404";
}

.glyphicons-sort-by-alphabet:before {
  content: "\E405";
}

.glyphicons-sort-by-alphabet-alt:before {
  content: "\E406";
}

.glyphicons-sort-by-order:before {
  content: "\E407";
}

.glyphicons-sort-by-order-alt:before {
  content: "\E408";
}

.glyphicons-sort-by-attributes:before {
  content: "\E409";
}

.glyphicons-sort-by-attributes-alt:before {
  content: "\E410";
}

.glyphicons-compressed:before {
  content: "\E411";
}

.glyphicons-package:before {
  content: "\E412";
}

.glyphicons-cloud-plus:before {
  content: "\E413";
}

.glyphicons-cloud-minus:before {
  content: "\E414";
}

.glyphicons-disk-save:before {
  content: "\E415";
}

.glyphicons-disk-open:before {
  content: "\E416";
}

.glyphicons-disk-saved:before {
  content: "\E417";
}

.glyphicons-disk-remove:before {
  content: "\E418";
}

.glyphicons-disk-import:before {
  content: "\E419";
}

.glyphicons-disk-export:before {
  content: "\E420";
}

.glyphicons-tower:before {
  content: "\E421";
}

.glyphicons-send:before {
  content: "\E422";
}

.glyphicons-git-branch:before {
  content: "\E423";
}

.glyphicons-git-create:before {
  content: "\E424";
}

.glyphicons-git-private:before {
  content: "\E425";
}

.glyphicons-git-delete:before {
  content: "\E426";
}

.glyphicons-git-merge:before {
  content: "\E427";
}

.glyphicons-git-pull-request:before {
  content: "\E428";
}

.glyphicons-git-compare:before {
  content: "\E429";
}

.glyphicons-git-commit:before {
  content: "\E430";
}

.glyphicons-construction-cone:before {
  content: "\E431";
}

.glyphicons-shoe-steps:before {
  content: "\E432";
}

.glyphicons-plus:before {
  content: "\002B";
}

.glyphicons-minus:before {
  content: "\2212";
}

.glyphicons-redo:before {
  content: "\E435";
}

.glyphicons-undo:before {
  content: "\E436";
}

.glyphicons-golf:before {
  content: "\E437";
}

.glyphicons-hockey:before {
  content: "\E438";
}

.glyphicons-pipe:before {
  content: "\E439";
}

.glyphicons-wrench:before {
  content: "\E440";
}

.glyphicons-folder-closed:before {
  content: "\E441";
}

.glyphicons-phone-alt:before {
  content: "\E442";
}

.glyphicons-earphone:before {
  content: "\E443";
}

.glyphicons-floppy-disk:before {
  content: "\E444";
}

.glyphicons-floppy-saved:before {
  content: "\E445";
}

.glyphicons-floppy-remove:before {
  content: "\E446";
}

.glyphicons-floppy-save:before {
  content: "\E447";
}

.glyphicons-floppy-open:before {
  content: "\E448";
}

.glyphicons-translate:before {
  content: "\E449";
}

.glyphicons-fax:before {
  content: "\E450";
}

.glyphicons-factory:before {
  content: "\E451";
}

.glyphicons-shop-window:before {
  content: "\E452";
}

.glyphicons-shop:before {
  content: "\E453";
}

.glyphicons-kiosk:before {
  content: "\E454";
}

.glyphicons-kiosk-wheels:before {
  content: "\E455";
}

.glyphicons-kiosk-light:before {
  content: "\E456";
}

.glyphicons-kiosk-food:before {
  content: "\E457";
}

.glyphicons-transfer:before {
  content: "\E458";
}

.glyphicons-money:before {
  content: "\E459";
}

.glyphicons-header:before {
  content: "\E460";
}

.glyphicons-blacksmith:before {
  content: "\E461";
}

.glyphicons-saw-blade:before {
  content: "\E462";
}

.glyphicons-basketball:before {
  content: "\E463";
}

.glyphicons-server:before {
  content: "\E464";
}

.glyphicons-server-plus:before {
  content: "\E465";
}

.glyphicons-server-minus:before {
  content: "\E466";
}

.glyphicons-server-ban:before {
  content: "\E467";
}

.glyphicons-server-flag:before {
  content: "\E468";
}

.glyphicons-server-lock:before {
  content: "\E469";
}

.glyphicons-server-new:before {
  content: "\E470";
}

.glyphicons-charging-station:before {
  content: "\F471";
}

.glyphicons-gas-station:before {
  content: "\E472";
}

.glyphicons-target:before {
  content: "\E473";
}

.glyphicons-bed-alt:before {
  content: "\E474";
}

.glyphicons-mosquito-net:before {
  content: "\E475";
}

.glyphicons-dining-set:before {
  content: "\E476";
}

.glyphicons-plate-of-food:before {
  content: "\E477";
}

.glyphicons-hygiene-kit:before {
  content: "\E478";
}

.glyphicons-blackboard:before {
  content: "\E479";
}

.glyphicons-marriage:before {
  content: "\E480";
}

.glyphicons-bucket:before {
  content: "\E481";
}

.glyphicons-none-color-swatch:before {
  content: "\E482";
}

.glyphicons-bring-forward:before {
  content: "\E483";
}

.glyphicons-bring-to-front:before {
  content: "\E484";
}

.glyphicons-send-backward:before {
  content: "\E485";
}

.glyphicons-send-to-back:before {
  content: "\E486";
}

.glyphicons-fit-frame-to-image:before {
  content: "\E487";
}

.glyphicons-fit-image-to-frame:before {
  content: "\E488";
}

.glyphicons-multiple-displays:before {
  content: "\E489";
}

.glyphicons-handshake:before {
  content: "\E490";
}

.glyphicons-child:before {
  content: "\E491";
}

.glyphicons-baby-formula:before {
  content: "\E492";
}

.glyphicons-medicine:before {
  content: "\E493";
}

.glyphicons-atv-vehicle:before {
  content: "\E494";
}

.glyphicons-motorcycle:before {
  content: "\E495";
}

.glyphicons-bed:before {
  content: "\E496";
}

.glyphicons-tent:before {
  content: "\26FA";
}

.glyphicons-glasses:before {
  content: "\E498";
}

.glyphicons-sunglasses:before {
  content: "\E499";
}

.glyphicons-family:before {
  content: "\E500";
}

.glyphicons-education:before {
  content: "\E501";
}

.glyphicons-shoes:before {
  content: "\E502";
}

.glyphicons-map:before {
  content: "\E503";
}

.glyphicons-cd:before {
  content: "\E504";
}

.glyphicons-alert:before {
  content: "\E505";
}

.glyphicons-piggy-bank:before {
  content: "\E506";
}

.glyphicons-star-half:before {
  content: "\E507";
}

.glyphicons-cluster:before {
  content: "\E508";
}

.glyphicons-flowchart:before {
  content: "\E509";
}

.glyphicons-commodities:before {
  content: "\E510";
}

.glyphicons-duplicate:before {
  content: "\E511";
}

.glyphicons-copy:before {
  content: "\E512";
}

.glyphicons-paste:before {
  content: "\E513";
}

.glyphicons-bath-bathtub:before {
  content: "\E514";
}

.glyphicons-bath-shower:before {
  content: "\E515";
}

.glyphicons-shower:before {
  content: "\1F6BF";
}

.glyphicons-menu-hamburger:before {
  content: "\E517";
}

.glyphicons-option-vertical:before {
  content: "\E518";
}

.glyphicons-option-horizontal:before {
  content: "\E519";
}

.glyphicons-currency-conversion:before {
  content: "\E520";
}

.glyphicons-user-ban:before {
  content: "\E521";
}

.glyphicons-user-lock:before {
  content: "\E522";
}

.glyphicons-user-flag:before {
  content: "\E523";
}

.glyphicons-user-asterisk:before {
  content: "\E524";
}

.glyphicons-user-alert:before {
  content: "\E525";
}

.glyphicons-user-key:before {
  content: "\E526";
}

.glyphicons-user-conversation:before {
  content: "\E527";
}

.glyphicons-database:before {
  content: "\E528";
}

.glyphicons-database-search:before {
  content: "\E529";
}

.glyphicons-list-alt:before {
  content: "\E530";
}

.glyphicons-hazard-sign:before {
  content: "\E531";
}

.glyphicons-hazard:before {
  content: "\E532";
}

.glyphicons-stop-sign:before {
  content: "\E533";
}

.glyphicons-lab:before {
  content: "\E534";
}

.glyphicons-lab-alt:before {
  content: "\E535";
}

.glyphicons-ice-cream:before {
  content: "\E536";
}

.glyphicons-ice-lolly:before {
  content: "\E537";
}

.glyphicons-ice-lolly-tasted:before {
  content: "\E538";
}

.glyphicons-invoice:before {
  content: "\E539";
}

.glyphicons-cart-tick:before {
  content: "\E540";
}

.glyphicons-hourglass:before {
  content: "\231B";
}

.glyphicons-cat:before {
  content: "\1F408";
}

.glyphicons-lamp:before {
  content: "\E543";
}

.glyphicons-scale-classic:before {
  content: "\E544";
}

.glyphicons-eye-plus:before {
  content: "\E545";
}

.glyphicons-eye-minus:before {
  content: "\E546";
}

.glyphicons-quote:before {
  content: "\E547";
}

.glyphicons-bitcoin:before {
  content: "\E548";
}

.glyphicons-yen:before {
  content: "\00A5";
}

.glyphicons-ruble:before {
  content: "\20BD";
}

.glyphicons-erase:before {
  content: "\E551";
}

.glyphicons-podcast:before {
  content: "\E552";
}

.glyphicons-firework:before {
  content: "\E553";
}

.glyphicons-scale:before {
  content: "\E554";
}

.glyphicons-king:before {
  content: "\E555";
}

.glyphicons-queen:before {
  content: "\E556";
}

.glyphicons-pawn:before {
  content: "\E557";
}

.glyphicons-bishop:before {
  content: "\E558";
}

.glyphicons-knight:before {
  content: "\E559";
}

.glyphicons-mic-mute:before {
  content: "\E560";
}

.glyphicons-voicemail:before {
  content: "\E561";
}

.glyphicons-paragraph:before {
  content: "\00B6";
}

.glyphicons-person-walking:before {
  content: "\E563";
}

.glyphicons-person-wheelchair:before {
  content: "\E564";
}

.glyphicons-underground:before {
  content: "\E565";
}

.glyphicons-car-hov:before {
  content: "\E566";
}

.glyphicons-car-rental:before {
  content: "\E567";
}

.glyphicons-transport:before {
  content: "\E568";
}

.glyphicons-taxi:before {
  content: "\1F695";
}

.glyphicons-ice-cream-no:before {
  content: "\E570";
}

.glyphicons-uk-rat-u:before {
  content: "\E571";
}

.glyphicons-uk-rat-pg:before {
  content: "\E572";
}

.glyphicons-uk-rat-12a:before {
  content: "\E573";
}

.glyphicons-uk-rat-12:before {
  content: "\E574";
}

.glyphicons-uk-rat-15:before {
  content: "\E575";
}

.glyphicons-uk-rat-18:before {
  content: "\E576";
}

.glyphicons-uk-rat-r18:before {
  content: "\E577";
}

.glyphicons-tv:before {
  content: "\E578";
}

.glyphicons-sms:before {
  content: "\E579";
}

.glyphicons-mms:before {
  content: "\E580";
}

.glyphicons-us-rat-g:before {
  content: "\E581";
}

.glyphicons-us-rat-pg:before {
  content: "\E582";
}

.glyphicons-us-rat-pg-13:before {
  content: "\E583";
}

.glyphicons-us-rat-restricted:before {
  content: "\E584";
}

.glyphicons-us-rat-no-one-17:before {
  content: "\E585";
}

.glyphicons-equalizer:before {
  content: "\E586";
}

.glyphicons-speakers:before {
  content: "\E587";
}

.glyphicons-remote-control:before {
  content: "\E588";
}

.glyphicons-remote-control-tv:before {
  content: "\E589";
}

.glyphicons-shredder:before {
  content: "\E590";
}

.glyphicons-folder-heart:before {
  content: "\E591";
}

.glyphicons-person-running:before {
  content: "\E592";
}

.glyphicons-person:before {
  content: "\E593";
}

.glyphicons-voice:before {
  content: "\E594";
}

.glyphicons-stethoscope:before {
  content: "\E595";
}

.glyphicons-hotspot:before {
  content: "\E596";
}

.glyphicons-activity:before {
  content: "\E597";
}

.glyphicons-watch:before {
  content: "\231A";
}

.glyphicons-scissors-alt:before {
  content: "\E599";
}

.glyphicons-car-wheel:before {
  content: "\E600";
}

.glyphicons-chevron-up:before {
  content: "\E601";
}

.glyphicons-chevron-down:before {
  content: "\E602";
}

.glyphicons-superscript:before {
  content: "\E603";
}

.glyphicons-subscript:before {
  content: "\E604";
}

.glyphicons-text-size:before {
  content: "\E605";
}

.glyphicons-text-color:before {
  content: "\E606";
}

.glyphicons-text-background:before {
  content: "\E607";
}

.glyphicons-modal-window:before {
  content: "\E608";
}

.glyphicons-newspaper:before {
  content: "\1F4F0";
}

.glyphicons-tractor:before {
  content: "\1F69C";
}

/* 
* 
* THIS IS A SMALL BONUS FOR ALL CURIOUS PEOPLE :) 
* Just add class .animated and .pulse, .rotateIn, .bounce, .swing or .tada to you HTML element with icons. You may find other great css animations here: http://coveloping.com/tools/css-animation-generator 
* 
*/
.animated {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  -webkit-animation-timing-function: ease-in-out;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;
  -webkit-animation-iteration-count: infinite;
}

@-webkit-keyframes pulse {
  0% {
    -webkit-transform: scale(1);
  }
  50% {
    -webkit-transform: scale(1.1);
  }
  100% {
    -webkit-transform: scale(1);
  }
}
@keyframes pulse {
  0% {
    transform: scale(1);
  }
  50% {
    transform: scale(1.1);
  }
  100% {
    transform: scale(1);
  }
}
.pulse {
  -webkit-animation-name: pulse;
  animation-name: pulse;
}

@-webkit-keyframes rotateIn {
  0% {
    -webkit-transform-origin: center center;
    -webkit-transform: rotate(-200deg);
    opacity: 0;
  }
  100% {
    -webkit-transform-origin: center center;
    -webkit-transform: rotate(0);
    opacity: 1;
  }
}
@keyframes rotateIn {
  0% {
    transform-origin: center center;
    transform: rotate(-200deg);
    opacity: 0;
  }
  100% {
    transform-origin: center center;
    transform: rotate(0);
    opacity: 1;
  }
}
.rotateIn {
  -webkit-animation-name: rotateIn;
  animation-name: rotateIn;
}

@-webkit-keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    -webkit-transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-30px);
  }
  60% {
    -webkit-transform: translateY(-15px);
  }
}
@keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0);
  }
  40% {
    transform: translateY(-30px);
  }
  60% {
    transform: translateY(-15px);
  }
}
.bounce {
  -webkit-animation-name: bounce;
  animation-name: bounce;
}

@-webkit-keyframes swing {
  20%, 40%, 60%, 80%, 100% {
    -webkit-transform-origin: top center;
  }
  20% {
    -webkit-transform: rotate(15deg);
  }
  40% {
    -webkit-transform: rotate(-10deg);
  }
  60% {
    -webkit-transform: rotate(5deg);
  }
  80% {
    -webkit-transform: rotate(-5deg);
  }
  100% {
    -webkit-transform: rotate(0deg);
  }
}
@keyframes swing {
  20% {
    transform: rotate(15deg);
  }
  40% {
    transform: rotate(-10deg);
  }
  60% {
    transform: rotate(5deg);
  }
  80% {
    transform: rotate(-5deg);
  }
  100% {
    transform: rotate(0deg);
  }
}
.swing {
  -webkit-transform-origin: top center;
  transform-origin: top center;
  -webkit-animation-name: swing;
  animation-name: swing;
}

@-webkit-keyframes tada {
  0% {
    -webkit-transform: scale(1);
  }
  10%, 20% {
    -webkit-transform: scale(0.9) rotate(-3deg);
  }
  30%, 50%, 70%, 90% {
    -webkit-transform: scale(1.1) rotate(3deg);
  }
  40%, 60%, 80% {
    -webkit-transform: scale(1.1) rotate(-3deg);
  }
  100% {
    -webkit-transform: scale(1) rotate(0);
  }
}
@keyframes tada {
  0% {
    transform: scale(1);
  }
  10%, 20% {
    transform: scale(0.9) rotate(-3deg);
  }
  30%, 50%, 70%, 90% {
    transform: scale(1.1) rotate(3deg);
  }
  40%, 60%, 80% {
    transform: scale(1.1) rotate(-3deg);
  }
  100% {
    transform: scale(1) rotate(0);
  }
}
.tada {
  -webkit-animation-name: tada;
  animation-name: tada;
}
