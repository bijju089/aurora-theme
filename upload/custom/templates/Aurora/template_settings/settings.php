<?php
/*
 *  Made by Samerton
 *  https://github.com/NamelessMC/Nameless/tree/v2/
 *  NamelessMC version 2.1.1
 *
 *  License: MIT
 *  Special thanks to Vertisan
 *
 */
/*
 *    Made by cxDEV | BijjuXD
 *    https://github.com/bijju089/aurora-theme/
 *    Aurora Template
 */


$template_file = 'page/main.tpl';

require_once('class/AuroraUtil.php');
require_once(ROOT_PATH . '/core/templates/backend_init.php');


$smarty->assign(AuroraUtil::getSettingsToSmarty());
$smarty->assign([
        'TPL_PATH' => ROOT_PATH . '/custom/templates/Aurora/template_settings/page/',
        'SETTINGS_TEMPLATE' => ROOT_PATH . '/custom/templates/Aurora/template_settings/' . $template_file,
        'SUBMIT' => $language->get('general', 'submit'),
        'YES' => $language->get('general', 'yes'),
        'NO' => $language->get('general', 'no'),
        'BACK' => $language->get('general', 'back'),
        'ARE_YOU_SURE' => $language->get('general', 'are_you_sure'),
        'CONFIRM_DELETE' => $language->get('general', 'confirm_delete'),
        'NAME' => $language->get('admin', 'name'),
        'INFO' => $language->get('general', 'info'),
        'ENABLED' => $language->get('admin', 'enabled'),
        'DISABLED' => $language->get('admin', 'disabled'),
        'CHECK_AGAIN' => $language->get('admin', 'check_again'),
        'WARNING' => $language->get('general', 'warning'),

    // Navigation
        'NAVIGATION' => AuroraUtil::getLanguage('navigation', 'navigation'),
        'HOME_PAGE' => AuroraUtil::getLanguage('navigation', 'home_page'),
        'COLORS_PAGE' => AuroraUtil::getLanguage('navigation', 'colors_page'),
        'NAVBAR_PAGE' => AuroraUtil::getLanguage('navigation', 'navbar_page'),
        'CONNECTIONS_PAGE' => AuroraUtil::getLanguage('navigation', 'connections_page'),
        'CARDCONTENT_PAGE' => AuroraUtil::getLanguage('navigation', 'cardcontent_page'),
        'FOOTER_PAGE' => AuroraUtil::getLanguage('navigation', 'footer_page'),
        'PORTAL_PAGE' => AuroraUtil::getLanguage('navigation', 'portal_page'),
        'CUSTOM_PAGE' => AuroraUtil::getLanguage('navigation', 'custom_page'),
        'SEO_PAGE' => AuroraUtil::getLanguage('navigation', 'seo_page'),
        'SUPPORT_PAGE' => AuroraUtil::getLanguage('navigation', 'support_page'),

    // Home Page
        'REVIEW_INFO' => AuroraUtil::getLanguage('home', 'review_info', [
           'riLinkStart' => '<a href=\'https://cxstudios.xyz/products/aurora\' target=\'_blank\'>',
           'riLinkEnd' => '</a>'
        ]),

    // Colors
    // Currently unused
        'DARKMODE_LABEL' => AuroraUtil::getLanguage('colors', 'darkmode_label'),
        'COLORSSTYLE_LABEL' => AuroraUtil::getLanguage('colors', 'colorsstyle_label'),
        'COLORSSTYLE_NORMAL_LABEL' => AuroraUtil::getLanguage('colors', 'colorsstyle_normal_label'),
        'COLORSSTYLE_COLORS_LABEL' => AuroraUtil::getLanguage('colors', 'colorsstyle_colors_label'),
        'PRIMARYCOLOR_LABEL' => AuroraUtil::getLanguage('colors', 'primarycolor_label'),
        'NAVBARCOLOR_LABEL' => AuroraUtil::getLanguage('colors', 'navbarcolor_label'),
        'FOOTERCOLOR_LABEL' => AuroraUtil::getLanguage('colors', 'footercolor_label'),
        'OUTLINECOLOR_LABEL' => AuroraUtil::getLanguage('colors', 'outlinecolor_label'),
        'OUTLINECOLOR_INFO_LABEL' => AuroraUtil::getLanguage('colors', 'outlinecolor_info_label', [
            'colorCodeStart' => '<code>',
            'colorCodeEnd' => '</code>'
        ]),
        'COLORS_INFO_LABEL' => AuroraUtil::getLanguage('colors', 'colors_info_label', [
            'colorCodeStart' => '<code>',
            'colorCodeEnd' => '</code>'
        ]),
        'NAVBARTEXTCOLOR_LABEL' => AuroraUtil::getLanguage('colors', 'navbartextcolor_label'),
        'NAVBARTEXT_NORMAL_LABEL' => AuroraUtil::getLanguage('colors', 'navbartext_normal_label'),
        'NAVBARTEXT_BLACK_LABEL' => AuroraUtil::getLanguage('colors', 'navbartext_black_label'),
        'NAVBARTEXT_WHITE_LABEL' => AuroraUtil::getLanguage('colors', 'navbartext_white_label'),

    // Navbar
        'NAVBARLOGO_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarlogo_label'),
        'NAVBARLOGO_INFO_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarlogo_info_label'),
        'NAVBARBANNER_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarbanner_label'),
        'NAVBARBANNER_INFO_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarbanner_info_label'),
        'NAVBAREXCLUDE_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarexclude_label'),
        'NAVBAREXCLUDE_INFO_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarexclude_info_label', [
            'slashCodeStart' => '<code>',
            'slashCodeEnd' => '</code>'
        ]),
        'NAVBARTYPE_LABEL' => AuroraUtil::getLanguage('navbar', 'navbartype_label'),
        'NAVBARTYPE_INFO_LABEL' => AuroraUtil::getLanguage('navbar', 'navbartype_info_label'),
        'NAVBARSTYLE_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarstyle_label'),
        'NAVBARSTYLE_INFO_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarstyle_info_label'),
        'NAVBARELEGANT_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarelegant_label'),
        'NAVBARDYNAMIC_LABEL' => AuroraUtil::getLanguage('navbar', 'navbardynamic_label'),
        'NAVBARMINIMAL_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarminimal_label'),
        'NAVBARCLEAN_LABEL' => AuroraUtil::getLanguage('navbar', 'navbarclean_label'),
        'UPLOAD_IMAGE' => AuroraUtil::getLanguage('navbar', 'upload_image'),
        'UPLOAD_BANNER' => AuroraUtil::getLanguage('navbar', 'upload_banner'),
        'SOCIAL_LINK' => AuroraUtil::getLanguage('navbar', 'social_link'),


    // Connections
        // Discord
            'DISCORD_LABEL' => AuroraUtil::getLanguage('connections', 'discord_label'),
            'DISCORDVIEW_LABEL' => AuroraUtil::getLanguage('connections', 'discordview_label'),
            'DISCORDVIEW_INFO_LABEL' => AuroraUtil::getLanguage('connections', 'discordview_info_label'),
            'DISCORDID_LABEL' => AuroraUtil::getLanguage('connections', 'discordid_label'),
            'DISCORDID_INFO_LABEL' => AuroraUtil::getLanguage('connections', 'discordid_info_label', [
                'moreinfoLinkStart' => '<a href=\'https://support.discord.com/hc/en-us/articles/206346498\' target=\'_blank\'>',
                'moreinfoLinkEnd' => '</a>'
            ]),

        // Minecraft
            'MINECRAFT_LABEL' => AuroraUtil::getLanguage('connections', 'minecraft_label'),
            'MINECRAFTVIEW_LABEL' => AuroraUtil::getLanguage('connections', 'minecraftview_label'),
            'MINECRAFTDOMAIN_LABEL' => AuroraUtil::getLanguage('connections', 'minecraftdomain_label'),
            'MINECRAFTIP_LABEL' => AuroraUtil::getLanguage('connections', 'minecraftip_label'),
            'MINECRAFTPORT_LABEL' => AuroraUtil::getLanguage('connections', 'minecraftport_label'),
            'MINECRAFTSTYLE_LABEL' => AuroraUtil::getLanguage('connections', 'minecraftstyle_label'),
            'MINECRAFTSTYLE_INFO_LABEL' => AuroraUtil::getLanguage('connections', 'minecraftstyle_info_label'),
            'SIMPLE_LABEL' => AuroraUtil::getLanguage('connections', 'simple_label'),
            'ADVANCED_LABEL' => AuroraUtil::getLanguage('connections', 'advanced_label'),

    // Card
        'CARD_TITLE' => AuroraUtil::getLanguage('card', 'card_title'),
        'CARD_LINK' => AuroraUtil::getLanguage('card', 'card_link'),
        'CARD_VISIBLEIMAGE' => AuroraUtil::getLanguage('card', 'card_visibleimage'),
        'CARD_HIDENIMAGE' => AuroraUtil::getLanguage('card', 'card_hidenimage'),
        'CUSTOM_CONTENT_NOT_SET' => AuroraUtil::getLanguage('card', 'custom_content_not_set'),

    // Footer
        'FOOTERABOUT_LABEL' => AuroraUtil::getLanguage('options', 'footerabout_label'),
        'FOOTERABOUT_PLACEHOLDER_LABEL' => AuroraUtil::getLanguage('options', 'footerabout_placeholder_label'),

    // Portal
        'PORTAL_INFO' => AuroraUtil::getLanguage('portal', 'portal_info', [
           'piLinkStart' => '<a href=\'https://cxstudios.xyz/wiki/portal\' target=\'_blank\'>',
           'piLinkEnd' => '</a>'
        ]),
        'PORTAL_NOT_SET' => AuroraUtil::getLanguage('portal', 'portal_not_set'),


    // Custom Code
        'CUSTOMCSS_LABEL' => AuroraUtil::getLanguage('options', 'customcss_label'),
        'CUSTOMCSS_INFO_LABEL' => AuroraUtil::getLanguage('options', 'customcss_info_label'),
        'CUSTOMJS_LABEL' => AuroraUtil::getLanguage('options', 'customjs_label'),
        'CUSTOMJS_INFO_LABEL' => AuroraUtil::getLanguage('options', 'customjs_info_label'),
        'LEAVE_BLANK_TO_DISABLE' => AuroraUtil::getLanguage('custom', 'leave_blank_to_disable'),

    // SEO
        'MOREOPTIONS_LABEL' => AuroraUtil::getLanguage('seo', 'moreoptions_label'),
        'MOREOPTIONS' => AuroraUtil::getLanguage('seo', 'moreoptions'),
        'KEYWORDS_LABEL' => AuroraUtil::getLanguage('seo', 'keywords_label'),
        'KEYWORDS_INFO_LABEL' => AuroraUtil::getLanguage('seo', 'keywords_info_label'),
]);

if (isset($_POST['sel_btn_session'])) {
    Session::flash('sel_btn_session', $_POST['sel_btn_session']);
}

if (!isset($_POST['sel_btn'])) {
    if (Input::exists()) {
        $errors = [];

        foreach ($_POST as $key => $value) {
            if ($key == 'token') {
                continue;
            }
            AuroraUtil::updateOrCreateParam($key, $value);
        }

        if (empty($errors)) {
            Session::flash('staff', $language->get('admin', 'successfully_updated'));
            Redirect::to(URL::build($_SESSION['last_page']));
            die();
        }
    }
}

if (Session::exists('staff'))
    $success = Session::flash('staff');
    $TPL_NAME_SESSION = '';

$smarty->assign([
    'TPL_NAME_SESSION' => $TPL_NAME_SESSION
]);

if (isset($success))
    $smarty->assign([
        'SUCCESS' => $success,
        'SUCCESS_TITLE' => $language->get('general', 'success')
    ]);

if (isset($errors) && count($errors))
    $smarty->assign([
        'ERRORS' => $errors,
        'ERRORS_TITLE' => $language->get('general', 'error')
    ]);

$smarty->assign([
    'TOKEN' => Token::get(),
]);