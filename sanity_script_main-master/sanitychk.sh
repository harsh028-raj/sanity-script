echo ================; echo =======uname========; uname -a;
echo =========df -h=====; df -h;
echo ==========ifconfig -a====; /sbin/ifconfig -a;
echo ==========route======; netstat -nr;
echo =========cat /etc/fstab===; cat /etc/fstab;
echo ===========cat /etc/exports=======; cat /etc/exports;
echo =========cat /etc/hosts=====; cat /etc/hosts;
echo ==========cat /etc/resolve.conf=====; cat /etc/resolv.conf;
echo ========cat /etc/sysctl.conf========; cat /etc/sysctl.conf;
echo =======ifcfg=========; cat /etc/sysconfig/network-scripts/ifcfg*;
echo ========= cat /etc/*release====; cat /etc/*release;
echo ============cat /proc/net/bonding/bond0=======; cat /proc/net/bonding/bond0;
echo ============cat /proc/net/bonding/bond1=======;cat /proc/net/bonding/bond1 ;
echo ============netbackup version=====; cat /usr/openv/netbackup/bin/version;
echo ============Kernel Configuration=========; /sbin/sysctl -a;
echo =============IPC Facilities===========; /usr/bin/ipcs -l;
echo ==========vxprint============; vxprint;
echo ==========vxdisk=========; vxdisk -o alldgs list;
echo ========hastatus==========; hastatus -summ;
echo =========GAB=========; gabconfig -a;
echo =========sanlun=========; /opt/netapp/santools/sanlun lun show all -p
echo ==========Low Latency Report=========; /sbin/lltstat -nvv;
echo ==========raid status=======; cat /var/log/raid.log | egrep -i 'fail|degra';
echo ==========Date=========; date;
echo ==========nfs==========; service nfslock status;
echo ==========limits.conf==========; cat /etc/security/limits.conf;
echo ==========vgs==========; vgs;
echo ==========pvs==========; pvs;
echo ==========lvs==========; lvs;
echo ==========vgdislpay=======; vgdisplay -v;
echo ==========pvdisplay=======; pvdisplay -v;
echo ==========lvdisplay=======; lvdisplay -v;
echo ==========fdisk===========; fdisk -l;
echo ==========multipath=======; multipath -ll;
echo ==========multipath.conf=======; cat /etc/multipath.conf;
echo ==========/dev/mapper==========; ls -l /dev/mapper;
echo ==========oracleasm listdisks=======; oracleasm listdisks;
echo ==========/etc/udevrules========; cat /etc/udev/rules.d/12-dm-permissions.rules;
echo ==========free=========; free -m;
echo ==========netbackup=======; cat /usr/openv/netbackup/bp.conf;
echo ==========passwd==========; cat /etc/passwd;
echo ==========shadow==========; cat /etc/shadow;
echo ==========group===========; cat /etc/group;
echo ==========Yum_log===========; cat /var/log/yum.log;
echo ==========Grub_Rhel6===========; cat /etc/grub.conf;
echo ==========Grub_Rhel7===========; cat /boot/grub2/grub.cfg;
echo ==========RPM===========; rpm -qa;
echo ==========CPU core information=====; nproc
echo ==========CPU information========;lscpu
echo ==========OS information========; cat /etc/redhat-release
echo ==========File system Root Utilization========; df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1
echo ==========Root system Root Utilization========; df -h /var | awk 'NR==2 {print $5}' | cut -d'%' -f1
echo ==========Ulimit for Oracle===========; runuser -l oracle -c 'ulimit -a';
echo ==========Sudoers file===========; cat /etc/sudoers';
echo ==========END=========;   " >> "$i.txt";done
