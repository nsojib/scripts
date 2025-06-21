
```bash
#!/bin/bash
sudo chmod 666 /dev/dri/renderD128
sudo chmod 666 /dev/dri/card0
sudo usermod -aG video $USER
```


```bash
sudo nano /etc/udev/rules.d/99-dri.rules

KERNEL=="renderD128", GROUP="video", MODE="0666"
KERNEL=="card0", GROUP="video", MODE="0666"
```

```bash
sudo udevadm control --reload-rules
sudo reboot
```


-------------
 fatal error: GL/osmesa.h: No such file or directory
    1 | #include <GL/osmesa.h>

conda install --yes -c conda-forge libosmesa

conda install -c conda-forge glew
conda install -c conda-forge mesalib
conda install -c menpo glfw3



### Dataloader killed (e.g. in diffusion policy)
* RuntimeError: DataLoader worker (pid 3068127) is killed by signal: Aborted. 

Put the following at the beginning of the training script.
```
import multiprocessing as mp
mp.set_start_method("spawn", force=True)
```

