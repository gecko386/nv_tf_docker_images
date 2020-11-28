FROM nvcr.io/nvidia/cuda:11.1-devel-ubuntu18.04
RUN apt update
RUN apt install -y wget
RUN apt install -y libgtk-3-0 libwebkitgtk-3.0-0
RUN apt install -y cuda-toolkit-11-1
RUN wget http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/technology/epp/downloads/release/2020-09/R/eclipse-parallel-2020-09-R-linux-gtk-x86_64.tar.gz
RUN mv eclipse-parallel-2020-09-R-linux-gtk-x86_64.tar.gz /root/eclipse-parallel-2020-09-R-linux-gtk-x86_64.tar.gz
RUN tar -xvzf /root/eclipse-parallel-2020-09-R-linux-gtk-x86_64.tar.gz -C /root/
RUN /usr/local/cuda/bin/nsight_ee_plugins_manage.sh install /root/eclipse
CMD [ "/root/eclipse/eclipse"]
