#!/bin/zsh

for filename in content/publication/static/IGAI/*.pdf; do
    [ -e "$filename" ] || continue
	complaint=$(basename $filename .pdf)
	complaint_path="content/publication/$complaint/index.md"
	#echo "$complaint_path"
    [ -e "$complaint_path" ] || continue
	sed -i -e "s/^url_pdf:.*$/url_pdf: \/IGAI\/$complaint\.pdf/" $complaint_path
	sed_err="content/publication/$complaint/index.md-e"
    [ -e "$sed_err" ] || continue
	rm -rf $sed_err
done
