#!//usr/bin/awk -f
BEGIN {
	FS=","
	OFS=","
}
{
	total=0
	if(NR > 1){
		for(i = 8; i < NF; i++)
			total += $i
		$(NF+1) = total;
		printf "%d,%s,%s,%s,%d\n",$7, $4, $5, $6, $NF
	}
}
