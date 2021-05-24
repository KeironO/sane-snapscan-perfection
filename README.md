# sane-snapscan-perfection

Helper script and instructions to install firmware binaries for old Epson Perfection scanners.

## Installation Steps

### 0. Install dependencies:

This obviously requires sane, install it and then install:

For Debian/Ubuntu:

```bash
sudo apt install cabextract libarchive-tools
```

For Fedora:

```
sudo dnf install cabextract bsdtar
```

### 1. Clone this repository:

```bash
git clone https://github.com/KeironO/sane-snapscan-perfection
```

### 2. Navigate into the directory

```bash
cd sane-snapscan-perfection
```

### 3. Run the helper script

```bash
bash extract.sh
```

### 4. Copy the firmware to the relevant folder.

```bash
sudo cp output/*.bin /usr/share/sane/snapscan/
```

### 5. Add the relevant binary to snapscan.conf.

```bash
sudo vim /etc/sane.d/snapscan.conf
```

And add:

- Epson Perfection 1670: `firmware /usr/share/sane/snapscan/esfw30.bin`
- Epson Perfection 2450/2480/2580: `firmware /usr/share/sane/snapscan/esfw41.bin`
- Epson Perfection 3490/3950: `firmware /usr/share/sane/snapscan/esfw52.bin`

### 6. Disable the epson/epson2/epkowa driver.

```bash
sudo vim /etc/sane.d/dll.conf
```

And comment out:

```
epson
epson2
epkowa
```

### 7. Scan your stuff.