#!/usr/bin/env bash
# os_04_alert_log_tail.sh | READ-ONLY | tail the alert log
# Edit ALERT_LOG to your real path, or export it before running.
ALERT_LOG="${ALERT_LOG:-/u01/app/oracle/diag/rdbms/<dbname>/<SID>/trace/alert_<SID>.log}"
if [ -f "$ALERT_LOG" ]; then
  tail -n 60 "$ALERT_LOG"
else
  echo "Alert log not found at: $ALERT_LOG"
  echo "Set the correct path: export ALERT_LOG=/path/to/alert_<SID>.log"
fi
