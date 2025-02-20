<?php
/*
 *    Aurora Template for NamelessMC
 *    github.com/bijju089/aurora-theme/
 *    LICENSE: MIT
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
            'version' => 'v1.2',
            'nl_version' => '2.1.3',
            'author' => '<a href="https://cxstudios.in/" target="_blank">cxSTUDIOS</a> & <a href="https://github.com/bijju089/aurora-theme/graphs/contributors" target="_blank">Contributors</a>',
        ];

        $template['path'] = (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/' . $template['name'] . '/';

        parent::__construct($template['name'], $template['version'], $template['nl_version'], $template['author']);

        $this->_settings = ROOT_PATH . '/custom/templates/Aurora/_settings/settings.php';
       
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

        $this->_template = $template;
        $this->_language = $language;
        $this->_user = $user;
        $this->_pages = $pages;
        require_once('_settings/class/AuroraUtil.php');
        AuroraUtil::initialise();

// Assign Language
        $smarty->assign([
            'CLICK_TO_JOIN' => AuroraUtil::getLanguage('frontend', 'click_to_join'),
            'MEMBERS_ONLINE' => AuroraUtil::getLanguage('frontend', 'members_online'),
            'CLICK_TO_COPY' => AuroraUtil::getLanguage('frontend', 'click_to_copy'),
            'PLAYERS_ONLINE' => AuroraUtil::getLanguage('frontend', 'players_online'),
            'AURORA_VER' => AuroraUtil::getLanguage('frontend', 'template_version', [
               'version' => '' . $template["version"] . ''
             ]),
            'AURORA_AUTHOR' => AuroraUtil::getLanguage('frontend', 'template_author', [
               'author' => '' . $template["author"] . ''
             ]),
            'PORTAL_THERE_ARE_CURRENTLY' => AuroraUtil::getLanguage('frontend', 'portal_there_are_currently'),
            'PORTAL_PLAYERS_ONLINE' => AuroraUtil::getLanguage('frontend', 'portal_players_online'),
            'ABOUT' => AuroraUtil::getLanguage('frontend', 'about'),
            'BE_THE_FIRST' => AuroraUtil::getLanguage('module', 'be_the_first'),
            'SEND_FEEDBACK' => AuroraUtil::getLanguage('module', 'send_feedback'),
            'ACCOUNT_SETTINGS' => AuroraUtil::getLanguage('user', 'account_settings'),
            'REGISTER' => AuroraUtil::getLanguage('user', 'register'),
            'LOGIN' => AuroraUtil::getLanguage('user', 'login')
        ]);

}

    public function onPageLoad() {
        $page_load = microtime(true) - PAGE_START_TIME;
        define('PAGE_LOAD_TIME', $this->_language->get('general', 'page_loaded_in', ['time' => round($page_load, 3)]));

        $this->addCSSFiles([
            $this->_template['path'] . '_assets/css/extra.css?v=0' => [],
            $this->_template['path'] . '_assets/css/aurora.css?v=0' => []
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
            $this->_template['path'] . '_assets/js/core/core.js?v=0' => [],
            $this->_template['path'] . '_assets/js/core/user.js?v=0' => [],
            $this->_template['path'] . '_assets/js/core/pages.js?v=0' => [],

        ]);

        foreach ($this->_pages->getAjaxScripts() as $script) {
            $this->addJSScript('$.getJSON(\'' . $script . '\', function(data) {});');
        }
        require_once('_settings/frontend.php');
    }
}

$template = new Aurora_Template($cache, $smarty, $language, $user, $pages);
$template_pagination = ['div' => 'ui mini pagination menu', 'a' => '{x}item'];
