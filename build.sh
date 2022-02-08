#!/bin/bash
#. ../env.sh

#mipsel-openwrt-linux-musl-uclibc-g++
mipsel-openwrt-linux-g++ -I ./include -I /work/gm813x-develop/app-repo/zkt-sdk/include/ -DRCF_USE_BOOST_ASIO -fPIC -shared -D__arm__ ./src/RCF/RCF.cpp  -o libRCF.so
#$CXX ./src/RCF/RCF.cpp -I ./include -I /work/gm813x-develop/app-repo/zkt-sdk/include/ -DRCF_USE_BOOST_ASIO -Wno-deprecated -fPIC -shared -o libRCF.so
#arm-linux-g++ ./src/RCF/RCF.cpp -I ./include -I /work/gm813x-develop/app-repo/zkt-sdk/include/ -DRCF_USE_BOOST_ASIO -Wno-deprecated -fPIC -shared -o libRCF.so

#mipsel-openwrt-linux-uclibc-g++ ./src/RCF/RCF.cpp -I ./include -I ../boost_1_68_0/build/  -D__arm__ -Wno-deprecated -fPIC -shared -o libRCF.so

#mipsel-openwrt-linux-uclibc-g++ ./src/RCF/RCF.cpp -I/path/to/boost_1_49_0 -I/path/to/RCF/include -lpthread -ldl -o Server
