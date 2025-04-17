FROM python:3.8-slim

LABEL "com.github.actions.name"="Secret Scan"
LABEL "com.github.actions.description"="Scan for secrets in code"
LABEL "com.github.actions.icon"="lock"
LABEL "com.github.actions.color"="red"

RUN pip install truffleHog

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
