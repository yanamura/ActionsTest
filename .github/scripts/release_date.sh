#!/bin/bash

DATE_FORMAT='+%Y/%m/%d'
TODAY=`date $DATE_FORMAT`
TOMORROW=`date -d "1 days" $DATE_FORMAT`
TWO_DAYS=`date -d "2 days" $DATE_FORMAT`

BODY="
## 公開日
公開日 | 範囲
 --- | ---
$TODAY | 10%
$TOMORROW | 50%
$TWO_DAYS | 100%
"

echo "::set-output name=release_date::$BODY"