FROM pytorch/pytorch

RUN conda create -n pytorch3d python=3.9
RUN activate pytorch3d
RUN conda install -y -c pytorch pytorch=1.9.1 torchvision cudatoolkit=10.2
RUN conda install -y -c fvcore -c iopath -c conda-forge fvcore iopath
RUN conda install pytorch3d -c pytorch3d
RUN conda install jupyterlab tqdm matplotlib
RUN conda install -c conda-forge trimesh
RUN conda install -c conda-forge ipympl
RUN conda install -c conda-forge scipy
RUN conda install -c conda-forge ipywidgets
RUN pip install celluloid rtree

#
# Run these in a container under root only
# It is needed for nodejs version >= 12.0 in order to
# use jupyterlab in a proper way
#
# RUN conda install -c conda-forge nodejs
# RUN conda upgrade -c conda-forge nodejs
# RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
# RUN jupyter labextension install jupyter-matplotlib

WORKDIR /lab

EXPOSE 8888
CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]
