# LabBundle in one repo !

One repo to enable your full research with good quality opensource repos on isaacLab !!!

## Repos

Repo organization is shown as follow:

```
[submodule "tasks/trackerLab"]
	path = tasks/trackerLab
	url = git@github.com:interval-package/trackerLab.git
[submodule "algs/rsl_rl"]
	path = algs/rsl_rl
	url = git@github.com:interval-package/rsl_rl.git
	branch = master
[submodule "algs/RoboWorld"]
	path = algs/RoboWorld
	url = git@github.com:interval-package/RoboWorld.git
[submodule "factoryIsaac"]
	path = factoryIsaac
	url = https://github.com/interval-package/factoryIsaac.git
```

- factoryIsaac
    - the repo for cfg factory and some basic tasks
- tasks
    - trackerLab
- algs
    - rsl_rl
    - RoboWorld

## install

For detailed repos please check the `.gitmodules` which will show you the detail repo url.

For download all your repos:
```
git submodule update --remote --recursive
```