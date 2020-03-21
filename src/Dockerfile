FROM nginx:alpine as base
EXPOSE 80


FROM python:alpine as build

RUN pip install mkdocs && pip install mkdocs-material && pip install pymdown-extensions && pip install markdown-include

COPY mkdocs.yml .
COPY docs ./docs/

RUN mkdocs build -q



FROM base AS final
WORKDIR /usr/share/nginx/html
COPY --from=build /site .