{%- set host = salt.pillar.get('id', '') %}

{%- if salt['match.pcre']('minion1', host) %}
deploy:
  salt.state:
    - tgt: '*'
    - highstate: True
    - queue: True
{%- endif %}


{%- if salt['match.pcre']('minion1', host) %}
sleep:
  salt.state:
    - tgt: '*'
    - sls:
        - sleep
    - queue: True
{%- endif %}
