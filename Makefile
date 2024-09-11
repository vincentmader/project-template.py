run:
#   Perform setup, if not already done.
	[ -d .venv ] || make setup
#   Execute main python entrypoint.
	cd src && ../.venv/bin/python3 main.py
setup:
    # Create directories.
	[ -d tmp ] || mkdir tmp
	[ -d lib ] || mkdir lib
#   Create new virtual environment for python, if not already done.
	[ -d .venv ] || python3 -m virtualenv .venv
#   Install python dependencies.
	.venv/bin/pip3 install -r requirements.txt

