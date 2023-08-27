<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card" id="widget-new-resources">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-memo"></i> {$UPDATED_RESOURCES_TITLE}</div>
        <div class="description">
            {if count($UPDATED_RESOURCES)}
                {foreach from=$UPDATED_RESOURCES item=resource}
                    <div class="ui relaxed list">
                        <div class="item">
                            <img class="ui mini circular image" src="{$resource.icon}" alt="{$resource.name}" />
                            <div class="content">
                                <a class="header" href="{$resource.link}" data-toggle="popup"
                                    data-position="top left">{$resource.name}</a>
                                <div class="ui wide popup">
                                    <h4 class="ui header">{$resource.short_description}</h4>
                                    {$BY|capitalize} <a href="{$resource.creator_profile}"
                                        style="{$resource.creator_style}">{$resource.creator_username}</a> |
                                    {$resource.released_full}
                                </div>
                                <a href="{$resource.creator_profile}" style="{$resource.creator_style}"
                                    data-poload="{$USER_INFO_URL}{$resource.creator_id}">{$resource.creator_username}</a> ·
                                <span data-toggle="tooltip" data-content="{$resource.released_full}">{$resource.released}</span>
                            </div>
                        </div>
                    </div>
                {/foreach}
            {else}
                {$NO_UPDATED_RESOURCES}
            {/if}
        </div>
    </div>
</div>