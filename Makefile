SUBREPO_URL=https://github.com/anafsouza/subrepo.git
SUBREPO_NUMBER_2_URL=https://github.com/anafsouza/subrepo-number-2.git

add-subrepo-remote:
	git submodule add ${SUBREPO_URL} subrepo || true

add-subrepo-number-2-remote:
	git submodule add ${SUBREPO_NUMBER_2_URL} subrepo-number-2 || true

pull-submodules:
	git submodule foreach 'git checkout main && git pull origin main'

push-submodules:
	git add .
	git commit -m "Update submodules"
	git push origin main