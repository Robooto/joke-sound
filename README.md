# joke-sound
Web Audio is fun

[blog about audio elements](https://robooto.github.io/2020/11/06/audio-html5.html)

## Running the app
```bash
docker build -t joke-sound .
```

```bash
docker run -it -d --restart unless-stopped -p 8080:80 joke-sound
```

http://localhost:8080/index.html

## Container security updates

Rebuild with `docker build --pull --no-cache -t joke-sound .` to refresh both the Nginx base and Debian security packages. The image build fails unless the Debian 13 Brotli fix for CVE-2026-111497 is installed (`libbrotli1 >= 1.1.0-2+deb13u1`). Rebuilding does not replace an already-running container; validate the candidate and recreate that service separately, preserving its deployment settings.

GitHub Actions builds the image and checks Nginx configuration and the served index page.
