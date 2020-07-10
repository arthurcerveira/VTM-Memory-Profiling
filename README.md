# VTM Memory Profiling

Memory profiling for the VVC Test Model

## Instructions

### Setup

The tools needed to run these scripts are Python (>= 3.6), [Vtune Profiling Tool](https://software.intel.com/content/www/us/en/develop/tools/vtune-profiler.html) and git.

### Running the container

First you need to clone the repository to your local machine

```bash
$ git clone https://github.com/arthurcerveira/VTM-Memory-Profiling.git
```

You must build VTM. You can do this by following the instruction in `vtm-mem/README.md` or running `./setup.sh`.

Then you'll need to create a `video_sequences` directory to store the videos (.yuv).

```bash
$ cd VTM-Memory-Profiling
$ mkdir video_sequences
```

To make sure Vtune will work properly, you must verify if the vtune-vars path set on `Custom-Simulator/custom_simulator.py` is correct, as this path may vary according to your OS. This is the default value:

```python
SOURCE_AMPLXE = "source /opt/intel/vtune_profiler_2020/vtune-vars.sh\n"
```

Finaly, to run the script you must execute `custom_simulator.py`

```bash
$ cd Custom-Simulator
$ python custom_simulator.py
```

**Warning:** Vtune may use a great amount of storage during the profiling. This amount can be changed in the `ANALYSE_MEM_CMD` parameter, and its default value is 200000 MB

Once the execution is over, the results will be available in the `Custom-Simulator/` directory
