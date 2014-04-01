printf "Starting preinstall process for ${service}\n"
    
# We want the log to be fresh on each install, so if an old log existed, rename it before install.
if [ -e ${rpmInstallLocation}/data/wrapper.log ]; then
    LOGDATE=$(date -d "today" +"%Y%m%d%H%M")
    printf "Relocating old log file from ${rpmInstallLocation}/data/wrapper.log to "
    printf "${rpmInstallLocation}/data/wrapper.log.$LOGDATE\n"
    mv ${rpmInstallLocation}/data/wrapper.log \
        ${rpmInstallLocation}/data/wrapper.log.$LOGDATE
fi

exit 0