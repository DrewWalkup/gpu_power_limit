# Limit Nvidia GPU Power Consumption

Basic setup to limit nvidia gpu power consumption on startup for multi-gpu systems running linux.

1. Place the files:

```bash
mv gpu-power-limit.sh /usr/local/bin/
mv gpu-power-limit.service /etc/systemd/system/
```

2. Make it executable:
   chmod +x /usr/local/bin/gpu-power-limit.sh

3. Adjust ownership:

```bash
sudo chown root:root /usr/local/bin/gpu-power-limit.sh
sudo chmod 755 /usr/local/bin/gpu-power-limit.sh
sudo chown root:root /etc/systemd/system/gpu-power-limit.service
sudo chmod 644 /etc/systemd/system/gpu-power-limit.service
```

4. Enable and start the service:
   sudo systemctl enable gpu-power-limit
   sudo systemctl start gpu-power-limit

# License

MIT License
