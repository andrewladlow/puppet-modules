# Installing NRPE check_dummy command

nrpe::command { 'check_dummy':
  command => 'check_dummy 0',
}
