# Odoo Setup  

This repository contains the necessary files to set up and run Odoo 18 in a Dockerized environment. Follow the instructions below to install and run the project.  

## Prerequisites  

Ensure you have the following installed:  

- Docker  
- Docker Compose  

## Installation  

1. **Clone or download this repository:**  
   ```sh  
   git clone <repo-url>  
   cd odoo-setup  
   ```  

2. **Build and start the Odoo container:**  
   ```sh  
   docker-compose up -d  
   ```  

3. **Access Odoo in your browser:**  
   Open `http://localhost:8069` in your web browser.  

## Configuration  

- Default Odoo port: `8069`  
- PostgreSQL port: `5432`  
- Database: `odoo`  
- User: `odoo`  
- Password: `odoo`  

## Common Issues & Fixes  

- **Port 8069 is already in use:**  
  Run `sudo netstat -tulnp | grep 8069` to check which process is using it. Either stop that process or change Odoo's port in `docker-compose.yml`.  

- **Database connection error:**  
  Make sure PostgreSQL is running inside the container:  
  ```sh  
  docker ps  
  ```  
  If it's not running, restart the database container:  
  ```sh  
  docker-compose restart odoo-db  
  ```  

## Stopping the Containers  

To stop Odoo and PostgreSQL, run:  
```sh  
docker-compose down  
```  

## License  

This project is licensed under the MIT License.  
