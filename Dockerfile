FROM ubuntu:22.04

USER root
RUN echo 'root:111111' | chpasswd

RUN apt-get update -y
RUN apt-get install gcc libpq-dev vim -y
RUN apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y
RUN apt-get install python3.10 python3-pip python3-venv python3-wheel -y
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
RUN pip3 install numpy==1.21.5 scikit-learn==1.0.2 pandas==1.3.5 tensorboardX==2.5.1 sentencepiece==0.1.96 requests==2.28.0 boto3==1.24.9 overrides==6.1.0 tensorboard==2.10.1 transformers==4.28.1 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip3 install openai langchain faiss-cpu pypdf google-search-results

RUN pip3 install jupyter
RUN pip3 install thriftpy2
RUN pip3 install cython thriftpy2
