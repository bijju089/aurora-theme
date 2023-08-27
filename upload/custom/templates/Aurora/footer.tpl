</div>
</div>

{if $FOOTERSTYLE eq '0'}
 <div class="ui inverted vertical footer segment" id="footer">
  <div class="ui container">
   <div class="ui stackable inverted divided grid">
    <div class="five wide column">
     <h4 class="ui inverted header">{$ABOUT}</h4>
     <p>{$FOOTERABOUT}</p>
   </div>
    <div class="four wide column">
     <h4 class="ui inverted header">{$SITE_NAME}</h4>
                   <div class="ui inverted link list">
                    <span class="item">&copy; <strong>{$SITE_NAME}</strong> {'Y'|date}</span>
                    {if !isset($LOGGED_IN_USER)}
                    <a class="item" href="/register">{$REGISTER}</a>
                    <a class="item" href="/login">{$LOGIN}</a>
                    {else}
                    <a class="item" href="/user">{$ACCOUNT_SETTINGS}</a>
                    {/if}
                    {if $PAGE_LOAD_TIME}
                    <span class="item" id="page_load"></span>
                    {/if}
                    <span class="item" id="darkmode">
                        <input type="checkbox" class="darkmode-toggle" id="darkmode-toggle" onclick="toggleDarkLightMode()">
                        <label for="darkmode-toggle" class="darkmode-toggle-label">
                            <i class="fas fa-moon"></i>
                            <i class="fas fa-sun"></i>
                            <div class="darkmode-ball"></div>
                        </label>

                        <script type="text/javascript">
                            if (document.body.classList.contains('dark')) {
                                document.getElementById("darkmode-toggle").checked = true;
                            } else {
                                document.getElementById("darkmode-toggle").checked = false;
                            }
                        </script>
                    </span>
                    {if isset($AUTO_LANGUAGE)}
                        <a class="item" href="javascript:" onclick="toggleAutoLanguage()" id="auto-language"></a>
                    {/if}
                </div>    </div>
            <div class="three wide column">
                <h4 class="ui inverted header">{$FOOTER_LINKS_TITLE}</h4>
                <div class="ui inverted link list">
                    {foreach from=$FOOTER_NAVIGATION key=name item=item}
                    {if isset($item.items)}
                    <div class="ui dropdown item">
                        <span class="text">{$item.icon} {$item.title} <i class="dropdown icon"></i></span>
                        <div class="menu">
                            <div class="header">{$item.title}</div>
                            {foreach from=$item.items item=dropdown}
                            <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon}
                                {$dropdown.title}</a>
                            {/foreach}
                        </div>
                    </div>
                    {else}
                    <a class="item" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
                    {/if}
                    {/foreach}
                    <a class="item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
                    <a class="item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a>
                </div>
            </div>      
      {if $SOCIAL_MEDIA_ICONS|count > 0}
            <div class="three wide column">
                <h4 class="ui inverted header">{$FOOTER_SOCIAL_TITLE}</h4>
                <div class="ui inverted link list">
                    {foreach from=$SOCIAL_MEDIA_ICONS item=icon}
                    <a class="item" href="{$icon.link}">{$icon.text}</a>
                    {/foreach}
                </div>
            </div>
            {/if}
   </div>
   <div class="ui inverted section divider"></div>
     <div class="center aligned">
        <span class="item">&copy; <strong>{$SITE_NAME}</strong> {'Y'|date}</span> |
        <span class="item">Powered By <a href="https://namelessmc.com">NamelessMC</a></span> <br>
        <span class="item">Theming with <i class="fa-solid fa-heart fa-beat" style="color: #d90d0d;"></i> by <a href="https://cxstudios.xyz">cxSTUDIOS</a></span>
     </div>
    <br>
   <div class="center aligned">
     <div class="ui horizontal inverted small divided link list"> 
        <a class="item" href="/cache/sitemaps/sitemap-index.xml">Site Map</a>
        <a class="item" href="#">Contact Us</a>
        <a class="item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
        <a class="item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a>
      </div>
     </div>
   </div>
   </div>
{else}
 <div class="ui inverted vertical footer segment" id="footer">
  <div class="ui container">
     <div class="center aligned">
        <span class="item">&copy; <strong>{$SITE_NAME}</strong> {'Y'|date}</span> |
        <span class="item">Powered By <a href="https://namelessmc.com">NamelessMC</a></span> <br>
        <span class="item">Theming with <i class="fa-solid fa-heart fa-beat" style="color: #d90d0d;"></i> by <a href="https://cxstudios.xyz">cxSTUDIOS</a></span>
     </div>
    <br>
   <div class="center aligned">
     <div class="ui horizontal inverted small divided link list"> 
        <a class="item" href="/cache/sitemaps/sitemap-index.xml">Site Map</a>
        <a class="item" href="#">Contact Us</a>
        <a class="item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
        <a class="item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a>
      </div>
     </div>
   </div>
   </div>
{/if}


