run:
	docker run --rm -it \
	  -v "$$PWD":/workspace -w /workspace -p 4000:4000 \
	  mcr.microsoft.com/devcontainers/jekyll:2-bullseye \
	  bash -lc 'bundle install && bundle exec jekyll serve --host 0.0.0.0 --livereload'
