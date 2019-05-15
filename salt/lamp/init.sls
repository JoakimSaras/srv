install_lamp:
  pkg.installed: 
    - pkgs:
      - apache2
      - libapache2-mod-php
      - mariadb-server
      - mariadb-client

/var/www/html/index.php:
  file.managed:
    - source: salt://lamp/webserver/index.php
    - require:
      - pkg: install_lamp

/etc/apache2/mods-enabled/userdir.conf:
  file.symlink:
    - target: ../mods-available/userdir.load
    
apache2service:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/userdir.conf
  
