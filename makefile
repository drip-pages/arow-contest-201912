UPDATE_DATE := $(shell date '+%Y%m%d%H%M%S')
BRANCH_NAME := update_${UPDATE_DATE}

#create_pullrequest:
push:
	git push production HEAD:refs/heads/$(BRANCH_NAME)
	# hub pull-request --no-edit -b production:master -h production:$(BRANCH_NAME)