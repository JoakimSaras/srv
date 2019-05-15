install_lamp:
  pkg.installed: 
    - pkgs:
      - apache2
      - libapache2-mod-php
      - mariadb-server
      - mariadb-client

/var/www/html/index.html:
  file.managed:
    - source: salt://lamp/index.html

/etc/apache2/mods-enabled/userdir.conf:
  file.symlink:
    - target: ../mods-available/userdir.load
    
apache2:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/userdir.conf
      - file: /etc/apache2/mods-enabled/userdir.load
  
/tmp/dbfile.sql:
  file.managed:
    - mode: 600
    - source: salt://lamp/newdatabase.sql
