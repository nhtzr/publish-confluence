FROM python:3.5

USER root

RUN pip install \
  Sphinx==2.4.4 \
  sphinxcontrib-confluencebuilder \
  recommonmark \
  mistune==0.8.4 \
  m2r2

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
