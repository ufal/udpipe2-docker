# syntax=docker/dockerfile:1

FROM alpine AS builder
RUN apk update && \
	apk add --no-cache git
RUN	git clone https://github.com/vidiecan/wembedding_service.git -b preload_only

FROM tensorflow/tensorflow:2.3.1-gpu
WORKDIR /wembedding_service
COPY --from=builder /wembedding_service .
RUN pip install --no-cache-dir -r requirements.txt
RUN python start_wembeddings_server.py 8000 --preload_models=bert-base-multilingual-uncased-last4 --preload_only

EXPOSE 8000
ENTRYPOINT ["python", "start_wembeddings_server.py", "8000"]