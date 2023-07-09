<div class="ui vertical inverted sidebar menu left" id="toc">
    <div class="item">
        <h3>{$SITE_NAME}</h3>
    </div>
    {foreach from=$NAV_LINKS key=name item=item}
        {if isset($item.items)}
            <div class="item">
                <div class="header">{$item.title} <span class="icon">{$item.icon}</span></div>
                <div class="menu">
                    {foreach from=$item.items item=dropdown}
                        <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                    {/foreach}
                </div>
            </div>
        {else}
            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon}
                {$item.title}
            </a>
        {/if}
    {/foreach}
</div>

<div class="pusher">
    <div id="wrapper">
        <div class="ui secondary {$DEFAULT_REVAMP_NAVBAR_EXTRA_CLASSES} pointing menu" style="height: 55px;" id="navbar">
            <div class="ui container">
              {if isset($LOGO_IMAGE)} <img class="ui small image" style="max-width:80px;"src="{$LOGO_IMAGE}"> {else} <h2>{$SITE_NAME} </h2> {/if}
                {foreach from=$NAV_LINKS key=name item=item}
                    {if isset($item.items)}
                        <div class="ui dropdown item">
                            {$item.icon} {$item.title}
                            <i class="dropdown icon"></i>
                            <div class="menu">
                                <div class="header">{$item.title}</div>
                                {foreach from=$item.items item=dropdown}
                                    {if isset($dropdown.separator)}
                                        <div class="divider"></div>
                                    {else}
                                        <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                            {$dropdown.icon} {$dropdown.title}
                                        </a>
                                    {/if}
                                {/foreach}
                            </div>
                        </div>
                    {else}
                        <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">
                            {$item.icon} {$item.title}
                        </a>
                    {/if}
                {/foreach}
                <a class="toc item">
                    <i class="sidebar icon"></i>
                </a>
                <div class="right menu">
                    {foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <a class="ui medium image label" data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon} {$item.title}</a>
                    {else}
                    <a class="ui small default icon button" data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon}</a>
                    {/if}
                    <div class="ui wide basic popup">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.separator)}
                            <div class="ui divider"></div>
                            {else}
                                {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="item" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <a class="ui small primary icon button" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                    {elseif ($name == "register")}
                    <a class="ui small primary button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a class="ui small default button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
                </div>
            </div>
        </div>
    <div class="ui secondary segment" style="margin-top: 0; border-radius: 0;">
       <div class="ui container">
         <div class="row">
           <div class="ui icon buttons">
              <a href="#" class="ui button"><i class="fa-brands fa-youtube"></i></a>
              <a href="#" class="ui button"><i class="fa-brands fa-discord"></i></a>
              <a href="#" class="ui button"><i class="fa-brands fa-twitter"></i></a>
              <a href="#" class="ui button"><i class="fa-brands fa-facebook"></i></a>
          </div>
          {if isset($MINECRAFT) && isset($SERVER_QUERY)}
           <button class="ui right floated large button" onclick="copy('#ip')" 
            data-tooltip="{$CLICK_TO_COPY_TOOLTIP}" data-variation="mini" data-inverted="">
           <i class="fa-solid fa-circle-play"></i> {$CONNECT_WITH}</button>
          {/if}
       </div>
     </div>
   </div>
<div class="ui container">
            <div class="ui negative icon message" id="ie-message">
                <i class="exclamation triangle icon"></i>
                <div class="content">
                    <div class="header">
                        {$INTERNET_EXPLORER_HEADER}
                    </div>
                    <p>{$INTERNET_EXPLORER_INFO}</p>
                </div>
            </div>

            {if isset($NEW_UPDATE)}
            {if $NEW_UPDATE_URGENT eq true}
            <div class="ui negative icon message" id="update-message">
                {else}
                <div class="ui info icon message" id="update-message">
                    <i class="close icon"></i>
                    {/if}
                    <a href="{$NAMELESS_UPDATE_LINK}">
                        <i class="download icon"></i>
                    </a>
                    <div class="content">
                        <div class="header">{$NEW_UPDATE}</div>
                        <ul class="list">
                            <li>{$CURRENT_VERSION}</li>
                            <li>{$NEW_VERSION}</li>
                        </ul>
                    </div>
                </div>
                {/if}

                {if !empty($ANNOUNCEMENTS)}
                {foreach from=$ANNOUNCEMENTS item=$ANNOUNCEMENT}
                <div class="ui {if $ANNOUNCEMENT->icon} icon {/if} message announcement"
                    id="announcement-{$ANNOUNCEMENT->id}"
                    style="background-color:{$ANNOUNCEMENT->background_colour}; color:{$ANNOUNCEMENT->text_colour}">
                    {if $ANNOUNCEMENT->closable}
                    <i class="close icon"></i>
                    {/if}
                    {if $ANNOUNCEMENT->icon}
                    <i class="{$ANNOUNCEMENT->icon} icon"></i>
                    {/if}
                    <div class="content">
                        <div class="header">{$ANNOUNCEMENT->header}</div>
                        <p>{$ANNOUNCEMENT->message|escape}</p>
                    </div>
                </div>
                {/foreach}
                {/if}

                {if isset($MUST_VALIDATE_ACCOUNT)}
                <div class="ui message">
                    {$MUST_VALIDATE_ACCOUNT}
                </div>
                {/if}

                {if isset($MAINTENANCE_ENABLED)}
                <div class="ui warning message">
                    <i class="close icon"></i>
                    {$MAINTENANCE_ENABLED}
                </div>
                {/if}