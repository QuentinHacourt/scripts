#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <document_name>"
    exit 1
fi

full_document_name="$1"

document_name="${full_document_name%.tex}"

pdflatex "$document_name.tex" || exit 1
rm -f "$document_name".{aux,log,out}
