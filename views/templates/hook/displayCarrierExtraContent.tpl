{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    EnvoiMoinsCher <api@boxtal.com>
 * @copyright 2007-2017 PrestaShop SA / 2011-2016 EnvoiMoinsCher
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * International Registred Trademark & Property of PrestaShop SA
 *}

<script id="emc-points-{$id_carrier}" data-points="{$points}" data-remove="{$remove}" type="text/javascript" >
    Emc_points = JSON.parse(document.getElementById("emc-points-{$id_carrier}").getAttribute("data-points"));
    Emc_remove = JSON.parse(document.getElementById("emc-points-{$id_carrier}").getAttribute("data-remove"));
    Emc_defaultPoint = "{$point|escape:'htmlall':'UTF-8'}";
    Emc_country = "{$country|escape:'htmlall':'UTF-8'}";
    Emc_zip = "{$zip|escape:'htmlall':'UTF-8'}";
    Emc_city = "{$city|escape:'htmlall':'UTF-8'}";
    Emc_dateDelivery = [];
	{foreach from=$delivery key=id_carrier item=del}
        Emc_dateDelivery[{$id_carrier}] = "{$del|escape:'htmlall':'UTF-8'}".replace("-","/");
	{/foreach}

    if (typeof Emc != "undefined") {
        console.log("init");
        $("document").ready(Emc.init);
    }
</script>