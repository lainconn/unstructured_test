FROM base-image

WORKDIR /app

COPY . .

RUN pip install --break-system-packages "unstructured[all-docs]" \
    && apt-get install -y --no-install-recommends \
    

