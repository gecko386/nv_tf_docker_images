FROM nvcr.io/nvidia/tensorflow:20.10-tf2-py3
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install tzdata
RUN apt install -y libgl1-mesa-glx spyder3
RUN python3 -m pip install --upgrade pip
RUN pip3 install opencv-python 
RUN pip3 install sklearn
RUN pip3 install scikit-image
RUN pip3 install imlib
RUN pip3 install matplotlib
CMD /bin/bash
