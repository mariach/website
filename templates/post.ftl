<#include "header.ftl">
<#include "menu.ftl">
	
    <!-- Body -->
	<div class="wrapper"> <!-- wrapper -->
	  <div class="container">
	    <div class="row">
		  <div class="col-sm-8">
			<div class="blg-summary">
			  <h3><a href="#"><#escape x as x?xml>${content.title}</#escape></a></h3>
			  <ul class="text-muted list-inline blg-header">
				<li><i class="fa fa-user"></i> ${content.author}</li>
				<li><i class="fa fa-calendar"></i> ${content.date?string("dd MMMM yyyy")}</li>
				<!--<li><i class="fa fa-comments-o"></i> 21 comments</li> -->
			  </ul>
			  <hr>
			  <div class="blg-text">
              ${content.body}  
			  </div>
			  
			  <p class="tags">
                <#list content.tags as x >
				<a href="/tags/${x}.html" class="background-color bg-hover-color">${x}</a>
				</#list>
			  </p>

			</div>
			<!-- COMMENTS -->
			<div class="comments">
			  <!--<h4>3 comments</h4>-->
			  
			    <div id="disqus_thread"></div>
                <script type="text/javascript">
                    if( window.location.hostname == 'localhost' || window.location.hostname == '127.0.0.1' ) { throw new Error('Skip Disqus on localhost') };
                    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
                    var disqus_shortname = 'nextflow'; // required: replace example with your forum shortname

                    /* * * DON'T EDIT BELOW THIS LINE * * */
                    (function() {
                        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                    })();
                </script>
                <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
    
			</div>
			 
			<!-- // Comments -->
		  </div>
		  <div class="col-sm-4">
			<h3>Stay Tuned <small>Social Links</small></h3>
			<hr>
			<ul class="blg-social">
			  <li>
			    <a href="/feed.xml">
			      <span class="icon rss">
				    <i class="fa fa-rss fa-2x"></i>
				  </span>
				  <span class="text-muted">Subscribe to our RSS Feed.</span>
				</a>
			  </li>
			  <li>
			    <a href="https://twitter.com/nextflowio">
			      <span class="icon twitter">
				    <i class="fa fa-twitter fa-2x"></i>
				  </span>
				  <span class="text-muted">Subscribe to our Twitter Feed.</span>
				</a>
			  </li>
			</ul>
            <!--
			<h3>Popular Stories</h3>
			<hr>
			<div class="block-inverse">
			  <ul>
				<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
				<li><a href="#">Nullam id ipsum varius, tincidunt odio nec, placerat.</a></li>
				<li><a href="#">Sed sit amet auctor augue, nec dignissim ligula.</a></li>
				<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
				<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
			  </ul>
			</div>			
            -->
		  </div>
		</div>
	  </div>
	</div> <!-- / wrapper -->

	
<#include "footer.ftl">