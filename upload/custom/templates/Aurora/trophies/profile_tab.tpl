{if isset($TROPHIES) && count($TROPHIES)}
    {foreach from=$TROPHIES item=trophy}
    <div class="ui relaxed list">
        <div class="item">
            <img class="ui mini image" src="{$trophy.image}" alt="{$trophy.title}">
            <div class="content">
                <div class="header">{$trophy.title}</div><br />
                <span>{$trophy.description}</span><br />
                <span>{$trophy.awarded_date}</span>
            </div>
        </div>
    </div>
    {/foreach}
{else}
    <p>{$NONE_TROPHIES}</p>
{/if}