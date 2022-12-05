#!/bin/bash

TEXT="$CI_JOB_STAGE status: $CI_JOB_STATUS"

curl -s -X POST https://api.telegram.org/bot<your_token_bot>/sendMessage -d chat_id=501211299 -d text="$TEXT"

