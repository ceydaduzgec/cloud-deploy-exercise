# pyeditorial

A free, open-source Blog CMS based on the "Django" and "Editorial" HTML5 theme.

Deployed on [AWS] without HTTPS (ec2-51-20-142-135.eu-north-1.compute.amazonaws.com)

![](https://img.shields.io/github/stars/mavenium/pyeditorial)
[![](https://img.shields.io/github/forks/mavenium/pyeditorial)](https://github.com/mavenium/pyeditorial/fork)
[![](https://img.shields.io/github/issues/mavenium/pyeditorial)](https://github.com/mavenium/pyeditorial/issues)
![](https://img.shields.io/twitter/url?url=https%3A%2F%2Fgithub.com%2Fmavenium%2Fpyeditorial)

More about the project can be found on the [Wiki page](https://github.com/ceydaduzgec/dev-environment-setup/wiki/).

------------

## How to install and run (GNU/Linux and Mac) with Docker

1. Make sure that you have [git](https://git-scm.com/downloads) and [bash](https://www.gnu.org/software/bash/) installed.
On Ubuntu, you can install them by using these commands:

```bash
sudo apt update -y && sudo apt install -y git bash
```

2. Create a development environment ready by using these commands

```bash
git clone https://github.com/ceydaduzgec/dev-environment-setup.git
```

3. Run one of the following commands depending on your OS to start the project

```bash
bash tools/start-macos.sh
sudo bash tools/start-linux.sh
```

4. Go to  `http://127.0.0.1:80/` or just type `localhost` in your browser to use project

------------

- [Notes](https://github.com/ceydaduzgec/dev-environment-setup/blob/master/docs/notes.md)
- [Linting](https://github.com/ceydaduzgec/dev-environment-setup/blob/master/docs/linting.md)
