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