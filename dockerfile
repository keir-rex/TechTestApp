FROM scratch

COPY dist/assets /assets
COPY dist/conf.toml /conf.toml
COPY dist/TechTestApp /TechTestApp

CMD ["./TechTestApp", "serve"]