#!//usr/bin/awk -f
BEGIN {
	FS = ","
	OFS = ","
}
{
	rank = NR
	printf ("%d,%s\n", rank, $0)
}
