FROM python:3.9

WORKDIR /app

COPY word_frequency.py /app/word_frequency.py
COPY paragraphs.txt /app/paragraphs.txt


RUN pip install nltk  && \
    python -m nltk.downloader punkt stopwords

CMD ["python", "word_frequency.py"]
