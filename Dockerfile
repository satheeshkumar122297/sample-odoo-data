FROM odoo:18

USER root

# Install extra dependencies if needed (optional)
# RUN apt-get update && apt-get install -y python3-pip

COPY ./custom-addons /mnt/extra-addons

RUN chown -R odoo:odoo /mnt/extra-addons \
    && chmod -R 755 /mnt/extra-addons

USER odoo
