{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="ui stackable grid">
    <div class="ui centered row">
        <div class="ui padded segment sixteen wide tablet ten wide computer column">
            <h1 class="ui header">{$NEWSLETTER}</h1>
            <div class="ui divider"></div>

            <form class="ui form" action="" method="post">
                <input type="hidden" name="token" value="{$TOKEN}">
                <input type="submit" class="ui primary button" value="{$UNSUBSCRIBE}">
            </form>
        </div>
    </div>
</div>

{include file='footer.tpl'}