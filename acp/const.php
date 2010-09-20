<?php
/*
 * This file is part of Litotex | Open Source Browsergame Engine.
 *
 * Litotex is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Litotex is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Litotex.  If not, see <http://www.gnu.org/licenses/>.
 */
if(!defined('LITO_ROOT'))
	define('LITO_ROOT', '/home/jonas/Dokumente/PHP/Litotex8/acp/');
if(!defined('LITO_URL'))
	define('LITO_URL', 'http://localhost/Litotex8/acp/');
if(!defined('DATABASE_CONFIG_FILE'))
	define('DATABASE_CONFIG_FILE', LITO_ROOT . '../packages/core/config/database.conf.php');
if(!defined('HOOK_CACHE'))
	define('HOOK_CACHE', LITO_ROOT . '../packages/core/cache/acp_hook_cache.php');
if(!defined('PACKAGE_CACHE'))
	define('PACKAGE_CACHE', LITO_ROOT . '../packages/core/cache/acp_dependency_cache.php');
if(!defined('TPLMOD_CACHE'))
	define('TPLMOD_CACHE', LITO_ROOT . '../packages/core/cache/acp_tpl_modification_cache.php');