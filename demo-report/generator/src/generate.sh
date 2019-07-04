#!/bin/bash
time=$(date +%s)
R -f generate.r
mv /generator/reports/report.html /reports/report$time.html
