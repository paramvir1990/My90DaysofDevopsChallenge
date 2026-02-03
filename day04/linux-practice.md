Day 04 – Linux Practice: Processes and Services

    1. ps aux
        it showed all the process ID's running in system 
        including PID 1 i.e. 
        USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
        root           1  1.2  1.4  22500 13808 ?        Ss   07:47   0:01 /sbin/init

    2. top 
       it showed the same output in interactive mode. 

    3. systemctl status

            Systemd is a modern system and service manager for Linux that serves as the core initialization process (PID It controls system startup, manages background services, and ensures efficient system operation.

            Starts automatically as the first process when the Linux kernel boots.
            Manages all other processes during system runtime.
            Uses parallelization to launch multiple services simultaneously, speeding up boot time.
            Organizes system components into “units” such as services, sockets, devices, mounts, and timers.
            Controlled via the systemctl command-line tool (start, stop, enable, disable, and check services).
            Example: Starting and Stopping a System Service in Linux:
            Syntax:

            systemctl start [service_name]
            systemctl stop [service_name]
            systemctl status [service_name]


            ip-172-31-41-164
            State: running
            Units: 413 loaded (incl. loaded aliases)
            Jobs: 0 queued
            Failed: 0 units
            Since: Tue 2026-02-03 07:47:24 UTC; 6min ago
            systemd: 255.4-1ubuntu8.11
            CGroup: /
                    ├─init.scope
                    │ └─1 /sbin/init
                    ├─system.slice
                    │ ├─ModemManager.service
                    │ │ └─806 /usr/sbin/ModemManager
                    │ ├─acpid.service
                    │ │ └─595 /usr/sbin/acpid
                    │ ├─chrony.service
                    │ │ ├─696 /usr/sbin/chronyd -F 1
                    │ │ └─707 /usr/sbin/chronyd -F 1
                    │ ├─cron.service
                    │ │ └─599 /usr/sbin/cron -f -P
                    │ ├─dbus.service
                    │ │ └─600 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
                    │ ├─irqbalance.service
                    │ │ └─605 /usr/sbin/irqbalance
                    │ ├─multipathd.service
                    │ │ └─189 /sbin/multipathd -d -s
                    │ ├─networkd-dispatcher.service
                    │ │ └─607 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
                    │ ├─polkit.service
                    │ │ └─609 /usr/lib/polkit-1/polkitd --no-debug
                    │ ├─rsyslog.service
                    │ │ └─681 /usr/sbin/rsyslogd -n -iNONE
                    │ ├─snap.amazon-ssm-agent.amazon-ssm-agent.service
                    │ │ └─973 /snap/amazon-ssm-agent/11797/amazon-ssm-agent
                    │ ├─snapd.service
                    │ │ └─615 /usr/lib/snapd/snapd
                    │ ├─ssh.service

    4. systemctl start nginx
       systemctl status nginx
            nginx.service - A high performance web server and a reverse proxy server
            Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
            Active: active (running) since Tue 2026-02-03 08:00:00 UTC; 3s ago
            Docs: man:nginx(8)
            Process: 1580 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
            Process: 1584 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
            Main PID: 1585 (nginx)
            Tasks: 3 (limit: 1008)
            Memory: 2.3M (peak: 2.5M)
                CPU: 42ms
            CGroup: /system.slice/nginx.service
                    ├─1585 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
                    ├─1586 "nginx: worker process"
                    └─1587 "nginx: worker process"

    5. systemctl stop nginx
       systemctl status nginx
            nginx.service - A high performance web server and a reverse proxy server
            Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
            Active: inactive (dead) since Tue 2026-02-03 07:59:41 UTC; 5s ago
            Duration: 1min 29.101s
            Docs: man:nginx(8)
            Process: 1440 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
            Process: 1442 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
            Process: 1569 ExecStop=/sbin/start-stop-daemon --quiet --stop --retry QUIT/5 --pidfile /run/nginx.pid (code=exited, status=0>
            Main PID: 1473 (code=exited, status=0/SUCCESS)
                CPU: 29ms

    6. journalctl -u nginx
            Feb 03 07:58:11 ip-172-31-41-164 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
            Feb 03 07:58:11 ip-172-31-41-164 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
            Feb 03 07:59:41 ip-172-31-41-164 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...
            Feb 03 07:59:41 ip-172-31-41-164 systemd[1]: nginx.service: Deactivated successfully.
            Feb 03 07:59:41 ip-172-31-41-164 systemd[1]: Stopped nginx.service - A high performance web server and a reverse proxy server.
            Feb 03 08:00:00 ip-172-31-41-164 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
            Feb 03 08:00:00 ip-172-31-41-164 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.


            journalctl is a Linux command used to view and manage system logs maintained by the systemd-journald service. It provides a centralized and efficient way to access and analyze log data.

                Displays system, service, and kernel logs in a structured format.
                Helps in monitoring and troubleshooting system issues.
                Stores logs in a binary format for better performance and querying.
                Commonly used in systemd-based distributions like Ubuntu, Debian, and Kali Linux.

    7. pgrep nginx
         it showed PID's associated with nginx



    
