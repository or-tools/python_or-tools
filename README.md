[![Build Status][docker_status]][docker_link]
[![Build Status][linux_status]][linux_link]
[![Build Status][macos_status]][macos_link]
[![Build Status][windows_status]][windows_link]

[docker_status]: https://github.com/or-tools/python_or-tools/actions/workflows/docker.yml/badge.svg
[docker_link]: https://github.com/or-tools/python_or-tools/actions/workflows/docker.yml
[linux_status]: https://github.com/or-tools/python_or-tools/actions/workflows/linux.yml/badge.svg
[linux_link]: https://github.com/or-tools/python_or-tools/actions/workflows/linux.yml
[macos_status]: https://github.com/or-tools/python_or-tools/actions/workflows/macos.yml/badge.svg
[macos_link]: https://github.com/or-tools/python_or-tools/actions/workflows/macos.yml
[windows_status]: https://github.com/or-tools/python_or-tools/actions/workflows/windows.yml/badge.svg
[windows_link]: https://github.com/or-tools/python_or-tools/actions/workflows/windows.yml

# Introduction
Sample project explaining how to use Google OR-Tools in a Python project.

# Install ortools

```sh
python3 -m pip install -U --user "ortools==9.5.*"
```

# Run

```sh
python3 basic_example.py
```

## Testing
You can test using the provided Dockerfile

```sh
docker build --tag=python_or-tools .
```

