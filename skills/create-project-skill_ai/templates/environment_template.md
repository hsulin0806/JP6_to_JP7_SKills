# {{project_name}} Environment Fingerprint

## Hardware

- Device Model: {{hardware_model}}
- CPU: {{cpu}}
- GPU / NPU / Accelerator: {{accelerator}}
- Memory: {{memory}}
- Camera Model: {{camera_model}}

---

## System and Platform

- OS Version: {{os_version}}
- JetPack / L4T: {{jetpack_or_l4t}}
- Kernel: {{kernel_version}}
- Architecture: {{architecture}}

---

## Runtime Stack

- CUDA: {{cuda_version}}
- TensorRT: {{tensorrt_version}}
- cuDNN: {{cudnn_version}}
- Python: {{python_version}}
- Other Important Packages: {{other_runtime_packages}}

---

## Container Information

- Docker: {{docker_version}}
- NVIDIA Container Toolkit: {{nvidia_container_toolkit_version}}
- Image Tag: {{image_tag}}
- Base Image: {{base_image}}

---

## Project and Model Information

- Project Slug: {{project_slug}}
- Git Commit Hash: {{git_commit_hash}}
- Model Cache Location: {{model_cache_location}}
- Other Mount Points: {{other_mount_points}}

---

## Test Assets

- Test MP4: {{mp4_test_file}}
- MP4 Specification: {{mp4_spec}}
- Camera Source: {{camera_source}}

---

## Constraints

{{environment_constraints}}

---

## Maintenance Rules

- This file must be updated whenever the environment changes
- Important runtime differences must also be checked against `VALIDATION_RULES.md`
- If a new environment invalidates an old conclusion, it must also be recorded in `CORRECTIONS.md`
