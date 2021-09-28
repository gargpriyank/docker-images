########################
#  prune archive logs  #
########################

du -hs /mnt/bludata0/db2/* | sort -h
ls -lrt /mnt/bludata0/db2/archive_log/db2inst1/CP4ADB/NODE0000/LOGSTREAM0000/C0000000/*.LOG | wc -l
db2pd -logs -db CP4ADB
db2 get db cfg for CP4ADB show detail | grep LOGARCH
db2 get db cfg for CP4ADB | grep -i log
db2pd -logs -db CP4ADB | head -25

# get current log
db2 get db config|grep 'First active'
db2 get db cfg for CP4ADB | grep 'First active log file'

# delete older than current log, have to find number for head. EXAMPLE:
ls -lrt /mnt/bludata0/db2/archive_log/db2inst1/CP4ADB/NODE0000/LOGSTREAM0000/C0000000 | grep LOG | head -100 | awk '{print $9}' > /tmp/logs.out

for i in `cat /tmp/logs.out`
do
/bin/rm -f /mnt/bludata0/db2/archive_log/db2inst1/CP4ADB/NODE0000/LOGSTREAM0000/C0000000/$i
done

du -hs /mnt/bludata0/db2/* | sort -h
df -h /mnt/bludata0