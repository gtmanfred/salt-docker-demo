#  cat minion-created.sls 
#remove keys:
#  runner.manage.down:
#    - removekeys: True

startup-orchestration:
  runner.state.orchestrate:
    - mods: deploy
    - pillar:
        id: {{ data['post']['name'] }}
