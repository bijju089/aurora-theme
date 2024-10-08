<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card" id="widget-online-staff">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-users-gear"></i> {$CATEGORIES}</div>
        <div class="ui center aligned">
    {foreach from=$CATEGORIES_LIST item=item}
        <a href="{$item.link}">{$item.name}</a> <br>
    {/foreach}
        </div>
    </div>
</div>


