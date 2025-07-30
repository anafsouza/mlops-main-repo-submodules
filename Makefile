SUBREPO_URL=https://github.com/anafsouza/subrepo.git
SUBREPO_NUMBER_2_URL=https://github.com/anafsouza/subrepo-number-2.git

add-subrepo-remote:
	git submodule add ${SUBREPO_URL} subrepo

add-subrepo-number-2-remote:
	git submodule add ${SUBREPO_NUMBER_2_URL} subrepo-number-2

pull-submodules:
	git submodule foreach 'git checkout main && git pull origin main'

# pull-subrepo-number-2:
# 	git submodule update --remote --merge subrepo-number-2