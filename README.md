Overview
========

A playground for MVSCE.

Instructions
============

* Start MVSCE (first time - requires podman)
    * 
    ```podman run --platform linux/amd64 -d \
  --name=mvsce \      
  -e HUSER=docker \
  -e HPASS=docker \
  -p 2121:21 \
  -p 2323:23 \
  -p 3270:3270 \
  -p 3505:3505 \
  -p 3506:3506 \
  -p 8888:8888 \
  -v ./:/config \
  -v ./printers:/printers \
  -v ./punchcards:/punchcards \
  -v ./logs:/logs \
  -v ./dasd:/dasd \
  -v ./certs:/certs \
  --restart unless-stopped \
  mainframed767/mvsce
    ```
* if you did it already `podman run mvsce`
* Submit JCL to MVSCE (requires netcat)
    * `nc localhost 3505 < jcl/hello_basic.jcl`
