<aside>
	<nav>
		<ul class="nav nav-pills nav-stacked">
			<li <?php if(!strcmp($config['controller'],'intro')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/intro"><?php echo _('intro') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
			<li <?php if(!strcmp($config['controller'],'contact')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/contacts/new.php"><?php echo _('contact') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
			<li <?php if(!strcmp($config['controller'],'blog')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/blogs"><?php echo _('blog') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>			
			<li <?php if(!strcmp($config['controller'],'gallery')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/galleries"><?php echo _('gallery') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
			<li <?php if(!strcmp($config['controller'],'question')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/questions"><?php echo _('question') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
			<li <?php if(!strcmp($config['controller'],'faq')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/faqs"><?php echo _('faq') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
			<li <?php if(!strcmp($config['controller'],'notice')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/notices"><?php echo _('notice') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
			<li <?php if(!strcmp($config['controller'],'guest_book')): ?><?php echo 'class="active"' ?><?php endif ?>><a href="/admin/boards/guest_books"><?php echo _('guest_book') ?><span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span></a></li>
		</ul>
	</nav>
</aside>