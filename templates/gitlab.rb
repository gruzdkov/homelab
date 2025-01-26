external_url 'https://gitlab.{{ homelab_private_host }}'
gitlab_rails['gitlab_shell_ssh_port'] = 2424
letsencrypt['enable'] = false
nginx['listen_port'] = 80
nginx['listen_https'] = false

gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = 'mailcatcher_main'
gitlab_rails['smtp_port'] = 1025
gitlab_rails['smtp_domain'] = 'maincatcher_main'
gitlab_rails['smtp_tls'] = false
gitlab_rails['smtp_openssl_verify_mode'] = 'none'
gitlab_rails['smtp_enable_starttls_auto'] = false
gitlab_rails['smtp_ssl'] = false
gitlab_rails['smtp_force_ssl'] = false


gitlab_rails['gitlab_email_from'] = 'robot@gitlab.{{ homelab_private_host }}'
gitlab_rails['gitlab_email_reply_to'] = 'noreply@gitlab.{{ homelab_private_host }}'

puma['worker_processes'] = 1
sidekiq['concurrency'] = 5

prometheus_monitoring['enable'] = false

gitlab_rails['env'] = {
  'MALLOC_CONF' => 'dirty_decay_ms:1000,muzzy_decay_ms:1000'
}

gitaly['env'] = {
  'MALLOC_CONF' => 'dirty_decay_ms:1000,muzzy_decay_ms:1000'
}
