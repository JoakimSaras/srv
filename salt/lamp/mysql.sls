install_mariadb-server:
  pkg.installed
  
mariadb-client:
  pkg.installed
  
/tmp/dbfile.sql:
  file.managed:
    - mode: 600
    - source: salt://lamp/newdatabase.sql
