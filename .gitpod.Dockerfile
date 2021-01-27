FROM gitpod/workspace-full:latest

# initialise
USER root
RUN curl -sSL https://get.haskellstack.org/ | sh
#RUN curl -sSL https://get.haskellstack.org/ | sh \
# && stack setup && stack install hlint

USER gitpod
ENV PATH=/home/gitpod/.local/bin:$PATH

RUN curl -o /home/gitpod/.local/bin/epm -L \
 https://github.com/e-wrks/epm/raw/latest/epm \
 && chmod a+x /home/gitpod/.local/bin/epm
