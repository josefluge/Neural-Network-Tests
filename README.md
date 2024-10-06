The tutorials in this repository origin from:

Schwaiger, Roland, and Joachim Steinwendner. Neuronale Netze programmieren mit Python. Rheinwerk Computing, 2019.

## Run the Docker Container
After building the image, you can run your container:


``docker run -it --rm my-python-project``
If you want to run Python scripts manually, you can override the CMD instruction. Here’s how to open a shell in the container:

``docker run -it --rm my-python-project /bin/bash``
Once inside the container, you can run your scripts like this:

``poetry run python your_script.p``