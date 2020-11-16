FROM nvcr.io/nvidia/tensorflow:20.10-tf2-py3
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN python3 -m pip install --upgrade pip
RUN pip3 install opencv-python 
RUN pip3 install sklearn
RUN pip3 install scikit-image
RUN pip3 install imlib
RUN pip3 install matplotlib
RUN pip3 install jupyter
RUN pip3 install notebook
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]
