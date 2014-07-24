VERSION = $(shell Rscript -e "library(tools);cat(read.dcf('DESCRIPTION')[1, 'Version'])")	

TARGET = $(addsuffix .tar.gz, DSCTutorial2014_$(VERSION))

all : $(TARGET)

$(TARGET) :
	git submodule init
	git submodule update --recursive
	R CMD build .
