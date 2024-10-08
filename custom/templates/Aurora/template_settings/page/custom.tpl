<!-- CustomCode Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$CUSTOM_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="custom" />
            <div class="form-group">
                <div class="row">
                    <div class="col-md-10">
                        <label for="customCSS">{$CUSTOMCSS_LABEL} <span class="badge badge-info"><i
                                    class="fas fa-question-circle" data-container="body" data-toggle="popover"
                                    data-placement="top" data-content="{$CUSTOMCSS_INFO_LABEL}"
                                    data-original-title="{$INFO}"></i></span></label>
                        <textarea name="customCSS" style="height: 200px;" class="form-control"
                            id="inputCustomCSS">{$CUSTOMCSS}</textarea>
                    <div class="float-right">{$LEAVE_BLANK_TO_DISABLE}</div>
                    </div>

                    <div class="col-md-10">
                        <label for="customJS">{$CUSTOMJS_LABEL} <span class="badge badge-info"><i
                                    class="fas fa-question-circle" data-container="body" data-toggle="popover"
                                    data-placement="top" data-content="{$CUSTOMJS_INFO_LABEL}"
                                    data-original-title="{$INFO}"></i></span></label>
                        <textarea name="customJS" style="height: 200px;" class="form-control"
                            id="inputCustomJS">{$CUSTOMJS}</textarea>
                     <div class="float-right">{$LEAVE_BLANK_TO_DISABLE}</div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
    </div>
</div>