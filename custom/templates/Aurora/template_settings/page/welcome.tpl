<!-- Welcome Section Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$WELCOME_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="welcome" />
            <div class="form-group">
                <label for="welcomeSection">{$WELCOMESECTION_LABEL} <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$WELCOMESECTION_INFO_LABEL}"
                            data-original-title="{$INFO}"></i>
                    </span></label>
                <select id="inputWelcomeSection" class="form-control mr-sm-2" name="welcomeSection">
                    <option value="0" {if $WELCOMESECTION eq '0' } selected{/if}>{$ENABLED}</option>
                    <option value="1" {if $WELCOMESECTION eq '1' } selected{/if}>{$DISABLED}</option>
                </select>
            </div>
{if $WELCOMESECTION eq '0' }
            <div class="form-group">
                <label for="welcomeheader">{$WELCOMEHEADER_LABEL}</label>
                    <input type="text" class="form-control" id="inputWelcomeHeader" name="welcomeheader"
                        placeholder="" value="{$WELCOMEHEADER}">
            </div>
            <div class="form-group">
                <label for="welcomedescription">{$WELCOMEDESCRIPTION_LABEL}</label>
                    <input type="text" class="form-control" id="inputWelcomeDescription" name="welcomedescription"
                        placeholder="" value="{$WELCOMEDESCRIPTION}">
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