

/tmp/{{ salt['pillar.get']('demofile:filename')}}_{{ saltenv }}.txt:
  file.managed:
    - source: salt://demofile/templates/template.jinja
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        custom_var: "default value"
        server_role: {{ salt['pillar.get']('server_role') }}