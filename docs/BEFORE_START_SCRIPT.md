# Run a script before the vm

In case you need to run a command on the host after the vm start, you can use the before_start.sh script.

To use it, you need to create a script called before_start.sh inside your cloud-init profile, here's the basic structure.

```bash
#!/bin/bash

function init_before_start(){
  echo "Nothing to do"
}
```

# CAUTION

All commands need to start in the function init_before_start, always use this function as the begin of your script
