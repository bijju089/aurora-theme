<div class="card mb-3" style="border: 1px solid #ececec">
    <div class="card-body">
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link {if empty($TPL_NAME_SESSION) or $TPL_NAME_SESSION eq 'home'}active{/if}"
                id="v-pills-options-tab" data-toggle="pill" href="#v-pills-home" role="tab"
                aria-controls="v-pills-home" aria-selected="true"><i class="fa-solid fa-home"></i> {$HOME_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'theme'}active{/if}" id="v-pills-theme-tab" data-toggle="pill"
                href="#v-pills-theme" role="tab" aria-controls="v-pills-theme" aria-selected="false"><i
                    class="fa-solid fa-paint-brush"></i> {$THEME_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'navbar'}active{/if}" id="v-pills-navbar-tab" data-toggle="pill"
                href="#v-pills-navbar" role="tab" aria-controls="v-pills-navbar" aria-selected="false"><i
                    class="fa-solid fa-compass"></i> {$NAVBAR_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'connections'}active{/if}" id="v-pills-connections-tab"
                data-toggle="pill" href="#v-pills-connections" role="tab" aria-controls="v-pills-connections"
                aria-selected="false"><i class="fa-solid fa-signal"></i> {$CONNECTIONS_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'addons'}active{/if}" id="v-pills-addons-tab"
                data-toggle="pill" href="#v-pills-addons" role="tab" aria-controls="v-pills-addons"
                aria-selected="false"><i class="fa-solid fa-puzzle-piece"></i> {$ADDONS_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'cardcontent'}active{/if}" id="v-pills-cardcontent-tab"
                data-toggle="pill" href="#v-pills-cardcontent" role="tab" aria-controls="v-pills-cardcontent"
                aria-selected="false"><i class="fa-solid fa-spinner"></i> {$CARDCONTENT_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'portal'}active{/if}" id="v-pills-portal-tab"
                data-toggle="pill" href="#v-pills-portal" role="tab" aria-controls="v-pills-portal"
                aria-selected="false"><i class="fa-brands fa-usps"></i> {$PORTAL_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'welcome'}active{/if}" id="v-pills-welcome-tab"
                data-toggle="pill" href="#v-pills-welcome" role="tab" aria-controls="v-pills-welcome"
                aria-selected="false"><i class="fa-solid fa-certificate"></i> {$WELCOME_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'footer'}active{/if}" id="v-pills-footer-tab" data-toggle="pill"
                href="#v-pills-footer" role="tab" aria-controls="v-pills-footer" aria-selected="false">
                <i class="fa-solid fa-circle-nodes"></i> {$FOOTER_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'custom'}active{/if}" id="v-pills-custom-tab"
                data-toggle="pill" href="#v-pills-custom" role="tab" aria-controls="v-pills-custom"
                aria-selected="false"><i class="fa-solid fa-code"></i> {$CUSTOM_PAGE}</a>

            <a class="nav-link {if $TPL_NAME_SESSION eq 'seo'}active{/if}" id="v-pills-seo-tab" data-toggle="pill"
                href="#v-pills-seo" role="tab" aria-controls="v-pills-seo" aria-selected="false"><i
                    class="fa-solid fa-globe"></i>
                {$SEO_PAGE}</a>

            <a class="nav-link" href="https://cxstudios.org/discord" target="_blank"><i
                    class="fa-solid fa-life-ring"></i>
                {$SUPPORT_PAGE}</a>
            <style>
                .nav-link {
                    color: #979797;
                }
            </style>
        </div>
    </div>
</div>