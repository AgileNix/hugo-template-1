build:
	go install github.com/jackyzha0/hugo-obsidian@latest
	hugo-obsidian -input=content -output=assets/indices -index -root=.
	hugo
