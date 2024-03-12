OBJECTS = alpha1 alpha2 allpha3 alpha4
unit_test_report:
	echo "unit test report generated"; \
	pip3 install coverage; \
	export PATH="$$PATH:/var/lib/jenkins/.local/bin"; \
	coverage; \
	pwd; \
	exit 1;
pyvenv:
	pwd; \
	python3 -m venv alpha1; \
	ls -la;\
	./alpha1/bin/activate; \
	echo "virtual env created by alpha1"; \
	deactivate; 
	