{if isset($GLOBAL_WARNING_TITLE)}
<div class="ui medium modal" id="modal-acknowledge">
    <div class="header">
        {$GLOBAL_WARNING_TITLE}
    </div>
    <div class="content">
        {$GLOBAL_WARNING_REASON}
    </div>
    <div class="actions">
        <a class="ui positive button" href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>
    </div>
</div>
{/if}

{foreach from=$TEMPLATE_JS item=script}
    {$script}
{/foreach}

{if isset($GLOBAL_WARNING_TITLE)}
<script type="text/javascript">
    $('#modal-acknowledge').modal({ closable: false }).modal('show');
</script>
{/if}

    <script type="text/javascript">
var url = "https://api.minetools.eu/ping/{$MINECRAFTIP}{if $MINECRAFTPORT != '25565'}/{$MINECRAFTPORT}{/if}";
$.getJSON(url, function(r) {
    if (r.error) {
        $('h2').html('Server Offline');
        $('#minecraftplayers').html('Server Offline');
        return false;
    } else {
        $('#minecraftplayers').html(+ r.players.online + ' Players Online');
    }
});
    </script>
{if isset($CUSTOMJS)}
<script>
{$CUSTOMJS}
</script>
{/if}
<script type="text/javascript">
document.getElementById("dslink").addEventListener("click", function() {
  var url = "{$DISCORD_SERVER['link']}";
  window.open(url, "_blank");
});
</script>
  <script type="text/javascript">
    function dslinkopen() {
      var url = "{$DISCORD_SERVER['link']}";
      window.open(url, "_blank");
    }
  </script>
<script type="text/javascript">
    function toggleDarkLightMode() {
        $.post("{$DARK_LIGHT_MODE_ACTION}", { token: "{$DARK_LIGHT_MODE_TOKEN}" })
            .done(function () {
                window.location.reload();
            });

        return false;
    }

    {if isset($AUTO_LANGUAGE)}
        const autoLanguage = document.getElementById('auto-language');
        const autoLanguageValue = $.cookie('auto_language') ?? 'true';
        autoLanguage.innerText = '{$AUTO_LANGUAGE_TEXT} (' + (autoLanguageValue === 'true' ? '{$ENABLED}' : '{$DISABLED}') + ')';
        {if isset($AUTO_LANGUAGE_VALUE)}
            if (autoLanguageValue) {
                autoLanguage.title = '{$AUTO_LANGUAGE_VALUE}';
            }
        {/if}

        function toggleAutoLanguage() {
            $.cookie(
                'auto_language',
                autoLanguageValue === 'true' ? 'false' : 'true',
                { path: '/' }
            );
            window.location.reload();
        }
    {/if}
</script>

{if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}
    <script src="{$TEMPLATE.path}/js/core/update.js"></script>
{/if}

{if !isset($EXCLUDE_END_BODY)}
    {if isset($DEBUGBAR_HTML)}
    {$DEBUGBAR_HTML}
{/if}
</body>

</html>
{/if}
