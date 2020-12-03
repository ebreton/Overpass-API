setup:
	docker run \
		--env-file dockerconf.env \
		-v $(HOME)/var/overpass_db:/db \
		-p 12345:80 \
		-i -t \
		--name overpass_monaco \
		wiktorn/overpass-api

start:
	docker start -a overpass_monaco
