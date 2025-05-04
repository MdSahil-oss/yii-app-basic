# Neccessary file paths

- **Ansible configs**: `ansible/` (includes Inverntory & Playbooks)
- **Nginx config**: `ansible/files/default.conf`
- **Docker configs**: `Dockerfile`, `docker-compose.yml`
- **Github Actions**: `.github/workflows/deploy.yml`

# Setup instruction

## Install Dependencies

```bash
RUN composer update --prefer-dist
RUN composer install
```

## Set proper permissions

```bash
RUN chown -R www-data:www-data /app \
    && chmod -R 755 /app/runtime /app/web/assets
```

Or use directly docker-compose file and execute below command.

```bash
docker compose up
```

# Visit latest deployed application

To test Deployment Visit here: http://140.245.241.35/

If don't want to use Nginx proxy directly want to access application using docker port-forwarded port visit here: http://140.245.241.35:8080/
