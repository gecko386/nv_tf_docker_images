# CARLA devel environment docker

FROM adamrehn/ue4-runtime:18.04-cudagl11.1-virtualgl

# Arguments for building 
ARG unreal_user
ARG unreal_pass
ARG carla_branch=master

ARG USER=docker
ARG UID=1000
ARG GID=1000
# default password for user
ARG PW=docker

#delete ue4 previous user
USER root
RUN userdel ue4
# setting user
RUN useradd -m ${USER} --uid=${UID} && \
      usermod -a -G audio,video ${USER} && \
      echo "${USER}:${PW}" | \
      chpasswd
RUN mkdir -p /home/${USER} && \
    chown -R ${USER}:${USER} /home/${USER} 

# Environment variales
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
ENV DEBIAN_FRONTEND=noninteractive
ENV UE4_ROOT=/carla_sim/UnrealEngine
ENV CARLA_ROOT=/carla_sim/carla
    
#Dependencies
RUN apt update && \
    apt -y upgrade && \
    apt install -y --no-install-recommends cmake git wget aria2 software-properties-common build-essential clang-8 lld-8 g++-7 cmake ninja-build libvulkan1 python python-pip python-dev python3-dev python3-pip libpng-dev libtiff5-dev libjpeg-dev tzdata sed curl unzip autoconf libtool rsync libxml2-dev less && \
    pip2 install setuptools && pip3 install -Iv setuptools==47.3.1 && \
    pip2 install distro && pip3 install distro && \
    pip2 install requests && pip3 install requests && \
    update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-8/bin/clang++ 180 && \
    update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-8/bin/clang 180
    
#give sudo privileges to user inside container
RUN apt-get update && apt-get install -y sudo && \
    adduser ${USER} sudo    

#Folders
RUN mkdir -p ${CARLA_ROOT} && chown -R ${USER}:${USER} ${CARLA_ROOT} && \
    mkdir -p ${UE4_ROOT} && chown -R ${USER}:${USER} ${UE4_ROOT}

# Install UnrealEngine
USER ${UID}:${GID}

RUN git clone --depth=1 -b 4.24 https://$(python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.argv[1]))' "$unreal_user"):$(python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.argv[1]))' "$unreal_pass")@github.com/EpicGames/UnrealEngine.git ${UE4_ROOT}

WORKDIR ${UE4_ROOT}
RUN wget https://carla-releases.s3.eu-west-3.amazonaws.com/Linux/UE_Patch/430667-13636743-patch.txt && \
    patch --strip=4 < 430667-13636743-patch.txt && \
    ./Setup.sh && \
    ./GenerateProjectFiles.sh && \
    make

# Install CARLA
RUN git clone -b ${carla_branch} https://github.com/carla-simulator/carla.git ${CARLA_ROOT}

WORKDIR ${CARLA_ROOT}
RUN ./Update.sh
RUN make PythonAPI
RUN make LibCarla

# Ports to be used
EXPOSE 2000
EXPOSE 2001
EXPOSE 2002

CMD "/bin/bash"
