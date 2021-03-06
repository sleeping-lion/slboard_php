<section id="sl_board_guest_book_index">	
	<article class="table-responsive">
		<table class="table table-striped" border="0" cellpadding="0" cellspacing="0">
			<colgroup>
				<col />
				<col />
				<col />				
				<col />
				<col />
			</colgroup>
			<thead>
				<tr>
					<th class="sl_t_id"><?php echo get_order_link(_('label_id'),'id',$clean['order'],$clean['desc']) ?></th>
					<th class="sl_t_name"><?php echo get_order_link(_('label_name'),'name',$clean['order'],$clean['desc']) ?></th>						
					<th class="sl_t_title"><?php echo get_order_link(_('label_title'),'title',$clean['order'],$clean['desc']) ?></th>
					<th class="sl_t_count"><?php echo get_order_link(_('label_count'),'count',$clean['order'],$clean['desc']) ?></th>
					<th class="sl_t_created_at"><?php echo get_order_link(_('label_created_at'),'created',$clean['order'],$clean['desc']) ?></th>
				</tr>
			</thead>
			<tbody>
				<?php if($data['total']): ?>
				<?php foreach($data['list'] as $index=>$value): ?>
				<tr <?php if($clean['id'] == $value['id']): ?>class="selected"<?php endif ?>>
					<td class="sl_t_id"><?php echo $value['id'] ?></td>
					<td class="sl_t_name"><?php echo $value['name'] ?></td>
					<td class="sl_t_title">
						<a href="<?php echo show_link($value['id']) ?>"><?php echo $value['title'] ?>
						<?php if($value['guest_book_comments_count']): ?>
						[<?php echo $value['guest_book_comments_count'] ?>]
						<?php endif ?>
						</a>
					</td>
					<td class="sl_t_count"><?php echo $value['count'] ?></td>
					<td class="sl_t_created_at"><?php echo get_format_date($value['created_at']) ?></td>
				</tr>
				<?php endforeach ?>
				<?php else: ?>
				<tr>
					<td colspan="4" class="no_data"><?php echo _('no_data') ?></td>
				</tr>
				<?php endif ?>
			</tbody>
		</table>
	</article>
	<div id="sl_index_bottom_menu">
		<?php echo pagination($data['total']) ?>
		<a href="new.php" class="btn btn-default btn btn-default col-xs-12 col-md-2"><?php echo _('new_link') ?></a>
		<?php require_once find_html($sl_theme,'search.php') ?>
	</div>
</section>
