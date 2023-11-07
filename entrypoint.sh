
	

python3 $1

#jmeter -n -t opensource-orangehrmlive.jmx \ -l /data/$SMOKE_RESULTS -j /data/$LOG_FILE
	

echo "--------------- execution done --------------"

#cat $SMOKE_RESULTS

echo "--------------- check Logs below --------------"

#cat $LOG_FILE


CMD ["python3", "main.py"]
