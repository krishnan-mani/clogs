#!/usr/bin/env bash

sed -e "s/REPLACE_ME_WITH_BUILD_NUMBER/${BUILD_NUMBER}/g" src/main/webapp/index.jsp.template > src/main/webapp/index.jsp
