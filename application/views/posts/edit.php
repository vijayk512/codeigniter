<h2><?php echo $title; ?></h2>
<?php
echo validation_errors();
//print_r($post[0]);
?>
<?php echo form_open('posts/update'); ?>
<div class="form-group">
    <label >Title</label>
    <input type="text" class="form-control" placeholder="Add Title" name="title" value="<?php echo $post[0]['title']; ?>">
</div>
<div class="form-group">
    <label >Body</label>
    <textarea type="text" class="form-control" name="body" id="bodytag" placeholder="Add Body"><?php echo $post[0]['body']; ?></textarea>
</div>
<div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
        <option value="">Select Category</option>
        <?php foreach ($categories as $cateogry):
            ?>
            <option value="<?php echo $cateogry['id'] ?>" <?php if ($cateogry['id'] === $post[0]['category_id']) { ?> selected <?php } ?> > <?php echo $cateogry['name'] ?></option>
<?php endforeach; ?>
    </select>
</div>
<input type="hidden" name="id" value="<?php echo $post[0]['id']; ?>" >
<button type="submit" class="btn btn-default">Submit</button>
<?php echo form_close(); ?>