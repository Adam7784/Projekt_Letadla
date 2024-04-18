<?php

echo $this->extend('layout/layout');

echo $this ->section('content');

echo form_open('registrace-complete');?>

<div class="col-4 offset-2">
<div class='form-floating mb-3 mt-3'>
  <input type='text' class='form-control' id='first_name' placeholder='Enter name' name='first_name'>
  <label for='first_name'>Jméno</label>
</div>

<div class='form-floating mb-3 mt-3'>
  <input type='text' class='form-control' id='last_name' placeholder='Enter name' name='last_name'>
  <label for='last_name'>Příjmení</label>
</div>

<div class='form-floating mb-3 mt-3'>
  <input type='text' class='form-control' id='username' placeholder='Enter name' name='username'>
  <label for='username'>Uživatelské jméno</label>
</div>

<div class='form-floating mb-3 mt-3'>
  <input type='text' class='form-control' id='email' placeholder='Enter email' name='email'>
  <label for='email'>Email</label>
</div>

<div class='form-floating mt-3 mb-3'>
  <input type='password' class='form-control' id='pwd' placeholder='Enter password' name='pswd'>
  <label for='pwd'>Password</label>
</div>

<div class='form-floating mt-3 mb-3'>
  <input type='password' class='form-control' id='pwd' placeholder='Password again' name='pswd_again'>
  <label for='pwd'>Password again</label>
</div>
<button type="submit" class="btn btn-dark">Registrovat</button>
</div>

</form>


</div>
<?= $this->endsection(); ?>