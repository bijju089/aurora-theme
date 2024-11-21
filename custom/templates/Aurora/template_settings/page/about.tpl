<!-- About Section -->
<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$ABOUT} Aurora</h3>
    <div class="card-body">
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
<style>
    .toggle-button {
        background-color: transparent;
        border: none;
        color: white;
        cursor: pointer;
    }

    .toggle-button:focus {
        outline: none;
    }
    .toggle-button:hover {
        color: white;
    }


    .toggle-button i {
        transition: transform 0.3s;
    }

    .hide {
        display: none;
    }
</style>

<div class="card shadow mb-4">
    <div class="card-header bg-primary py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-white">
            <i class="fas fa-wrench"></i> Developers & Contributors
        </h6>
        <!-- Add a button to toggle visibility -->
        <button class="btn toggle-button" id="toggleCardBody">
            <i class="fas fa-chevron-down"></i>
        </button>
    </div>
    <div class="card-body hide" id="cardBody">
                                    These people have contributed this theme in someways, they deserve a credit!
                                    <hr>
                                    <b>
                                    <i class="fa-solid fa-code" style="color: #003cf0;"></i> BijjuXD
                                    <br>
                                    <i class="fa-solid fa-code-branch" style="color: #003cf0;"></i> ColdfireDZN
                                    <br>
                                    <i class="fa-solid fa-code-branch" style="color: #003cf0;"></i> PadowYT2
                                    <br>
                                    <i class="fa-solid fa-code-branch" style="color: #003cf0;"></i> Samerton
                                    <br>
                                    <i class="fa-solid fa-code-branch" style="color: #003cf0;"></i> Xemah
                                    <br>
                                    <i class="fa-solid fa-code-branch" style="color: #003cf0;"></i> CodingWithAnxiety 
                                    <hr>
                                    <a class="btn btn-primary" role="button" href="https://github.com/bijju089/aurora-theme/">Support the development on Github</a>
            </div>
</div>

<script>
    // JavaScript to toggle visibility with smooth transition
    const toggleButton = document.getElementById('toggleCardBody');
    const cardBody = document.getElementById('cardBody');

    toggleButton.addEventListener('click', function () {
        if (cardBody.style.display === 'none' || cardBody.style.display === '') {
            cardBody.style.display = 'block';
            toggleButton.querySelector('i').style.transform = 'rotate(180deg)';
        } else {
            cardBody.style.display = 'none';
            toggleButton.querySelector('i').style.transform = 'rotate(0deg)';
        }
    });
</script>
</div>
</div>