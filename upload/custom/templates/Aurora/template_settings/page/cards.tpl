<!-- Connections Content -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$CARDCONTENT_PAGE}</h3>
    <div class="card-body">
        {if $HOME_TYPE === 'custom'}
        <h3 class="text-center">Settings</h3>
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="cardcontent" />
            <div class="form-group">
                <label for="cardt">{$CARD_TITLE}</label>
                    <input type="text" class="form-control" id="inputCardt" name="cardt"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARDT}">
            </div>
            <div class="form-group">
                <label for="cardw">{$CARD_LINK}</label>
                    <input type="text" class="form-control" id="inputCardw" name="cardw"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARDW}">
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>

        </form>
        <hr />
        <h3 class="text-center">Card 1</h3>
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="connections" />
            <div class="form-group">
                <label for="card1t">{$CARD_TITLE}</label>
                    <input type="text" class="form-control" id="inputCard1t" name="card1t"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD1T}">
            </div>
            <div class="form-group">
                <label for="card1w">{$CARD_LINK}</label>
                    <input type="text" class="form-control" id="inputCard1w" name="card1w"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD1W}">
            </div>
            <div class="form-group">
                <label for="card1v">{$CARD_VISIBLEIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard1v" name="card1v"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD1V}">
            </div>
            <div class="form-group">
                <label for="card1h">{$CARD_HIDENIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard1h" name="card1h"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD1H}">
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
        <hr />
        <h3 class="text-center">Card 2</h3>
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="connections" />
            <div class="form-group">
                <label for="card2t">{$CARD_TITLE}</label>
                    <input type="text" class="form-control" id="inputCard2t" name="card2t"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD2T}">
            </div>
            <div class="form-group">
                <label for="card2w">{$CARD_LINK}</label>
                    <input type="text" class="form-control" id="inputCard2w" name="card2w"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD2W}">
            </div>
            <div class="form-group">
                <label for="card2v">{$CARD_VISIBLEIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard2v" name="card2v"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD2V}">
            </div>
            <div class="form-group">
                <label for="card2h">{$CARD_HIDENIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard2h" name="card2h"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD2H}">
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
        <hr />
        <h3 class="text-center">Card 3</h3>
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="connections" />
            <div class="form-group">
                <label for="card3t">{$CARD_TITLE}</label>
                    <input type="text" class="form-control" id="inputCard3t" name="card3t"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD3T}">
            </div>
            <div class="form-group">
                <label for="card3w">{$CARD_LINK}</label>
                    <input type="text" class="form-control" id="inputCard3w" name="card3w"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD3W}">
            </div>
            <div class="form-group">
                <label for="card3v">{$CARD_VISIBLEIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard3v" name="card3v"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD3V}">
            </div>
            <div class="form-group">
                <label for="card3h">{$CARD_HIDENIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard3h" name="card3h"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD3H}">
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
        </form>
        <hr />
        <h3 class="text-center">Card 4</h3>
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="connections" />
            <div class="form-group">
                <label for="card4t">{$CARD_TITLE}</label>
                    <input type="text" class="form-control" id="inputCard4t" name="card4t"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD4T}">
            </div>
            <div class="form-group">
                <label for="card4w">{$CARD_LINK}</label>
                    <input type="text" class="form-control" id="inputCard4w" name="card4w"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD4W}">
            </div>
            <div class="form-group">
                <label for="card4v">{$CARD_VISIBLEIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard4v" name="card4v"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD4V}">
            </div>
            <div class="form-group">
                <label for="card4h">{$CARD_HIDENIMAGE}</label>
                    <input type="text" class="form-control" id="inputCard4h" name="card4h"
                        placeholder="{$LEAVE_BLANK_TO_DISABLE}" value="{$CARD4H}">
            </div>
            <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i>
                    {$SUBMIT}</button>
            </div>
            {else}
            <div class="form-group">
                <div class="alert alert-danger" role="alert">
                 {$CUSTOM_CONTENT_NOT_SET}
                 </div>            
            </div>
         <hr />
           {/if}
        </form>
    </div>
</div>