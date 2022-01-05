[![build-resume](https://github.com/midrissi/resume/actions/workflows/build-resume.yml/badge.svg)](https://github.com/midrissi/resume/actions/workflows/build-resume.yml)

Geneate the resume using `docker`:

```bash
docker build . -t resume
docker run -v `pwd`:/opt/cv:rw resume
```
