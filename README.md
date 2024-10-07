### Getting started
The tutorials in this repository originate from:
Schwaiger, Roland, and Joachim Steinwendner. Neuronale Netze programmieren mit Python. Rheinwerk Computing, 2019.

I purposely did not use anaconda as proposed in the book but switched to poetry for learning purposes and increased control.
Feel free to adjust those settings according to your environment.
In case you want to try out anaconda and want to follow the guidance of the authors start your setup with the recommendations given in chapter 2.

The following sections refer to the docker setup and to the content of each tutorial. This will give you a quick overview and help you getting started.

## Run the Docker Container
Start by building your docker image (feel free to name it as you wish).
``
docker build -t nn-tutorials .
``

After building the image, you can run your container:

``
docker run -p 8888:8888 --name nn-tutorials -v $(pwd)/tutorials:/app/assets nn-tutorials
``

Once inside the container, you can run your scripts like this:
``http://localhost:8888``

Have fun!

## Tutorials
The sections below give some indications on the content of each tutorial and what you can learn from it.

### Tutorial 1
Content:
- Perceptrons from scratch
- Decision functions

### Tutorial 1
Outstanding