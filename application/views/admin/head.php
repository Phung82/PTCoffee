<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PT Coffee</title>

<link href="<?php echo public_url('admin/'); ?>css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="public/upload/head.png"/>
<link href="<?php echo public_url('admin/'); ?>css/datepicker3.css" rel="stylesheet">
<link href="<?php echo public_url('admin/'); ?>css/styles.css" rel="stylesheet">
<script src="<?php echo public_url(); ?>js/jquery-3.1.1.js" type="text/javascript"></script>
<script src="<?php echo public_url(); ?>js/jquery.js" type="text/javascript"></script>


<script type="text/javascript">
$(function () {  
	$("#datepicker").datepicker({         
	autoclose: true,         
	todayHighlight: true 
	}).datepicker('update', new Date());
	});
</script>

<script type="text/javascript">
$(function () {  
	$("#datepicker2").datepicker({         
	autoclose: true,         
	todayHighlight: true 
	}).datepicker('update', new Date());
	});
</script>
<link rel="stylesheet prefetch" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css"><script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

<!--Icons-->
<script src="<?php echo public_url('admin/'); ?>js/lumino.glyphs.js"></script>
<script src="<?php echo public_url(); ?>js/ckeditor/ckeditor.js"></script>