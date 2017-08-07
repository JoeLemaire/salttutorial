install_apache:
  pkg.installed:
    - pkgs:
      - httpd

index.html:
  file.managed:
    - name: /var/www/html/index.html
    - user: apache 
    - group: apache
    - mode: 644
    - source: salt://apapche/templates/index.html

apache_service:
  service.running:
    - name: httpd
    - enabled: true