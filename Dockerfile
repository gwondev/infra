FROM caddy:alpine

# Caddy 설정 파일 복사
COPY Caddyfile /etc/caddy/Caddyfile

# HTML 페이지 복사
COPY pages/ /pages/


# 기본 포트 노출 (HTTP, HTTPS)
EXPOSE 80
EXPOSE 443

