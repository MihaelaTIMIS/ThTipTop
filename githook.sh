#!/bin/bash
API_URL=https://jenkins.dsp-archiwebo20-mt-ma-ca-fd.fr  
API_USER=projetThipTop
API_KEY=116d0ce684029b968772e39c685b759665
PROJET=jobThetiptop

CRUMB=$(curl -u "SAPI_USER:$API_KEY" "$API_URL/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)")
curl -X POST "$API_URL/job/$PROJET/build" -u "$API_USER:$API_KEY" -H "$CRUMB"

#!/bin/bash
API_URL=https://jenkins.dsp-archiwebo20-mt-ma-ca-fd.fr
API_USER=projetthiptop
API_KEY=116d0ce684029b968772e39c685b759665
PROJET=jobThetiptop

CRUMB=$(curl -u "SAPI_USER:$API_KEY" "$API_URL/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)")
curl -X POST "$API_URL/job/$PROJET/build" -u "$API_USER:$API_KEY" -H "$CRUMB"