# jekyll-docker
> 해당 이미지는 Ubuntu 위에서 Jekyll 실행시키고 싶은 경우 사용할 수 있습니다.

## Docker Image 빌드
```bash
$ docker build -t yejun614/jekyll:test .
```

## 사용법
```bash
# jekyll 사이트가 있는 폴더로 이동
cd project_jekyll

# 일반적인 경우 다음과 같이 실행
$ docker run --name jekyll -d -p 4000:4000 -v .:/jekyll yejun614/jekyll:0.1

# 원하는 명령이 있는 경우 다음과 같이 실행
$ docker run --name jekyll -d -p 4000:4000 -v .:/jekyll yejun614/jekyll:0.1 jekyll serve --watch --host 0.0.0.0
```
