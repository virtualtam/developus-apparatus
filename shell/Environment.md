# Shell - Environment variables
## Usage
### Overriding
```bash
# force Git to use English messages
$ LANG=en_GB.UTF-8 git

# override Java Look & Feel options
$ export_JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
$ java -jar minecraft.jar
```

## Location
### Global
```bash
/etc/environment
```

### Session
```bash
/etc/profile
/etc/profile.d/*.sh
~/.profile
```

### Bash
```bash
/etc/bash.bashrc
~/.bash_profile
~/.bashrc
```

### Superusers
```bash
/etc/login.defs
/etc/sudoers          # use visudo to edit
```

### SSH
```bash
/etc/ssh/sshd_config  # server-side, can allow the client to pass variables
/etc/ssh/ssh_config   # client-side, can send variables to servers
```

### SaltStack
```bash
/etc/default/salt-minion (not always included in the distro's packages)
```
