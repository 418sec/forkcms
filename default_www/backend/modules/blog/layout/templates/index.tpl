{include:file="{$BACKEND_CORE_PATH}/layout/templates/header.tpl"}
{include:file="{$BACKEND_CORE_PATH}/layout/templates/sidebar.tpl"}
		<td id="contentHolder">
			<div id="statusBar">
				<p class="breadcrumb">Blog &gt; {$msgHeaderIndex}</p>
			</div>

			{option:report}
			<div id="report">
				<div class="singleMessage successMessage">
					<p>{$reportMessage}</p>
				</div>
			</div>
			{/option:report}

			<div class="inner">
				{option:dgPosts}
				<form action="{$var|geturl:'mass_post_action'}" method="get" class="forkForms submitWithLink" id="posts">
					<input type="hidden" name="from" value="posts" />
					<div class="datagridHolder">
						<div class="tableHeading">	
							<h3>{$lblAllPosts|ucfirst}</h3>
							<div class="buttonHolderRight">
								<a href="{$var|geturl:'add'}" class="button icon iconAdd" title="{$lblAdd|ucfirst}">
									<span><span><span>{$lblAdd|ucfirst}</span></span></span>
								</a>
							</div>
						</div>
						{$dgPosts}
					</div>
				</form>
				{/option:dgPosts}
				{option:!dgPosts}
				<p>{$msgNoItems}</p>
			
				<div class="buttonHolder">
					<a class="button icon iconAdd" href="{$var|geturl:'add'}" title="{$lblAdd}"><span><span><span>{$lblAdd|ucfirst}</span></span></span></a>
				</div>
				{/option:!dgPosts}
			</div>
		</td>
	</tr>
</table>
{include:file="{$BACKEND_CORE_PATH}/layout/templates/footer.tpl"}