FROM wernight/ngrok

COPY smartweb-entrypoint.sh /

ENTRYPOINT ["/smartweb-entrypoint.sh"]
