# Watch a resume and rebuild + open in Skim on every save.
# Usage:
#   make watch                                  # default: master resume
#   make all                                    # one-off build of all resumes
#   make clean                                  # remove aux files

DOC ?= ajinkya-gokule-master-resume
TEXS := $(wildcard *.tex)

.PHONY: watch all clean

watch:
	latexmk -pvc $(DOC).tex

all:
	latexmk $(TEXS)

clean:
	latexmk -c
