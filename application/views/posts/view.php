<h2><?php echo $post['0']['title']; ?></h2>

<small class="post-date">Posted on : <?php echo $post['0']['created_at']; ?> in <strong><?php echo $post['0']['name']; ?></strong></small>
<img class="thumbnails" src="<?php echo site_url(); ?>/assets/images/posts/<?php echo $post['0']['image'] ?>" width="350px">
<div class="post-body">
    <?php echo $post['0']['body']; ?>
</div>
<hr>

<a class="btn btn-default pull-left" href="<?php echo site_url() . 'posts/edit/' . $post[0]['slug']; ?>">Edit</a> 
<?php echo form_open('posts/delete/' . $post[0]['id']); ?>
<input type="submit" value="Delete" class="btn btn-danger">
<?php echo form_close(); ?>
