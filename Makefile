all:
	rm -rf  *~ */*~ controller_app erl_cra* ebin;
	rm -rf  catalog host_specs deployment_specs logs *.service_dir;
	rm -rf _build test_ebin;
	git clone https://github.com/joq62/controller_app.git;
	mkdir ebin;
	erlc -o ebin *.erl
	echo Done
git:
	rm -rf  *~ */*~ controller_app erl_cra* ebin;
	rm -rf  catalog host_specs deployment_specs logs *.service_dir;
	rm -rf _build test_ebin;
	git add *
	git commit -m update;
	git push
