#!/usr/bin/env bash

echo 'Recording deployment in NewRelic ...'

RELEASE_NOTES_URL=$CIRCLE_REPOSITORY_URL/releases/tag/$CIRCLE_TAG
PAYLOAD=$(cat << EOF
    {
        "deployment": {
            "revision": "${CIRCLE_SHA1}",
            "user": "${CIRCLE_USERNAME}",
            "changelog" : "${RELEASE_NOTES_URL}"
        }
    }
EOF
)

curl -i -X POST https://api.newrelic.com/v2/applications/67713487/deployments.json \
     -H "X-Api-Key: ${NEWRELIC_API_KEY}" \
     -H 'Content-Type: application/json' \
     -d "${PAYLOAD}"

echo ${PAYLOAD}

echo 'Deployment recorded in NewRelic.'
