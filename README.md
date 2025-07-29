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
    branch = master
[submodule "algs/rsl_rl"]
	path = algs/rsl_rl
	url = git@github.com:interval-package/rsl_rl.git
	branch = master
[submodule "algs/RoboWorld"]
	path = algs/RoboWorld
	url = git@github.com:interval-package/RoboWorld.git
    branch = master
[submodule "factoryIsaac"]
	path = factoryIsaac
	url = git@github.com:interval-package/factoryIsaac.git
    branch = master
[submodule "tasks/robot_mars"]
	path = tasks/robot_mars
	url = git@github.com:interval-package/robot_mars.git
    branch = master
[submodule "algs/robo_offline"]
	path = algs/robo_offline
	url = git@github.com:interval-package/robo_offline.git
    branch = master
[submodule "tasks/dyna_terrain"]
	path = tasks/dyna_terrain
	url = git@github.com:interval-package/dyna_terrain.git
    branch = master
[submodule "algs/relaxIsaac"]
	path = algs/relaxIsaac
	url = git@github.com:interval-package/relaxIsaac.git

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
git clone https://github.com/interval-package/labBundle.git
cd labBundle
bash scripts/setup/init_bundle.sh
```

Clone single submodule:
```bash
# Frist time clone
git submodule update --init path/to/submodule

# Update for new
git submodule update --remote path/to/submodule

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

Maintained by **Ziang Zheng** | Built on IsaacLab 🌐

## Citations

```
@inproceedings{zheng2025transferable,
  title={Transferable Latent-to-Latent Locomotion Policy for Efficient and Versatile Motion Control of Diverse Legged Robots},
  author={Zheng, Ziang and Zhan, Guojian and Shuai, Bin and Qin, Shengtao and Li, Jiangtao and Zhang, Tao and Li, Shengbo Eben},
  journal={2025 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  year={2025}
}

@article{zheng2025jump,
  title={Jump-Start Reinforcement Learning with Self-Evolving Priors for Extreme Monopedal Locomotion},
  author={Zheng, Ziang and Zhan, Guojian and Liu, Shiqi and Lyu, Yao and Zhang, Tao and Li, Shengbo Eben},
  journal={arXiv preprint arXiv:2507.01243},
  year={2025}
}
```
