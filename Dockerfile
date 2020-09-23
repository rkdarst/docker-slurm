FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
      slurm-wlm slurmctld slurmd slurm-wlm-basic-plugins \
      munge \
      && \
    apt-get clean && \
    true

RUN apt-get update && \
    apt-get install -y \
      less \
      nano \
      && \
    apt-get clean && \
    true

COPY slurm.conf /etc/slurm-llnl/slurm.conf

CMD bash