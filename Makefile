CONFIG_PATH=${HOME}/Workspace/.go-microgrid
SERVICE_ROOT=./internal/service

.PHONY: init
init:
	cd ${SERVICE_ROOT}/dataservice && $(MAKE) init

.PHONY: genproto
genproto:
	cd ${SERVICE_ROOT}/dataservice && $(MAKE) compile

.PHONY: gencert
gencert:
	cd ${SERVICE_ROOT}/dataservice && $(MAKE) gencert

.PHONY: genacl
genacl:
	cd ${SERVICE_ROOT}/dataservice && $(MAKE) genacl

.PHONY: service
service:
	cd ${SERVICE_ROOT}/dataservice && $(MAKE) service
	cd ${SERVICE_ROOT}/collectionservice && $(MAKE) service
	cd ${SERVICE_ROOT}/cloudservice && $(MAKE) service