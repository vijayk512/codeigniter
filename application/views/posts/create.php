<h2><?php echo $title; ?></h2>
<?php echo validation_errors(); ?>
<?php echo form_open_multipart('posts/create'); ?>
<div class="form-group">
    <label >Title</label>
    <input type="text" class="form-control" placeholder="Add Title" name="title">
</div>
<div class="form-group">
    <label >Body</label>
    <textarea type="text" class="form-control" name="body" placeholder="Add Body" id="bodytag"></textarea>
</div>

<div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
        <option value="">Select Category</option>
        <?php foreach ($categories as $cateogry):
            ?>
            <option value="<?php echo $cateogry['id'] ?>"><?php echo $cateogry['name']; ?></option>
        <?php endforeach; ?>
    </select>
</div>
<div class="form-group">
    <label>Upload Image</label>
    <input type="file" name="userfile" size="20">
</div>
<button type="submit" class="btn btn-default">Submit</button>
</form>