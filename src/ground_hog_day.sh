#!/bin/bash

api="https://groundhog-day.com/api/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

function get_ground_hogs() {
	curl --request GET \
		--url "$api/groundhogs" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_ground_hog_by_slug() {
	# 1 - slug: (string): <slug>
	curl --request GET \
		--url "$api/groundhog/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_predictions() {
	# 1 - year: (integer): <year>
	curl --request GET \
		--url "$api/predictions?year=$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
