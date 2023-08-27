<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card" id="widget-online-users">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-users"></i> {$ONLINE_USERS}</div>
        <div class="description">
            {if isset($ONLINE_USERS_LIST)}
                {foreach from=$ONLINE_USERS_LIST name=online_users_arr item=user}
                <a class="ui image label" href="{$user.profile}" data-poload="{$USER_INFO_URL}{$user.id}">
                    <img src="{$user.avatar}" alt="{if $SHOW_NICKNAME_INSTEAD}{$user.nickname}{else}{$user.username}{/if}">{if $SHOW_NICKNAME_INSTEAD}{$user.nickname}{else}{$user.username}{/if}
                </a>
                {/foreach}
            {else}
                {$NO_USERS_ONLINE}
            {/if}
        </div>
    </div>
    <div class="ui center aligned extra">
        {$TOTAL_ONLINE_USERS}
    </div>
</div>
