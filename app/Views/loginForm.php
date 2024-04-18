<?php

echo $this->extend('layout/layout');

echo $this ->section('content');


echo form_open('login-complete');?>

<div class="col-4 offset-2">
<?php
  if($message != NULL) {
    echo "<div class=\"bg-danger\">".$message."</div>";
  }
?>
  
<div class='form-floating mb-3 mt-3'>
  <input type='text' class='form-control' id='email' placeholder='Enter email' name='email'>
  <label for='email'>Email</label>
</div>

<div class='form-floating mt-3 mb-3'>
  <input type='password' class='form-control' id='pwd' placeholder='Enter password' name='pswd'>
  <label for='pwd'>Password</label>
</div>
<button type="submit" class="btn btn-dark">Přihlásit</button>
</div>

</form>


<?= $this->endsection(); ?>