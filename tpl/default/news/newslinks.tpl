<h3>{#news#}</h3>
<table width="100%">
{foreach from=$news item=item}
<tr>
<td><a href="{make_link package=news action=showComments id=$item->getID()}">{$item->getTitle()}</a></td>
<td>{$item->getFormatedDate()}</td>
</tr>
{/foreach}
</table>