<!-- Page Content -->
<div class="row">
    <div class="col-sm-3">
        {include file="{$TPL_PATH}navigation.tpl"}
    </div>

    <div class="col-sm-9">
        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade {if empty($TPL_NAME_SESSION) or $TPL_NAME_SESSION eq 'home'}show active{/if}"
                id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                {include file="{$TPL_PATH}home.tpl"}
            </div>
            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'colors'}show active{/if}" id="v-pills-colors"
                role="tabpanel" aria-labelledby="v-pills-colors-tab">
                {include file="{$TPL_PATH}colors.tpl"}
            </div>
            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'navbar'}show active{/if}" id="v-pills-navbar"
                role="tabpanel" aria-labelledby="v-pills-navbar-tab">
                {include file="{$TPL_PATH}navbar.tpl"}
            </div>
            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'connections'}show active{/if}" id="v-pills-connections"
                role="tabpanel" aria-labelledby="v-pills-connections-tab">
                {include file="{$TPL_PATH}connections.tpl"}
            </div>
            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'cardcontent'}show active{/if}" id="v-pills-cardcontent"
                role="tabpanel" aria-labelledby="v-pills-cardcontent-tab">
                {include file="{$TPL_PATH}cards.tpl"}
            </div>

            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'portal'}show active{/if}" id="v-pills-portal"
                role="tabpanel" aria-labelledby="v-pills-portal-tab">
                {include file="{$TPL_PATH}portal.tpl"}
            </div>

            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'footer'}show active{/if}" id="v-pills-footer"
                role="tabpanel" aria-labelledby="v-pills-footer-tab">
                {include file="{$TPL_PATH}footer.tpl"}
            </div>
            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'custom'}show active{/if}" id="v-pills-custom"
                role="tabpanel" aria-labelledby="v-pills-custom-tab">
                {include file="{$TPL_PATH}custom.tpl"}
            </div>
            <div class="tab-pane fade {if $TPL_NAME_SESSION eq 'seo'}show active{/if}" id="v-pills-seo"
                role="tabpanel" aria-labelledby="v-pills-seo-tab">
                {include file="{$TPL_PATH}seo.tpl"}
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{$WARNING}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                {$INSTALL_CONFIRM}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$CANCEL}</button>
                <a href="{$UPGRADE_LINK}" class="btn btn-primary">{$UPDATE}</a>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function showConfirmModal() {
        $('#confirmModal').modal().show();
    }
</script>