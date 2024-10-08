<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card" id="widget-statistics">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-chart-bar"></i> {$STATISTICS}</div>
        <div class="description">
            <div class="ui list">
                {if isset($FORUM_STATISTICS)}
                <div class="item">
                    <span class="text">{$TOTAL_THREADS}</span>
                    <div class="description right floated"><b>{$TOTAL_THREADS_VALUE}</b></div>
                </div>
                <div class="item">
                    <span class="text">{$TOTAL_POSTS}</span>
                    <div class="description right floated"><b>{$TOTAL_POSTS_VALUE}</b></div>
                </div>
                {/if}
                <div class="item">
                    <span class="text">{$USERS_REGISTERED}</span>
                    <div class="description right floated"><b>{$USERS_REGISTERED_VALUE}</b></div>
                </div>
                <div class="item" style="display: flex;">
                    <span class="text" style="width: 100%;">{$LATEST_MEMBER}</span>
                    <div class="description right floated">
                        <a href="{$LATEST_MEMBER_VALUE.profile}" data-poload="{$USER_INFO_URL}{$LATEST_MEMBER_VALUE.id}"
                            style="{$LATEST_MEMBER_VALUE.style}"><b>{$LATEST_MEMBER_VALUE.nickname}</b></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
