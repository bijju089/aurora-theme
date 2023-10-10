<!-- Navbar Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$NAVBAR_PAGE}</h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="navbar" />
            <div class="form-group">
                <label for="navbarLogo">{$NAVBARLOGO_LABEL} <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$NAVBARLOGO_INFO_LABEL}"
                            data-original-title="{$INFO}"></i>
                    </span></label>
                      <a href="{$SITE_HOME}panel/core/images/" class="btn btn-default w-100"><i class="fa-solid fa-arrow-up-right-from-square"></i></i>
                    {$UPLOAD_IMAGE}</a>
    </div>
<div class="form-group dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Logo Settings
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
<h3 class="text-center">More Settings</h3>
    <div class="form-group">
      <input type="text" class="form-control" id="inputLogoHeight" name="logoHeight" placeholder="Logo Height (Ex: 20)" value="{$LOGOHEIGHT}">
    </div>
{if $NAVBARSTYLE eq '0' }
    <div class="form-group">
      <input type="text" class="form-control" id="inputLogoWidth" name="logoWidth" placeholder="Logo Width (Ex: 20)" value="{$LOGOWIDTH}">
    </div>
{/if}
<hr>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>

  </div>
</div>

            <div class="form-group">
                <label for="navbarLogo">{$NAVBARBANNER_LABEL} <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$NAVBARBANNER_INFO_LABEL}"
                            data-original-title="{$INFO}"></i>
                    </span></label>
                      <a href="{$SITE_HOME}panel/core/images/" class="btn btn-default w-100"><i class="fa-solid fa-arrow-up-right-from-square"></i></i>
                    {$UPLOAD_BANNER}</a>
             </div>
            <div class="form-group">
                <label for="navbarType">{$NAVBARTYPE_LABEL} <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$NAVBARTYPE_INFO_LABEL}"
                            data-original-title="{$INFO}"></i>
                    </span></label>
                <select id="inputNavbarType" class="form-control mr-sm-2" name="navbarType">
                    <option value="0" {if $NAVBARTYPE eq '0' } selected{/if}>{$NAVBARMINIMAL_LABEL}</option>
                    <option value="1" {if $NAVBARTYPE eq '1' } selected{/if}>{$NAVBARCLEAN_LABEL}</option>
                </select>
            </div>
{if $NAVBARSTYLE eq '2'}
            <div class="form-group">
                <div class="alert alert-info" role="info">
                 {$MODERNNAV_INFO}
                 </div>            
            </div>
{/if}
            <div class="form-group">
                <label for="navbarStyle">{$NAVBARSTYLE_LABEL} <span class="badge badge-info">
                        <i class="fas fa-question-circle" data-container="body" data-toggle="popover"
                            data-placement="top" data-content="{$NAVBARSTYLE_INFO_LABEL}"
                            data-original-title="{$INFO}"></i>
                    </span></label>
                <select id="inputNavbarStyle" class="form-control mr-sm-2" name="navbarStyle">
                    <option value="0" {if $NAVBARSTYLE eq '0' } selected{/if}>{$NAVBARELEGANT_LABEL}</option>
                    <option value="1" {if $NAVBARSTYLE eq '1' } selected{/if}>{$NAVBARDYNAMIC_LABEL}</option>
                    <option value="2" {if $NAVBARSTYLE eq '2' } selected{/if}>{$NAVBARMODERN_LABEL}</option>
                </select>
            </div>
              {if $NAVBARSTYLE eq '2'}
                <div class="form-group">
                <label for="btnColour">{$BTNCOLOUR_LABEL}</label>
                    <input type="text" class="form-control" id="inputBtnColour" name="btnColour"
                        placeholder="Enter Hex Value" value="{$BTNCOLOUR}">
                </div>
               {/if}
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
</form>
               {if $NAVBARSTYLE eq '0'}
               <hr />
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="navbar" />
               <h3 class="text-center">{$SOCIAL_LINK}</h3>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputSocialLink1" name="socialLink1"
                        placeholder="Youtube Link" value="{$SOCIALLINK1}">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputSocialLink2" name="socialLink2"
                        placeholder="Discord Server Link" value="{$SOCIALLINK2}">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputSocialLink3" name="socialLink3"
                        placeholder="Twitter Link" value="{$SOCIALLINK3}">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputSocialLink4" name="socialLink4"
                        placeholder="Facebook Link" value="{$SOCIALLINK4}">
                </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
            {/if}
        </form>
    </div>
</div>