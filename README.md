# LabBundle: Research Infrastructure in One Repo 🎯

A unified monorepo for organizing high-quality research infrastructure based on [Isaac Lab](https://github.com/NVIDIA-Omniverse/IsaacLab), tailored for the **idLab Robotics Team**.  
This repository integrates essential submodules for tasks, algorithms, and environment factories.

---

## 📂 Repository Structure

The repository is organized as follows, with submodules structured into functional domains:

```ini
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
	url = git@github.com:interval-package/factoryIsaac.git

[submodule "tasks/robot_mars"]
	path = tasks/robot_mars
	url = git@github.com:interval-package/robot_mars.git
```

### 🏗️ Component Overview

* `factoryIsaac`
  Configuration factory and foundational components for task/environment construction.

* `tasks/`

  * `trackerLab`: Learning-based tracking tasks.
  * `robot_mars`: Mars environment for mobile robot applications.

* `algs/`

  * `rsl_rl`: High-performance reinforcement learning baseline from RSL.
  * `RoboWorld`: General policy learning and robot modeling library.

---

## 🚀 Getting Started

### Clone with Submodules

To properly initialize and fetch all integrated submodules, use:

```bash
git clone --recurse-submodules <this_repo_url>
cd <repo_name>
```

### Update Submodules

To ensure all submodules are up to date with their upstream repositories:

```bash
git submodule update --remote --recursive

git submodule update --remote

git submodule update --init --recursive --remote
```

## 📘 Notes

* All submodules are listed in `.gitmodules`.
  You can refer to it directly to check URLs and paths for individual components.

* This repo is designed to **bundle reusable research components** across robotics projects.
  Feel free to fork and extend it for your own work.

---

Maintained by **idLab Robotics** | Built on IsaacLab 🌐
