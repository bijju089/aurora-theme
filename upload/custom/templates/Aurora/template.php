<?php
/*
 *    Made by Samerton
 *    https://github.com/NamelessMC/Nameless/
 *    NamelessMC version 2.1.1
 */
/*
 *    Made by cxDEV | BijjuXD
 *    https://github.com/bijju089/aurora-theme/
 *    Aurora Template
 */

class Aurora_Template extends TemplateBase {

    private array $_template;

    /** @var Language */
    private Language $_language;

    /** @var User */
    private User $_user;

    /** @var Pages */
    private Pages $_pages;
    private $_smarty;
    private $_cache;

    public function __construct($cache, $smarty, $language, $user, $pages) {
        $template = [
            'name' => 'Aurora',
            'version' => '0.2',
            'nl_version' => '2.1.1',
            'author' => '<a href="https://cxstudios.xyz/" target="_blank">BijjuXD</a>',
        ];

        $template['path'] = (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/' . $template['name'] . '/';

        parent::__construct($template['name'], $template['version'], $template['nl_version'], $template['author']);

        $this->_settings = ROOT_PATH . '/custom/templates/Aurora/template_settings/settings.php';
       
        $this->_smarty = $smarty;
        $this->_cache = $cache;

        $this->assets()->include([
            AssetTree::FONT_AWESOME,
            AssetTree::JQUERY,
            AssetTree::JQUERY_COOKIE,
            AssetTree::FOMANTIC_UI,
        ]);

        $smarty->assign('TEMPLATE', $template);

        // Other variables
        $smarty->assign('FORUM_SPAM_WARNING_TITLE', $language->get('general', 'warning'));

        $cache->setCache('template_settings');
        $smartyDarkMode = false;

        if (defined('DARK_MODE') && DARK_MODE == '1') {
            $smartyDarkMode = true;
        }

        $smarty->assign([
            'DEFAULT_REVAMP_DARK_MODE' => $smartyDarkMode
        ]);

        $this->_template = $template;
        $this->_language = $language;
        $this->_user = $user;
        $this->_pages = $pages;
        require_once('template_settings/class/AuroraUtil.php');
        AuroraUtil::initialise();

        $smarty->assign([
            'CLICK_TO_JOIN' => AuroraUtil::getLanguage('frontend', 'click_to_join'),
            'MEMBERS_ONLINE' => AuroraUtil::getLanguage('frontend', 'members_online'),
            'CLICK_TO_COPY' => $language->get('general', 'click_to_copy_tooltip'),
            'PLAYERS_ONLINE' => AuroraUtil::getLanguage('frontend', 'players_online'),
            'ABOUT' => $language->get('user', 'about')
        ]);

}

    public function onPageLoad() {
        $page_load = microtime(true) - PAGE_START_TIME;
        define('PAGE_LOAD_TIME', $this->_language->get('general', 'page_loaded_in', ['time' => round($page_load, 3)]));

        $this->addCSSFiles([
            $this->_template['path'] . 'css/custom.css?v=211' => [],
            $this->_template['path'] . 'css/aurora.css?v=211' => []
        ]);

        $route = (isset($_GET['route']) ? rtrim($_GET['route'], '/') : '/');

        $JSVariables = [
            'siteName' => Output::getClean(SITE_NAME),
            'siteURL' => URL::build('/'),
            'fullSiteURL' => URL::getSelfURL() . ltrim(URL::build('/'), '/'),
            'page' => PAGE,
            'avatarSource' => AvatarSource::getUrlToFormat(),
            'copied' => $this->_language->get('general', 'copied'),
            'cookieNotice' => $this->_language->get('general', 'cookie_notice'),
            'noMessages' => $this->_language->get('user', 'no_messages'),
            'newMessage1' => $this->_language->get('user', '1_new_message'),
            'newMessagesX' => $this->_language->get('user', 'x_new_messages'),
            'noAlerts' => $this->_language->get('user', 'no_alerts'),
            'newAlert1' => $this->_language->get('user', '1_new_alert'),
            'newAlertsX' => $this->_language->get('user', 'x_new_alerts'),
            'bungeeInstance' => $this->_language->get('general', 'bungee_instance'),
            'andMoreX' => $this->_language->get('general', 'and_x_more'),
            'onePlayerOnline' => $this->_language->get('general', 'currently_1_player_online'),
            'xPlayersOnline' => $this->_language->get('general', 'currently_x_players_online'),
            'noPlayersOnline' => $this->_language->get('general', 'no_players_online'),
            'offline' => $this->_language->get('general', 'offline'),
            'confirmDelete' => $this->_language->get('general', 'confirm_deletion'),
            'debugging' => (defined('DEBUGGING') && DEBUGGING == 1) ? '1' : '0',
            'loggedIn' => $this->_user->isLoggedIn() ? '1' : '0',
            'cookie' => defined('COOKIE_NOTICE') ? '1' : '0',
            'loadingTime' => Util::getSetting('page_loading') === '1' ? PAGE_LOAD_TIME : '',
            'route' => $route,
            'csrfToken' => Token::get(),
        ];

        // Logo
        $cache = new Cache(['name' => 'nameless', 'extension' => '.cache', 'path' => ROOT_PATH . '/cache/']);
        $cache->setCache('backgroundcache');
        $logo_image = $cache->retrieve('logo_image');
        $JSVariables['logoImage'] = !empty($logo_image) ? $logo_image : null;

        if (str_contains($route, '/forum/topic/') || PAGE === 'profile') {
            $this->assets()->include([
                AssetTree::JQUERY_UI,
            ]);
        }

        $JSVars = '';
        $i = 0;
        foreach ($JSVariables as $var => $value) {
            $JSVars .= ($i == 0 ? 'const ' : ', ') . $var . ' = ' . json_encode($value);
            $i++;
        }

        $this->addJSScript($JSVars);

        $this->addJSFiles([
            $this->_template['path'] . 'js/core/core.js?v=203' => [],
            $this->_template['path'] . 'js/core/user.js' => [],
            $this->_template['path'] . 'js/core/pages.js?v=203' => [],
            $this->_template['path'] . 'js/portal/firefly.js' => [],
        ]);

        foreach ($this->_pages->getAjaxScripts() as $script) {
            $this->addJSScript('$.getJSON(\'' . $script . '\', function(data) {});');
        }
        require_once('template_settings/frontend.php');
    }
}

$template = new Aurora_Template($cache, $smarty, $language, $user, $pages);
$template_pagination = ['div' => 'ui mini pagination menu', 'a' => '{x}item'];
