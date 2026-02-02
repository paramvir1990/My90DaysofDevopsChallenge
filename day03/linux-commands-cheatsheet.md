Commands for Linux

    Navigating and related to files
        1. pwd --> it shows the present working directory
        2. ls --> list all files in current directory
        3. touch filename --> creates a file
        4. mkdir --> create directory
        5. cat filename --> show contents of file
        6. vim filename --> create file if not exists and then allow to edit and save file
        7. cd path ---> change directoy to path mentioned

    Networking
        8. ping google.com --> test if given server is reachable or not
        9. ip addr --> shows ip address
        10. netstat -tuln --> shows all listening ports
        
    Package management
        11. sudo apt update --> refresh the list of available softwares
        12. sudo apt install git --> istalls GIT software
        13. sudo apt remove git --> removes GIT software

    Owner/Permissions
        14. chmod 755 file.sh --> set read,write,execute for owner    read,execute for everyone else
        15. chown user:group file --> change the owner of file
        16. useradd newuser --> created a new user

    ssh commands
        17. ssh user@123.45.67.89 --> login to server
        18. ssh-keygen --> generate a key pair
        
    Process Management
        19. top --> list all the processes running
        20. kill PID --> kill the process with given PID