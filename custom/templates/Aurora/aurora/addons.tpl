<!--- WidgetBot Addon ---->
{if $WIDGETBOT eq '1' }
<script src="https://cdn.jsdelivr.net/npm/@widgetbot/crate@3" async defer>
  new Crate({
    server: '{$SERVERID}',
    channel: '{$CHANNELID}'
  })
</script>
{/if}
