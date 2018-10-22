FROM python:3.6

RUN apt update && \
    apt install -y git && \
    pip install requests && \
    git clone --depth=1 https://github.com/smartsdk/entities-simulator.git && \
    mkdir /src && \
    cp -a ./entities-simulator/README.md /src/ && \
    cp -a ./entities-simulator/*.py /src/ && \
    rm -fr ./entities-simulator && \
    apt purge -y git && \
    apt clean


WORKDIR /src

ENTRYPOINT ["python"]
CMD ["entities_simulator.py"]
