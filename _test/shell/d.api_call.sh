#!/bin/bash

# NOTE: Please copy the 'access_token' from the response of the previous step.
TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlJyZ3RrUFNvYWlpWGZNVVo3Uk9SdCJ9.eyJpc3MiOiJodHRwczovL2Rldi1xNHN5MXlvdDc2bnZqanExLnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJhdXRoMHw2NTRhYTJhNjg5NTMxNGFmYjA5MzAwMmQiLCJhdWQiOiJhbGJ1bXMtaWRlbnRpZmllciIsImlhdCI6MTY5OTY2MDQzMSwiZXhwIjoxNjk5NzQ2ODMxLCJhenAiOiJRVGxrcTRJS3NqazVNNDVaUXpLMmNTZENHRVFWaDduYSIsInNjb3BlIjoiYWxidW1zOnJlYWQifQ.VNoqsWfiTeUTn7MSi-IxGBsScou3Mo6j2bNG4d2e2Z2DXtmzGRUAtYLD4UCOSwARkWvQ2UmGhXUeQCqjAQf-vu_hEdKkn7g46fy_zYB_4iQejl31pLr2czZhmrhk5-qbVJQjeyuhuOQ74mPNEXTspvGaBQuAoOZGB8zBtTA75HA5k7oDL8PzTYvLDQC3iHgAuHbujBxIysO2-SLQ0GTcu-mFVU2nR6oH_mTgXCRI7fJQj4mVkaYqUF10sVMt3Oz5eX_2-alzNvKt6UtM1jllvBXvQTylOWk5cMzeoJ42676fVh867xsn5mhtH1MGA5U-s70oOfIEmDgTdjl8P2SMYQ"
source application.properties

curl --request GET \
  --url "http://${api_url}/api/albums" \
  --header "Authorization: Bearer ${TOKEN}"



