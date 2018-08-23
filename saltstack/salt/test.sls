create_config_file:
  file.managed:
    - name: /path/to/file
    - source: salt://test.j2
    - template: jinja
    - makedirs: true
    - show_changes: true
    - mode: 644
    - dir_mode: 755
