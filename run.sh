#!/bin/sh
docker run -dt -p 8080:8080 --cap-drop=all -v $(dirname "$(readlink -f "$0")")/www:/www blanknews
