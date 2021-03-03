FROM jupyter/scipy-notebook

RUN pip install matplotlib >=3.3.4
RUN pip install tensorflow >=2.4.1