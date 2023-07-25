<!-- Colors Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$COLORS_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="theme" />
            <div class="form-group">
                <label for="darkMode">{$DARKMODE_LABEL}</label>
                <select id="inputDarkMode" class="form-control mr-sm-2" name="darkMode" disabled>
                    <option value="0" {if $DARKMODE_D eq '0' } selected{/if}>{$DISABLED}</option>
                    <option value="1" {if $DARKMODE_D eq '1' } selected{/if}>{$ENABLED}</option>
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