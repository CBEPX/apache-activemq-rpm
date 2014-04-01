printf "Starting preremove process for ${service}\n"

# Remove last version of package 
if [ "$1" = 0 ] ; then 
    
    # Outputs a status
	if [ -e /etc/init.d/${service} ]; then
	  /sbin/service ${service} status
	
	  # Stop the service to make sure we aren't leaving a corrupted system.
	  /sbin/service ${service} stop
	
	  /sbin/chkconfig --del ${service}
	fi
	
fi