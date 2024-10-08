<!-- Footer Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$FOOTER_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" value="footer" />
             <div class="form-group">
                <label for="footerStyle">Footer Style</label>
                <select id="inputFooterStyle" class="form-control mr-sm-2" name="footerStyle">
                    <option value="0" {if $FOOTERSTYLE eq '0' } selected{/if}>Large</option>
                    <option value="1" {if $FOOTERSTYLE eq '1' } selected{/if}>Small</option>
                </select>
            </div>

            <div class="form-group">
                <label for="footerAbout">{$FOOTERABOUT_LABEL}</label>
                <input type="text" name="footerAbout" class="form-control" id="inputFooterAbout"
                    placeholder="{$FOOTERABOUT_PLACEHOLDER_LABEL}" value="{$FOOTERABOUT}">
            </div>
                   <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
    </div>
</div>