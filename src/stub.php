<?php
Phar::mapPhar('myproject.phar');
spl_autoload_register(function ($className) {
  $libPath = 'phar://myproject.phar/';
  $classFile = str_replace('\\',DIRECTORY_SEPARATOR,$className).'.php';
  $classPath = $libPath.$classFile;
  if (file_exists($classPath)) {
    require($classPath);
  }
});
__HALT_COMPILER();