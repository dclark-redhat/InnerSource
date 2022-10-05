FROM python:3

RUN pip install mkdocs
RUN mkdocs new InnerSource

EXPOSE 8000

WORKDIR /Innersource

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
