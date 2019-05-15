install_apache2:
  pkg.installed 

libapache2-mod-php:
  pkg.installed

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
      
 /home/Boksi/public_html:
   file.recurse:
     - source: salt://lamp/public_html
     - include_empty: True
     
     
 install_mariadb-server:
  pkg.installed
  
mariadb-client:
  pkg.installed
  
/tmp/dbfile.sql:
  file.managed:
    - mode: 600
    - source: salt://lamp/newdatabase.sql
