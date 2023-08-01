<?php

class AuroraUtil
{
    private static Language $_aurora_language;

    public static function getLanguage(string $file, string $term, array $variables = []): string
    {
        if (!isset(self::$_aurora_language)) {
            self::$_aurora_language = new Language(ROOT_PATH . '/custom/templates/Aurora/_language', LANGUAGE);
        }
        return self::$_aurora_language->get($file, $term, $variables);
    }

    public static function getDsServer($id): array
    {
        $discord_server = [];
        if ($id !== '') {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
            curl_setopt($ch, CURLOPT_TIMEOUT, 5);
            curl_setopt($ch, CURLOPT_URL, 'https://discordapp.com/api/servers/' . $id . '/widget.json');
            $result = curl_exec($ch);
            $result = json_decode($result);
            curl_close($ch);
            $discord_server = [
                'name' => $result->name,
                'members' => $result->presence_count,
                'link' => $result->instant_invite
            ];
        }
        return $discord_server;
    }

    public static function getSettingsToSmarty(): array
    {
        $settings_data = DB::getInstance()->get('aurora_settings', ['id', '<>', 0])->results();
        $result = [];
        if (count($settings_data)) {
            foreach ($settings_data as $value) {
                $settings_data_array[$value->name] = [
                    'id' => Output::getClean($value->id),
                    'value' => Output::getClean($value->value)
                ];
                $result[strtoupper($value->name)] = htmlspecialchars_decode($settings_data_array[$value->name]['value']);
            }
        }
        return $result;
    }

    public static function updateOrCreateParam($key, $value)
    {
        $array = DB::getInstance()->get('aurora_settings', ['name', '=', $key])->results();
        $data = end($array);
        if (!empty($data)) {
            DB::getInstance()->update('aurora_settings', $data->id, [
                'value' => $value
            ]);
        } else {
            DB::getInstance()->insert('aurora_settings', [
                'name' => $key,
                'value' => $value
            ]);
        }
    }
    public static function initialise()
    {   

        if (DB::getInstance()->showTables('aurora_settings')) {
            $foundLegacy = false;

            foreach (DB::getInstance()->query('SELECT name FROM nl2_aurora_settings')->results() as $row) {
                if ($row->name === 'template_about') {
                    $foundLegacy = true;
                    break;
                }
            }

            if ($foundLegacy) {
                DB::getInstance()->query('DROP TABLE nl2_aurora_settings');
            } else {
                if (DB::getInstance()->showTables('aurora_settings')) {
                    return;
                }
            }
        }
     try {
            $group = DB::getInstance()->get('groups', ['id', '=', 2])->results();
            $group = $group[0];
            $group_permissions = json_decode($group->permissions, TRUE);
            $group_permissions['admincp.aurora'] = 1;
            $group_permissions = json_encode($group_permissions);
            DB::getInstance()->update('groups', 2, ['permissions' => $group_permissions]);
        } catch (Exception $e) {
            // Error
        }
        try {
            $engine = Config::get('mysql/engine');
            $charset = Config::get('mysql/charset');
        } catch (Exception $e) {
            $engine = 'InnoDB';
            $charset = 'utf8mb4';
        }
        if (!$engine || is_array($engine))
            $engine = 'InnoDB';
        if (!$charset || is_array($charset))
            $charset = 'latin1';
        try {
            DB::getInstance()->createTable("aurora_settings", "`id` int(11) NOT NULL AUTO_INCREMENT, `name` varchar(255) NOT NULL, `value` varchar(5000) NOT NULL, PRIMARY KEY (`id`)");
        } catch (Exception $e) {
            // Error
        }

        $settings_data = [
            'darkMode' => 0,
            'colorsStyle' => 0,
            'primaryColor' => '#dc3545',
            'navbarColor' => '#000000',
            'footerColor' => '#000000',
            'outlineColor' => '#000000',
            'navbarType' => 0,
            'navbarStyle' => 0,
            'discordView' => 1,
            'discordID' => 1002478941111599144,
            'minecraftView' => 1,
            'minecraftDomain' => 'play.cubedcraft.com',
            'minecraftIP' => 'play.cubedcraft.com',
            'minecraftPort' => 25565,
            'cardt' => 'Portfolio',
            'cardw' => 'https://cxstudios.xyz/exampleproject',
            'card1t' => 'My Project',
            'card1w' => 'https://cxstudios.xyz/exampleproject',
            'card1v' => 'https://i.imgur.com/nvWYgJY.png',
            'card1h' => 'https://i.imgur.com/9nZfJ0c.png',
            'card2t' => 'My Project',
            'card2w' => 'https://cxstudios.xyz/exampleproject',
            'card2v' => 'https://i.imgur.com/nvWYgJY.png',
            'card2h' => 'https://i.imgur.com/9nZfJ0c.png',
            'card3t' => 'My Project',
            'card3w' => 'https://cxstudios.xyz/exampleproject',
            'card3v' => 'https://i.imgur.com/nvWYgJY.png',
            'card3h' => 'https://i.imgur.com/9nZfJ0c.png',
            'card4t' => 'My Project',
            'card4w' => 'https://cxstudios.xyz/exampleproject',
            'card4v' => 'https://i.imgur.com/nvWYgJY.png',
            'card4h' => 'https://i.imgur.com/9nZfJ0c.png',
            'socialLink1' => 'https://www.youtube.com/@crteam',
            'socialLink2' => 'https://discord.gg/creativmap',
            'socialLink3' => 'https://twitter.com/cxstudios1',
            'socialLink4' => 'https://facebook.com/',
            'customCSS' => '',
            'footerAbout' => 'Our community has been around for many years and pride ourselves on offering unbiased, critical discussion among people of all different backgrounds. We are working every day to make sure our community is one of the best.',
            'footerStyle' => 0,
            'customCSS' => '',
            'customJS' => '',
            'Keywords' => ''
        ];

        foreach ($settings_data as $key => $value) {
            try {
                DB::getInstance()->insert('aurora_settings', [
                    'name' => $key,
                    'value' => $value,
                ]);
            } catch (Exception $e) {
                // Error
            }
        }
    }
}
