FROM caddy:alpine

# Caddy 설정 파일 복사
COPY Caddyfile /etc/caddy/Caddyfile

# HTML 페이지 복사
COPY pages/ /pages/

# 권한 설정
RUN chown -R caddy:caddy /pages

# 기본 포트 노출 (HTTP, HTTPS)
EXPOSE 80
EXPOSE 443

# 헬스체크 추가
HEALTHCHECK --interval=30s --timeout=3s \
    CMD wget --no-verbose --tries=1 --spider http://localhost:80/ || exit 1
