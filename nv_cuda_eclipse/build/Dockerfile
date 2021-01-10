FROM nv_cuda_devel
RUN apt install -y wget
RUN apt install -y libgtk-3-0 libwebkitgtk-3.0-0
RUN wget http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/technology/epp/downloads/release/2020-09/R/eclipse-parallel-2020-09-R-linux-gtk-x86_64.tar.gz
RUN tar -xvzf /eclipse-parallel-2020-09-R-linux-gtk-x86_64.tar.gz -C /
RUN /usr/local/cuda/bin/nsight_ee_plugins_manage.sh install /eclipse
CMD [ "/eclipse/eclipse","-configuration", "/tmp/eclipse_docker"]
