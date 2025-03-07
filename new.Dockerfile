FROM base-image

WORKDIR /app

COPY . .

RUN pip install --break-system-packages "unstructured[all-docs]" \
    && apt-get install -y --no-install-recommends \
    libmagic-dev \
    poppler-utils \
    tesseract-ocr \
    qpdf \
    libreoffice \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

