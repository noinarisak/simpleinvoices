
		                <table class="left" width="100%">
		<!--
                <tr>
                        <td colspan="6"><br></td>
                </td>
		-->
                <tr class="tbl1 col1" >
                        <td class="tbl1 col1 tbl1-right" colspan="6"><b>{$LANG.description}</b></td>
                </tr>

	
	{foreach from=$master_invoices item=master_invoice}

			                <tr class="tbl1-left tbl1-right">
                        <td class="tbl1-left tbl1-right\" colspan=6>{$master_invoice.inv_it_description}</td>
                </tr>
                <tr class="tbl1-left tbl1-right">
                        <td colspan=6 class="tbl1-left tbl1-right"><br></td>
                </tr>

	{/foreach}
         
	
	<tr class="tbl1-left tbl1-right">
		<td class="tbl1-left tbl1-right" colspan="6" ><br></td>
	</tr>
	

	<tr class="tbl1-left tbl1-right">
		<td class="tbl1-left" colspan="3"></td>
		<td align="right" colspan="2">{$LANG.gross_total}</td>
		<td align="right" class="tbl1-right" >{$pref.pref_currency_sign}{$master_invoice.inv_it_gross_total}</td>
	</tr>