build:
	go install github.com/jackyzha0/hugo-obsidian@latest
	hugo-obsidian -input=content -output=assets/indices -index -root=.
	hugo

serve:
	hugo-obsidian -input=content -output=assets/indices -index -root=.
	hugo server --disableFastRender --enableGitInfo --minify --bind=$(or $(HUGO_BIND),0.0.0.0) --baseURL=$(or $(HUGO_BASEURL),http://localhost) --port=$(or $(HUGO_PORT),1313) --appendPort=$(or $(HUGO_APPENDPORT),true)
