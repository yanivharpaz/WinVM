cd \dev\python_go
python -m venv venv --upgrade-deps
call venv\scripts\activate
pip install wheel
pip install -r yh-requirements.txt


docker pull jupyter/all-spark-notebook
