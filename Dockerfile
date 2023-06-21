FROM registry.access.redhat.com/ubi8:8.5 as build

RUN  dnf module install --nodocs -y nodejs:14 python39 python3-pip --setopt=install_weak_deps=0 --disableplugin=subscription-manager \
    && dnf install --nodocs -y make gcc gcc-c++  --setopt=install_weak_deps=0 --disableplugin=subscription-manager \
    && dnf remove -y pam.i686 \
    && dnf update -y pam.x86_64 \
    && dnf install --nodocs -y pam.i686 --setopt=install_weak_deps=0 --disableplugin=subscription-manager\
    && dnf clean all --disableplugin=subscription-manager
    
RUN mkdir -p /opt/app-root/src
WORKDIR /opt/app-root/src
COPY package.json /opt/app-root/src
RUN npm install --no-audit --no-update-notifier --no-fund --production
COPY . .

## Release image
# FROM registry.access.redhat.com/ubi8/nodejs-14-minimal:1
FROM build

COPY --from=build /opt/app-root/src /opt/app-root/src/

WORKDIR /opt/app-root/src
    
ENV NODE_ENV=production
ENV PORT 3000
EXPOSE 3000

CMD ["npm", "start"]
