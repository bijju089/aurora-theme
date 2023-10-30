{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="ui container" style="padding-bottom:300px;">
  <div class="ui segment">
	<div class="ui stackable grid">
	  <div class="ui centered row">
		<div class="ui ten wide tablet twelve wide computer column">
		  <h1 style="display:inline;">{$SUGGESTIONS}</h1><span class="right floated">
		  <a class="ui small negative button" href="{$BACK_LINK}">{$BACK}</a></span>
		  <br>
          
          {if isset($SESSION_SUCCESS_POST)}
            <div class="ui success icon message">
              <i class="check icon"></i>
              <div class="content">
                <div class="header">{$SUCCESS}</div>
                {$SESSION_SUCCESS_POST}
              </div>
            </div>
          {/if}

          {if isset($ERRORS)}
            <div class="ui error icon message">
              <i class="x icon"></i>
              <div class="content">
                <div class="header">{$ERRORS_TITLE}</div>
                <ul class="list">
                  {foreach from=$ERRORS item=error}
                    <li>{$error}</li>
                  {/foreach}
                </ul>
              </div>
            </div>
          {/if}

		  <div class="ui segment">
			<h3 style="display:inline;">{$TITLE}</h3>
 
			<span class="right floated">
                {if isset($CAN_MODERATE)}
                <a class="ui mini yellow icon button" href="{$EDIT_LINK}" data-tooltip="{$EDIT}" data-variation="mini" data-inverted=""><i class="pencil icon"></i></a>
                <button class="ui mini red icon button" data-toggle="modal" data-target="#modal-delete-suggestion" data-tooltip="{$DELETE}" data-variation="mini" data-inverted=""><i class="trash icon"></i></button>
                {/if}
			</span>

                        <div class="ui divider"></div>
			{$CONTENT}
			<div class="ui divider"></div>

			
			<a href="{$POSTER_PROFILE}" data-poload="{$USER_INFO_URL}{$POSTER_ID}" style="{$POSTER_STYLE}"><img src="{$POSTER_AVATAR}" class="ui mini avatar image" style="max-height:25px;max-width:25px;" alt="{$POSTER_USERNAME}" /> {$POSTER_USERNAME}</a>: <span data-toggle="tooltip" data-content="{$POSTER_DATE}">{$POSTER_DATE_FRIENDLY}</span>
			<span class="right floated">
			<form style="display:inline;" action="" method="post">
			  <input type="hidden" name="action" value="vote">
			  <input type="hidden" name="token" value="{$TOKEN}">
			  <input type="hidden" name="vote" value="1">
			  <a href="#" onclick="$(this).closest('form').submit();" style="padding:10px;{if {$VOTED} == 1} color:green;{/if}" rel="tooltip" data-content="Like"><i class="fa fa-thumbs-up"></i> {$LIKES_VALUE}</a>
			</form>
			<form style="display:inline;" action="" method="post">
			  <input type="hidden" name="action" value="vote">
			  <input type="hidden" name="token" value="{$TOKEN}">
			  <input type="hidden" name="vote" value="2">
			  <a href="#" onclick="$(this).closest('form').submit();" style="padding:10px;{if {$VOTED} == 2} color:green;{/if}" rel="tooltip" data-content="Dislike"><i class="fa fa-thumbs-down"></i> {$DISLIKES_VALUE}</a>
			</form>
			</span>

		  </div>
			
          <h4>{$COMMENTS_TEXT}</h4>
		  {if count($COMMENTS_LIST)}
			{foreach from=$COMMENTS_LIST item=comment}
              {if $comment.type == 1}
                <div class="ui segment">
		    {$comment.content}
		  <div class="ui divider"></div>
		  <a href="{$comment.profile}" data-poload="{$USER_INFO_URL}{$comment.user_id}" style="{$comment.style}" target="_blank"><img src="{$comment.avatar}" class="ui mini avatar image" style="max-height:25px;max-width:25px;" alt="{$comment.username}" /> {$comment.username}</a>: <span data-toggle="tooltip" data-content="{$comment.date}">{$comment.date_friendly}</span>
                  <span class="right floated">
                    {if isset($CAN_MODERATE)}
                    <button class="ui mini red icon button" data-toggle="modal" data-target="#modal-delete-{$comment.id}" data-tooltip="{$DELETE}" data-variation="mini" data-inverted=""><i class="trash icon"></i></button>
                    {/if}
                  </span>

                </div>
              {else}
                <div class="ui segment">
                  <div class="ui stackable grid">
                    <div class="ui row">
                      <div class="ui ten wide column">
				        <strong>{$comment.content}</strong>
                      </div>
                      <div class="ui six wide column">
                        {if isset($CAN_MODERATE)}
                          <span class="right floated"><button class="ui mini red icon button" data-toggle="modal" data-target="#modal-delete-{$comment.id}" data-tooltip="{$DELETE}" data-variation="mini" data-inverted=""><i class="trash icon"></i></button></span>
                        {/if}
                      </div>
                    </div>
                  </div>
                </div>
              {/if}
			{/foreach}
		  {else}
			{$NO_COMMENTS}
		  {/if}
			
		  {if isset($CAN_COMMENT)}
		    </br>
		    <form class="ui form" action="" method="post">
			  {if isset($CAN_MODERATE)}
			  <div class="field">
				<label for="statusLabel">Status </label>
				<select name="status" id="status">
				  {foreach from=$STATUSES item=item}
					<option value="{$item.id}" {if $STATUS == $item.id}selected{/if}>{$item.name}</option>
				  {/foreach}
				</select>
			  </div>
			  {/if}
              <div class="field">
                <textarea name="content" rows="5" placeholder="{$NEW_COMMENT}"></textarea>
			  </div>
			 <input type="hidden" name="action" value="comment">
             <input type="hidden" name="token" value="{$TOKEN}">
             <input type="submit" value="{$SUBMIT}" class="ui primary button">
		    </form>
          {/if}
		  
		</div>
		
		<div class="ui six wide tablet four wide computer column">
		  {include file='suggestions/search.tpl'}
          
<div class="ui fluid {if $SHADOWEFFECTS eq '0' }raised{/if} card">
    <div class="content">
        <div class="ui fluid centered label" style="margin-bottom:10px;"><i class="fa-solid fa-lightbulb"></i> {$SUGGESTIONS}</div>
            <div class="description">
              <div class="ui list">
                <div class="item">
                  <span class="text">{$VIEWS_TEXT}</span>
                  <div class="description right floated"><b>{$VIEWS_VALUE}</b></div>
                </div>
                <div class="item">
                  <span class="text">{$LIKES_TEXT}</span>
                  <div class="description right floated"><b>{$LIKES_VALUE}</b></div>
                </div>
                <div class="item">
                  <span class="text">{$DISLIKES_TEXT}</span>
                  <div class="description right floated"><b>{$DISLIKES_VALUE}</b></div>
                </div>
                <div class="item">
                  <span class="text">{$CATEGORY_TEXT}</span>
                  <div class="description right floated"><b>{$CATEGORY_VALUE}</b></div>
                </div>
                <div class="item">
                  <span class="text">{$STATUS_TEXT}</span>
                  <div class="description right floated"><b>{$STATUS_VALUE}</b></div>
                </div>
            </div>
        </div>
    </div>
</div>
          
		  {include file='suggestions/recent_activity.tpl'}
		</div>
		
	  </div>
	</div>
  </div>
</div>

{if isset($CAN_MODERATE)}
  {foreach from=$COMMENTS_LIST item=comment}
    <div class="ui tiny modal" id="modal-delete-{$comment.id}">
      <div class="header">
        {$CONFIRM_DELETE}
      </div>
      <div class="content">
        {$CONFIRM_DELETE_COMMENT}
      </div>
      <div class="actions">
	    <form action="" method="post">
	      <a class="ui negative button">{$CANCEL}</a>
	      <input type="hidden" name="action" value="deleteComment">
          <input type="hidden" name="cid" value="{$comment.id}">
	      <input type="hidden" name="token" value="{$TOKEN}">
	      <input type="submit" class="ui positive button" value="{$DELETE}">
	    </form>
      </div>
    </div>
  {/foreach}
{/if}

{if isset($CAN_MODERATE)}
  <!-- Suggestion deletion modal -->
  <div class="ui tiny modal" id="modal-delete-suggestion">
    <div class="header">
      {$CONFIRM_DELETE}
    </div>
    <div class="content">
	  {$CONFIRM_DELETE_SUGGESTION}
    </div>
    <div class="actions">
	  <form action="" method="post">
	    <a class="ui negative button">{$CANCEL}</a>
	    <input type="hidden" name="action" value="deleteSuggestion">
	    <input type="hidden" name="token" value="{$TOKEN}">
	    <input type="submit" class="ui positive button" value="{$DELETE}">
	  </form>
    </div>
  </div>
{/if}

{include file='footer.tpl'}
