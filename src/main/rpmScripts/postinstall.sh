# printf "Starting postinstall process for ${service}\n"

/sbin/chkconfig --add ${service} >/dev/null 2>&1

# Start the service
/sbin/service ${service} start >/dev/null 2>&1

# Outputs a status
# /sbin/service ${service} status