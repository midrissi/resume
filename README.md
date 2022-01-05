[![build-resume][build-resume-badge]][build-resume]
[![cv-en.min.pdf][download-cv-en-badge]][download-cv-en]

Geneate the resume using `docker`:

```bash
docker build . -t resume
docker run -v `pwd`:/opt/cv:rw resume
```

[build-resume]: ../../actions/workflows/build-resume.yml
[build-resume-badge]: ../../actions/workflows/build-resume.yml/badge.svg
[download-cv-en]: ../../releases/latest/download/cv-en.min.pdf
[download-cv-en-badge]: https://shields.io/badge/style-download-green?logo=adobeacrobatreader&style=flat&label=cv-en.min.pdf&color=30c452&labelColor=3e464f
