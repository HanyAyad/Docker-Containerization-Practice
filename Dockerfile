FROM node
ENV ME_CONFIG_MONGODB_SERVER="mongodb" \
    ME_CONFIG_MONGODB_ADMINUSERNAME="root" \
    ME_CONFIG_MONGODB_ADMINPASSWORD="root"
RUN mkdir -p /home/app

COPY ./app /home/app 

CMD [ "node","/home/app/server.js" ]
