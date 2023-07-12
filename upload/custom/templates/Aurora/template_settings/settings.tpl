<div class="row">
    <div class="col-md-9">
        <div class="card" style="border: 1px solid #e3e6f0">
            <div class="card-body">
           <h3><b>Aurora</b></h3>
           <p>Best Opensource NamelessMC template</p>
                    <div class="alert alert-info">
                        <h4>Info</h4>
                       <p>Some settings are not here because this is a free resource. Visit our <a href="https://wiki.cxstudios.xyz/docs/aurora/">wiki</a> to know how to configure this theme!</p>
                    </div>
<form action="" method="post">
    <div class="form-group">
        <label for="inputDarkMode">{$DARK_MODE}</label>
        <select name="darkMode" class="form-control" id="inputDarkMode">
            <option value="0" {if $DARK_MODE_VALUE eq '0' } selected{/if}>{$DISABLED}</option>
            <option value="1" {if $DARK_MODE_VALUE eq '1' } selected{/if}>{$ENABLED}</option>
        </select>
    </div>
    <div class="form-group">
        <label for="inputNavbarColour">{$NAVBAR_COLOUR}</label>
        <select name="navbarColour" class="form-control" id="inputNavbarColour">
            {foreach from=$NAVBAR_COLOURS item=item}
            <option value="{$item.value}" {if $item.selected} selected{/if}>{$item.name}</option>
            {/foreach}
        </select>
    </div>
    <div class="form-group">
        <label for="inputHomeCustomContent">Custom Home Content</label>
        <textarea name="home_custom_content" id="inputHomeCustomContent"></textarea>
    </div>

    <div class="form-group">
        <input type="hidden" name="token" value="{$TOKEN}">
        <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
    </div>
</form>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card" style="border: 1px solid #e3e6f0">
            <div class="card-body">
                <ul class="nav nav-pills mb-3 flex-column" id="pills-tab" role="tablist">
                   <div class="sidebar-heading"><small>LINKS</small></div>
                     <a class="nav-link" href="https://wiki.cxstudios.xyz/docs/aurora"><i class="fa-solid fa-book-bookmark"></i> <span>Wiki</span></a>
                     <a class="nav-link" href="https://cxstudios.xyz/discord"><i class="fa-solid fa-globe"></i> <span>Support</span></a>
                     <a class="nav-link" href="https://github.com/bijju089/aurora-theme/"><i class="fa-brands fa-github"></i> <span>Github</span></a>
                   <div class="sidebar-heading"><small>AUTHORS</small></div>
                     <a class="nav-link" href="https://cxstudios.xyz/"><i class="fa-solid fa-globe"></i> <span>BijjuXD</span></a>
                </ul>
            </div>
        </div>
    </div>
</div>
