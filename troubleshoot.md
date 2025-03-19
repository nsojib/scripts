
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


