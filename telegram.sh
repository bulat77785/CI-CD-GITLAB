#!/bin/bash

TEXT="$CI_JOB_STAGE status: $CI_JOB_STATUS%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s -X POST https://api.telegram.org/bot"the token is hidden"/sendMessage -d chat_id=-1001524686388 -d text="$TEXT"

