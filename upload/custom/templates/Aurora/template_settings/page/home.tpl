<!-- Home Page -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">Aurora Theme <span class="badge bg-primary" style="color:white;">BETA</span></h3>
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
                                        Update Available</h6>
                                </div>
                                <div class="card-body text-center">
                                    Current Aurora Version <strong>{$currentVersion}</strong>
                                    <br>
                                    Latest Aurora Release <strong>{$latestVersion}</strong>
                                    <hr>
                                    <a href="{$downloadUrl}" class="btn btn-primary">Download Update</a>
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
                    <div class="h5 mb-0 font-weight-bold text-reset text-gray-800">GPL-3</div>
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

</div>
        </form>
    </div>
</div>