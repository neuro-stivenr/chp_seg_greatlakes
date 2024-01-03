DIRNAME=$(shell pwd)

default: containers/chp_seg.sif chp_seg.sh

containers/chp_seg.sif:
	mkdir -p containers
	scripts/build_image.sh

chp_seg.sh:
	sed 's,<SIFPATH>,'$(DIRNAME)'/containers/chp_seg.sif,g' scripts/run_template.sh > chp_seg.sh
	chmod +x chp_seg.sh

