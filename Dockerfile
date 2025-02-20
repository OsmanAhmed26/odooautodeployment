FROM odoo:18

COPY ./config/odoo.conf /etc/odoo/odoo.conf

RUN pip3 install --no-cache-dir some_extra_package

RUN chown -R odoo:odoo /etc/odoo/odoo.conf

USER odoo
CMD ["odoo"]
