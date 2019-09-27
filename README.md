# docker-irstlm

This Dockerfile builds the [irstlm github repository](https://github.com/irstlm-team/irstlm) and delivers the binaries in the resulting image.

## Run irstlm tools

To run irstlm-tools, you have to start the container in interactive mode. All binaries are installied in `/opt/irstlm/bin/`.

```bash
$ docker run -i  clupeidae/irstlm:latest /opt/irstlm/bin/build-lm.sh -i input.txt -n 3 -o input.3.irstlm.gz -k 10
...
```
