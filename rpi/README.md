# Raspberry Pi

# Headless installation via Raspberry Pi Imager

- Hostname: <hostname> (e.g. pihole.local)
- Username: <username>

# Headless installation: Wi-fi config

*TL;DR* You can also use Raspberry Pi Imager (or similar) settings wizard.

Manually, it goes as follows... Assuming SD in `/Volumes/boot` (MacOs)

1. `touch /Volumes/boot/ssh`
2. In `/Volumes/boot/wpa_supplicant.conf`

```sh
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="NETWORK-NAME"
    psk="NETWORK-PASSWORD"
}
```

## Utilities

```sh
sudo apt-get install vim
```

## Samba in Raspberry Pi OS

*Use use caution, especially wrt 777 permissions*

```
sudo apt-get install samba samba-common-bin
sudo mkdir -m 1777 /share
```

In `/etc/samba/smb.conf`

```sh
[pishare]
Comment = Pi shared folder
Path = /share
Browseable = yes
Writeable = Yes
only guest = no
create mask = 0777
directory mask = 0777
Public = yes
Guest ok = yes
```

Then, `sudo smbpasswd -a pi` and `sudo /etc/init.d/smbd restart`

## 1pwd CLI (optional)

```sh
curl -sSO https://1password.downloads.com/linux/tar/stable/aarch64/1password-latest.tar.gz
sudo tar -xf 1password-latest.tar.gz
sudo mkdir -p /opt/1Password
sudo mv 1password-*/* /opt/1Password
sudo /opt/1Password/after-install.sh
```

