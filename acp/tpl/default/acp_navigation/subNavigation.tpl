{foreach from=$navigationItems item=parentNodes key=parentID}
    <div class="navi_top" id="navi_top{$parentID}"{if !$parentNodes.active} style="display:none"{/if}>
     <ul>
            {foreach from=$parentNodes item=item}
            {if is_array($item)}
            <li><a href="index.php?package={$item.package}&action={$item.action}{if $item.tab}#ui-tabs-{$item.tab}{/if}" onmouseover="show('um_{$item.ID}')" onmouseout="out('um_{$item.ID}')">{$item.title}</a>
                {if count($item.sub) != 0}
                <ul id="um_{$item.ID}">
                {foreach from=$item.sub item=subItem}
                    <li><a href="index.php?package={$subItem.package}&action={$subItem.action}{if $subItem.tab}#ui-tabs-{$subItem.tab}{/if}" onmouseover="show('um_{$item.ID}')"  onmouseout="out('um_{$item.ID}')">{$subItem.title}</a></li>
                {/foreach}
                </ul>
                {/if}
            </li>
            {/if}
            {/foreach}
        </ul>
    </div>
{/foreach}