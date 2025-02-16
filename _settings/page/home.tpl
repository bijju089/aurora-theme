<!-- Home Page -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">Aurora Theme <span class="badge bg-primary easter-egg-trigger" data-toggle="modal" data-target="#easterEggModal" style="color:white;cursor:help;">v{$currentVersion}</span></h3>
    <div class="card-body">
        <form action="" method="POST">
            <input type="hidden" name="sel_btn_session" value="home" />
            <div class="form-group">
                <div class="alert alert-info" role="info">
                 {$REVIEW_INFO}
                 </div>            
            </div>

{if $updateAvailable}
<div class="card shadow mb-4">
                                <div class="card-header bg-danger py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-white"><i class="fa-solid fa-gear"></i>
                                        {$UPDATE_AVAILABLE}</h6>
                                </div>
                                <div class="card-body text-center">
                                    Current Aurora Version <strong>{$currentVersion}</strong>
                                    <br>
                                    Latest Aurora Release <strong>{$latestVersion}</strong>
                                    <br>
                                    <b>{$updateDescription}</b>
                                    <hr>
                                    <a href="{$downloadUrl}" class="btn btn-danger">{$DOWNLOAD_UPDATE}</a>
                              </div>
                            </div>
{/if}
<div class="centered row">
                         <div class="col-xl-3 col-md-6 mb-4">
    <div class="card stats-card border-left-{if $updateAvailable}danger{else}primary{/if} shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Version</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">{$AURORA_VER}</div>
                </div>
                <div class="col-auto">
                    <i class="fa-solid fa-gears fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>


    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card stats-card border-left-{if $updateAvailable}danger{else}primary{/if} shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">UP-TO-DATE</div>
                    <div class="h5 mb-0 font-weight-bold text-reset text-gray-800">{if $updateAvailable}No{else}Yes{/if}</div>
                </div>
                <div class="col-auto">
                    <i class="fa-solid fa-gear fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card stats-card border-left-primary shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">LICENSE</div>
                    <div class="h5 mb-0 font-weight-bold text-reset text-gray-800">MIT</div>
                </div>
                <div class="col-auto">
                    <i class="fa-solid fa-scale-balanced fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>


    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card stats-card border-left-primary shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Author</div>
                    <div class="h5 mb-0 font-weight-bold text-reset text-gray-800">{$AURORA_AUTHOR}</div>
                </div>
                <div class="col-auto">
                    <i class="fa-solid fa-user fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>
  <div class="col-sm-6">
    <div class="card border-left-primary shadow h-100 py-2">
      <div class="card-body">
        <h5 class="card-title">{$REQUIRE_SUPPORT}</h5>
        <p class="card-text">{$REQUIRE_SUPPORT_DESC}</p>
        <a href="https://cxstudios.in/discord" class="btn btn-primary">{$JOIN_DISCORD}</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card border-left-primary shadow h-100 py-2">
      <div class="card-body">
        <h5 class="card-title">{$RATE_AURORA}</h5>
        <p class="card-text">{$RATE_AURORA_DESC}</p>
        <a href="https://namelessmc.com/resources/resource/223-aurora---free-namelessmc-template/" class="btn btn-primary">{$RATE_NOW}</a>
      </div>
    </div>
  </div>
</div>
        </form>
    </div>
</div>
<div class="modal fade" id="easterEggModal" tabindex="-1" role="dialog" aria-labelledby="easterEggModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="easterEggModalLabel">Hey there!!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        "Code is like humor. When you have to explain it, it's bad." 
         <br><small>- Cory House</small>
       <br><img src="https://cxstudios.in/cdn/lmfao/codeisfun.gif" alt="Looks like this gif wasn't loaded lmfao." class="img-fluid">
      </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function () {
  $('.easter-egg-trigger').click(function () {
    // Show the modal
    $('#easterEggModal').modal('show');
  });
});
</script>
