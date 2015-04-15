#!/bin/sh

outFile="fritzbox_wifi.lst"
passCount=0

rm -f $outFile

echo "generating passwords ['1000000000000000' - '9999999999999999']..."
for first in {1000..9999}; do
	for second in {0..9999}; do
		for third in {0..9999}; do
			for forth in {0..9999}; do
				printf "%04d%04d%04d%04d\n" "$first" "$second" "$third" "$forth" | tee -a firtzbox_wifi.lst > /dev/null
				passCount=$((passCount+1))
			done
			echo "$passCount passwords generated..."
		done
		echo "$passCount passwords generated..."
	done
	echo "$passCount passwords generated..."
done
echo "done! $passCount passwords generated!"
