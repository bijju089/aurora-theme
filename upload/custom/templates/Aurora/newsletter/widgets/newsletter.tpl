<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card" id="widget-featured-package">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-envelope"></i> {$NEWSLETTER}</div>
        <form class="ui form" action="{$NEWSLETTER_SUBSCRIBE_LINK}" method="post">
            <div class="field">
                <input type="email" name="email" id="inputEmail" placeholder="{$YOUR_EMAIL_ADDRESS}" required>
            </div>
            <div class="field">
                <input type="hidden" name="action" value="newsletter_subscribe">
                <input type="hidden" name="token" value="{$NEWSLETTER_TOKEN}">
                <input type="submit" value="{$SUBSCRIBE}" class="ui fluid primary button">
            </div>
        </form>
    </div>
</div>