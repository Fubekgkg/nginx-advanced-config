# nginx-advanced-config

This project provides a production-ready Nginx configuration with:
1. Reverse Proxy & Load Balancing – Distributes traffic between multiple backend servers
2. SSL/TLS with Let’s Encrypt – Secure connections with automatic certificate renewal
3. Caching for Static Files – Speeds up delivery of images, CSS, and JS files
4. Rate Limiting for API Protection – Prevents abuse and DDoS attacks


installation
1. Clone the repository:
    git clone https://github.com/Fubekgkg/nginx-advanced-config.git
    cd nginx-advanced-config
   
2️. Run the setup script:
bash
    bash setup/install_nginx.sh

3️. Adjust the nginx.conf file and restart Nginx:
bash
    sudo systemctl restart nginx
