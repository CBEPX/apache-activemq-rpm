printf "Starting postinstall process for ${service}\n"

/bin/tar -xf ${rpmInstallLocation}/apache-activemq-${project.version}-bin.tar.gz --directory=${rpmInstallLocation}

/sbin/chkconfig --add ${service}

# Start the service
/sbin/service ${service} start

# Outputs a status
/sbin/service ${service} status