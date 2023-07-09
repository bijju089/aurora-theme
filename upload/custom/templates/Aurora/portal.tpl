{include file='header.tpl'}
<body style="background: linear-gradient(rgba(20, 26, 35,0.55),rgba(20, 26, 35, 0.55)), url('https://i.imgur.com/8B7a0EF.png') no-repeat center center fixed; background-size: cover; font-family: 'Open Sans', Helvetica; margin: 0; position: relative;">

	<div class="container" style="text-align: center;">
          <div class="ui large image" style="margin-top: 50px;">
              <img src="{$LOGO_IMAGE}">
          </div>
<div style="margin-top: 50px;">
  <a href="/" class="ui inverted  big button">Home</a>
  <a href="/forum" class="ui inverted big primary button">Forum</a>
  <a href="/store" class="ui inverted big violet button">Store</a>
  <a href="/status" class="ui inverted big red button">Status</a>
  <a href="/members" class="ui inverted big orange button">Members</a>
</div>
<div style="margin-top: 50px;">
<button class="ui inverted big violet button" data-tooltip="Join Now">{$SERVER_QUERY.x_players_online}</button>
</div>
</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="js/portal/firefly.js"></script>
</body>
