<!--- WidgetBot Addon ---->
{if $WIDGETBOT eq '1' }
<script src="https://cdn.jsdelivr.net/npm/@widgetbot/crate@3" async defer>
  new Crate({
    server: '{$SERVERID}',
    channel: '{$CHANNELID}'
  })
</script>
{/if}

<!--- DarkMode Addon --->
<script>
{if $THEMESWITCHER eq '1'}
function toggleDarkLightMode() {
    if (document.getElementById("darkmode-toggle").checked) {
        document.body.classList.add('dark'); 
        document.cookie = "darkMode=1; path=/; max-age=31536000";
    } else {
        document.body.classList.remove('dark');
        document.cookie = "darkMode=0; path=/; max-age=31536000";
    }
}
{/if}
window.addEventListener('load', function () {
    const darkModeCookie = document.cookie.split('; ').find(row => row.startsWith('darkMode='));
    const darkMode = darkModeCookie ? darkModeCookie.split('=')[1] : '{$DARKMODE}';

    if (darkMode === '1') {
        document.body.classList.add('dark');
        document.getElementById("darkmode-toggle").checked = true;
    } else {
        document.body.classList.remove('dark');
        document.getElementById("darkmode-toggle").checked = false;
    }
});
</script>