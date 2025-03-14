# Makefile for Python project

# Define the virtual environment directory and requirements file
VENV_DIR=.venv
REQUIREMENTS=requirements.txt

# Python interpreter
PYTHON=python3

# Default target to create the virtual environment and install dependencies
all: install run

# Create the virtual environment
$(VENV_DIR):
	$(PYTHON) -m venv $(VENV_DIR)

# Install dependencies from requirements.txt
install: $(VENV_DIR)
	$(VENV_DIR)/bin/pip install --upgrade pip
	$(VENV_DIR)/bin/pip install -r $(REQUIREMENTS)

# Run the application (e.g., Streamlit)
run:
	$(VENV_DIR)/bin/streamlit run main.py

# Run tests with pytest
test:
	$(VENV_DIR)/bin/pytest

# Check code style with flake8
style:
	$(VENV_DIR)/bin/flake8 .
