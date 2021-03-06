<cfquery name="myBlog" datasource="learncfinaweek">
	SELECT
		title,
		summary,
		datePosted
	FROM
		post
</cfquery>
<cfimport taglib="customTags/" prefix="layout" />
<layout:page section="blog">  		
<!-- Content Start -->

<!--Card  -->
<div id="content">
	<div class="card-pattern">
		<!-- blog -->
		<div id="blog">
			<div class="clr">
				<div class="top-bg1">
					<div class="top-left">
						<div><h1>Blog</h1></div>
					</div> 
				</div>
				<div class="clr">
					<div class="pat-bottomleft">&nbsp;</div>
					<div class="pat-bottomright">&nbsp;</div>
				</div>
			</div>
			<div class="blog-top">	
				<div class="clr">
					<div class="left">
						<!-- Blog Posts -->
						<cfoutput query="myBlog">
							<!-- Start Blog Post -->
							<h5>
								<span>#dateFormat(myBlog.datePosted,"mm/dd/yyyy")# </span>
							</h5>
							<h2>
								<a href="blogpost.cfm?id=">#myBlog.title#</a>
							</h2>
							<p>#myBlog.summary#</p>
							<p class="summary">
								<strong>Categories:</strong> ColdFusion <strong>Comments:</strong> 12
							</p>
							<!-- End Blog Post -->
						</cfoutput>
					</div>
					<div class="right" >
						<h2>Categories</h2>
						<!-- Blog Categories -->
						<div id="categories" align="center">
							<ul>
								<li><a href="#">ColdFusion</a></li>
								<li><a href="#">Development</a></li>
								<li><a href="#">HTML5</a></li>
								<li><a href="#">Javascript</a></li>
								<li><a href="#">jQuery</a></li>
								<li><a href="#">Misc</a></li>
								<li><a href="#">Video Games</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="clr"></div>
		</div> <!--blog end -->
</layout:page>