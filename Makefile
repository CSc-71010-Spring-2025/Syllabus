PDF=csc_71010_fa2021_syllabus.pdf
HTML=syllabus
open:
	gio open `git remote get-url origin`'#readme'
html:
	pandoc README.md -s --metadata title="CSc 71010: Programming Languages" -o $(HTML).html
preview-html: html
	gio open $(HTML).html
pdf:
	pandoc -f gfm README.md -o $(PDF)
preview-pdf: pdf
	gio open $(PDF)
toc:
	gh-md-toc README.md | xclip -selection clipboard
