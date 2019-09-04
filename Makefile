VIRTUALENV_RUN_REQUIREMENTS = requirements-minimal.txt
VIRTUALENV_RUN_TARGET = virtualenv_run

virtualenv_run: $(VIRTUALENV_RUN_REQUIREMENTS)
	python3.7 -m venv virtualenv_run
	pip3 install -r requirements.txt --index-url https://pypi.yelpcorp.com/simple

clean:
	rm -rf virtualenv_run/
