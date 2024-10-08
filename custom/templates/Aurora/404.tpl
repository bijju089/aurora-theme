{include file='header.tpl'}
<div class="ui container" id="error-404">
<div class="ui placeholder segment">
  <div class="ui icon header">
    <i class="search icon"></i>
    {$CONTENT}
  </div>
  <div class="inline">
    <a class="ui primary button" onclick="javascript:history.go(-1)">{$BACK}</a>
    <a class="ui button" href="{$SITE_HOME}">{$HOME}</a>
  </div>
</div></div>
</body>

</html>
