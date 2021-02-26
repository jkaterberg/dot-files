batt=$(headsetcontrol -b | tail -n 1 | cut -d ' ' -f 2)

echo $batt

