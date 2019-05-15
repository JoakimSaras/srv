install_lamp:
  pkg.installed: 
    - pkgs:
      - apache2
      - libapache2-mod-php
      - mariadb-server
      - mariadb-client

/var/www/html/index.php:
  file.managed:
    - source: salt://webserver/index.php
    - require:
      - pkg: install_lamp
    
apache2service:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/userdir.conf
  
