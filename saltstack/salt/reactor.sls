send_start_message:
  caller.test.echo:
    - fun: saltutil.cmd
    - tgt: "*"
    - args:
      - arg:
        - hello there
