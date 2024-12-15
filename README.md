# vaigu-aio

### Overview

The `vaigu-aio` project is a unified repository that integrates various components of an otserver ecosystem.

### Installation

1. Clone the Repository:
    ```bash
    git clone git@github.com:vaigu-com/vaigu-aio.git
    ```
1. Open in VSCode (or any IDE with devcontainers support, however instructions in this README will only showcase VSCode)
1. Press `Reopen in container` in a pop up notification (right bottom corner)
1. Wait until the image build completes

### Running locally

**otserver**
```bash
# within devcontainer
./start_otserver.sh
```

**canaryaac**
```bash
# within devcontainer
./start_aac.sh
```

**otclient**
```bash
# within devcontainer
./start_otclient.sh
# then follow on-screen instructions
```

**login-server**

TODO: within devcontainer 

```bash
# from host
cd login-server
go run src/main.go
```


