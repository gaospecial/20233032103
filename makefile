clean:
	rm -rf public

site:
	Rscript -e "blogdown::build_site()"

deploy:
	tar -czvf public.tar.gz public/; \
	scp -i ~/.ssh/huangong2303-admin-id-rsa public.tar.gz huangong2303-admin@bio-spring.top:~; \
	ssh -i ~/.ssh/huangong2303-admin-id-rsa huangong2303-admin@bio-spring.top "tar -xzvf ~/public.tar.gz"; \
	rm -v public.tar.gz
