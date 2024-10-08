<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card" id="widget-online-staff">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-users-gear"></i> {$CATEGORIES_TITLE}</div>
        <div class="ui center aligned">
    {foreach from=$CATEGORIES item=item}
        <a class="item{if isset($item.active)} active{/if}" href="{$item.link}">{$item.name} <span class="badge badge-secondary">{$item.count}</span></a>
    {/foreach}
        </div>
    </div>
</div>


