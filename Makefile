###############################################################################
# ENVIRONMENT CONFIGURATION
###############################################################################
MAKEFLAGS += --no-print-directory
SHELL=/bin/bash

###############################################################################
# GOAL PARAMETERS
###############################################################################

# iPerf3 CLI Arguments
IPERF3_ARGS ?= ""

# Container name
CONTAINER_NAME ?= "julianxhokaxhiu/docker-iperf3"

# Tag name
TAG_NAME ?= "latest"

###############################################################################
# GOALS ( safe defaults )
###############################################################################

default:
	@docker build -t $(CONTAINER_NAME):$(TAG_NAME) .

run:
	@docker run --rm=true -it -e "IPERF3_ARGS=$(IPERF3_ARGS)" $(CONTAINER_NAME):$(TAG_NAME)

push:
	@docker push $(CONTAINER_NAME):$(TAG_NAME)

clean:
	@docker rmi $(CONTAINER_NAME):$(TAG_NAME)
