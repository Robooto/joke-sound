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
