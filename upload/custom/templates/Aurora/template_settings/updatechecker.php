<?php
require_once(ROOT_PATH . '/custom/templates/Aurora/template.php');

// Current version of your template
$currentVersion = $smarty->getTemplateVars('AURORA_VER'); // Replace with your actual current version

// URL to the version information JSON
$versionInfoUrl = "https://www.cxstudios.xyz/api/updates/version.json";

$updateInfo = @file_get_contents($versionInfoUrl);

if ($updateInfo !== false) {
    $updateInfo = json_decode($updateInfo, true);

    if (isset($updateInfo['version']) && isset($updateInfo['download_url'])) {
        $latestVersion = $updateInfo['version'];
        $downloadUrl = $updateInfo['download_url'];

        $updateAvailable = version_compare($currentVersion, $latestVersion, '<');
    } else {
        $updateAvailable = false;
    }
} else {
    $updateAvailable = false;
}

$smarty->assign([
    'updateAvailable' => $updateAvailable,
    'currentVersion' => $currentVersion,
    'latestVersion' => $latestVersion,
    'downloadUrl' => $downloadUrl
]);
