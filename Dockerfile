FROM nvcr.io/nvidia/tritonserver:22.09-py3

COPY requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --extra-index-url https://download.pytorch.org/whl/cu116 \
    -r /app/requirements.txt
