<!-- Theme Options Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$THEME_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="theme" />
            <div class="form-group">
                <label for="shadowEffects">{$SHADOWEFFECTS_LABEL} <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$SHADOWEFFECTS_INFO_LABEL}"
                            data-original-title="{$INFO}"></i>
                    </span></label>
                <select id="inputShadowEffects" class="form-control mr-sm-2" name="shadowEffects">
                    <option value="0" {if $SHADOWEFFECTS eq '0' } selected{/if}>{$ENABLED}</option>
                    <option value="1" {if $SHADOWEFFECTS eq '1' } selected{/if}>{$DISABLED}</option>
                </select>
            </div>

            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
</form>
    </div>
</div>