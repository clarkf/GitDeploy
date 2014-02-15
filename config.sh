GD_GIT_EXEC=`which git`

## APACHE CONFIG

if [ -d "/var/log/httpd" ]; then
  # Centos style
  GD_APACHE_LOGROOT=/var/log/httpd
else
  # Debian style
  GD_APACHE_LOGROOT=/var/log/apache2
fi

if [ -d "/etc/httpd" ]; then
  # Centos style
  GD_APACHE_SITEROOT=/etc/httpd/sites
  GD_APACHE_SERVICENAME=httpd
else
  GD_APACHE_SITEROOT=/etc/apache2/sites-available
  GD_APACHE_SITELINKS=/etc/apache2/sites-enabled
  GD_APACHE_SERVICENAME=apache2
fi

GD_DEFAULT_DOCUMENTROOT=/var/www

GD_DEBUG=0

GD_HOSTNAME=$HOSTNAME
