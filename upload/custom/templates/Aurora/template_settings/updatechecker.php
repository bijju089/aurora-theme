<?php
/*
 * Aurora Template
 * Made by BijjuXD
 * @version 0.6
 * @license MIT
 */

require_once(ROOT_PATH . '/custom/templates/Aurora/template.php');

// Get Current Version of Aurora
$currentVersion = $smarty->getTemplateVars('AURORA_VER'); 

// URL to the version information JSON
$versionInfoUrl = "https://www.cxstudios.org/api/updates/version.json";

$updateInfo = @file_get_contents($versionInfoUrl);

if ($updateInfo !== false) {
    $updateInfo = json_decode($updateInfo, true);

    if (isset($updateInfo['version']) && isset($updateInfo['download_url'])) {
        $latestVersion = $updateInfo['version'];
        $downloadUrl = $updateInfo['download_url'];
        $updateDescription = isset($updateInfo['description']) ? $updateInfo['description'] : "";

        $updateAvailable = version_compare($currentVersion, $latestVersion, '<');
    } else {
        $updateAvailable = false;
    }
} else {
    $updateAvailable = false;
}

// Assign Variables
$smarty->assign([
    'updateAvailable' => $updateAvailable,
    'currentVersion' => $currentVersion,
    'latestVersion' => $latestVersion,
    'downloadUrl' => $downloadUrl,
    'updateDescription' => $updateDescription
]);
