ide:
	@screen -S learnyousomeerlang -c .screenrc

bootstrap:
	@virtualenv --no-site-packages env
	@. env/bin/activate && pip install -r requirements.txt && deactivate

save-deps:
	@. env/bin/activate && pip freeze > requirements.txt && deactivate

html:
	@. env/bin/activate && cd ./src && make html && deactivate && cd -

pdf:
	@. env/bin/activate && cd ./src && make latexpdf && deactivate && cd -
