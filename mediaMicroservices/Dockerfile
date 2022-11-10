FROM yg397/thrift-microservice-deps:xenial

COPY ./ /media-microservices
#ENV LUA_PATH="/usr/share/lua/5.1/?.lua;/usr/share/lua/5.2/?.lua"
#RUN apt-get -y update
#RUN apt-get -y install apt-utils luarocks
#RUN luarocks install bit32
#RUN luarocks install luaposix
#RUN apt-get -y install lua-posix lua-posix-dev
RUN cd /media-microservices \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make \
    && make install

WORKDIR /media-microservices
