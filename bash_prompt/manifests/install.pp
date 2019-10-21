class bash_prompt::install {
  package { 'bash-completion':
    ensure  => latest,
  }
}
