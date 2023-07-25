<!-- Navbar Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$SEO_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="navbar" />
            <div class="form-group">
                <label for="moreOptions">{$MOREOPTIONS_LABEL}</label>
                      <a href="{$SITE_HOME}panel/core/seo/" class="btn btn-default w-100"><i class="fa-solid fa-arrow-up-right-from-square"></i></i>
                    {$MOREOPTIONS}</a>
             </div>
            <div class="form-group">
                <label for="Keywords">{$KEYWORDS_LABEL} <span class="badge badge-info"><i
                            class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$KEYWORDS_INFO_LABEL}"
                            data-original-title="{$INFO}"></i></span></label>
                <input type="text" name="Keywords" class="form-control" id="Keywords"
                    value="{$KEYWORDS}">
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
    </div>
</div>