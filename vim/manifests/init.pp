class vim (

  $default_editor = true,
 
) {

  include vim::install
  include vim::config

}

