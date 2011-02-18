<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{generateTplModification position=left}
{generateTplModification position=right}
{generateTplModification position=top}
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$TITLE}{if isset($PAGE_TITLE)} {$PAGE_TITLE}{/if}</title>
{foreach from=$CSS_FILES item=CSS_FILE}
	<link rel="stylesheet" type="text/css" href="{$CSS_FILE}">
{/foreach}
<script type="text/javascript" src="{$CORE_JS_URL}jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{$CORE_JS_URL}jquery-ui-1.8.6.custom.min.js"></script>
{foreach from=$JS_FILES item=JS_FILE}
	<script type="text/javascript" src="{$JS_FILE}"></script>
{/foreach}
<link href="{$CORE_CSS_URL}jquery-ui-1.8.6.custom.css" rel="stylesheet" type="text/css" />
<link href="{$CORE_CSS_URL}formate_reset.css" rel="stylesheet" type="text/css" />
<link href="{$CORE_CSS_URL}formate.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 8]>
<link href="{$CORE_CSS_URL}formate_ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>

<body>

<div id="wrapper">
	<div id="header"></div>
    <div id="navi_top">
    	<ul>
        	<li><a href="#" class="active">Home</a></li>
            <li><a href="#">Registrieren</a></li>
            <li><a href="#">Kennwort vergessen</a></li>
            <li><a href="#">Impressum</a></li>
        </ul>
    </div>
	<div id="subnavi">
    	<ul>
			<li><a href="#">Haus</a></li>
			<li><a href="#">Karte</a></li>
			<li><a href="#">Test</a></li>
			<li><a href="#">Freunde</a></li>
			<li><a href="#">...</a></li>
		</ul>
    </div>
    <div class="both"></div>
    <div id="main">
    	<div id="left">
 &nbsp;
