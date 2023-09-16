<!-- Connections Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$ADDONS_PAGE}</h3>
    <div class="card-body">
        <h3 class="text-center">WidgetBot.io</h3>
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="addons" />
                <div class="alert alert-info" role="info">
                 {$WIDGETBOT_INFO}
                 </div>  
            <div class="form-group">
                <label for="widgetBot">WidgetBot <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="Adds discord widget button at right-bottom of the website."
                            data-original-title="{$INFO}"></i>
                    </span></label>
                <select id="inputWidgetBot" class="form-control mr-sm-2" name="widgetBot">
                    <option value="0" {if $WIDGETBOT eq '0' } selected{/if}>{$DISABLED}</option>
                    <option value="1" {if $WIDGETBOT eq '1' } selected{/if}>{$ENABLED}</option>
                </select>
            </div>
            {if $WIDGETBOT eq '1'}
                <div class="form-group">
                    <label for="serverID">{$SERVERID_LABEL} <span class="badge badge-info">
                            <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                                data-placement="top" data-content="{$SERVERID_INFO_LABEL}"
                                data-original-title="{$INFO}"></i>
                        </span></label>
                    <input type="text" class="form-control" id="inputServerID" name="serverID"
                        placeholder="Enter your Discord server ID" value="{$SERVERID}">
                </div>
                <div class="form-group">
                    <label for="channelID">{$CHANNELID_LABEL} <span class="badge badge-info">
                            <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                                data-placement="top" data-content="{$CHANNELID_INFO_LABEL}"
                                data-original-title="{$INFO}"></i>
                        </span></label>
                    <input type="text" class="form-control" id="inputChannelID" name="channelID"
                        placeholder="Enter your Discord channel ID" value="{$CHANNELID}">
                </div>
            {/if}
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
    </div>
</div>