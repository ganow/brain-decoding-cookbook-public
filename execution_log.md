Execution log (2023/04/19)
===

## Environments

- CPU: Intel(R) Xeon(R) Gold 6246R CPU @ 3.40GHz x32
- GPU: Quadro RTX 8000
    - Host driver version: 510.108.03
    - Host CUDA version: 11.6
- Docker version 20.10.21, build baeda1f
    - Image: built from `./Dockerfile`
    - Base image: `pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime`
- Python packages
    - `brain-decoding-cookbook-public`: main branch ([58325f1](https://github.com/KamitaniLab/brain-decoding-cookbook-public/commit/58325f1ccd42ba47c5d23f412b7ec9b55f5398f1))
    - `bdpy == 0.19`
    - `pandas == 1.3.5`
    - Other packages: automatically resolved by `pip` default behavior


## How to reproduce

Prior to the following, prepare all the datasets by executing `download.sh` inside `reconstruction/data` and `reconstruction/models`.

```bash
$ # in host machine
$ docker compose build app
$ docker compose run -d app python recon_icnn_image_vgg19_dgn_relu7gen_gd.py config/recon_icnn_vgg19_dgn_relu7gen_gd_1000iter_decoded_deeprecon_originals.yaml
```

After executing the above command, see `reconstruction/data/reconstruction/icnn/vgg19_dgn_relu7gen_gd_1000iter_pytorch/decoded/deeprecon_originals/sub-01/VC/recon_image_normalized-n01621127_19020.tiff`.