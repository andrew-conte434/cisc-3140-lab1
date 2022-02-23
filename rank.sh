#!//usr/bin/awk -f
BEGIN {
	FS = ","
	OFS = ","
}
{
	rank = NR
	printf ("%d,%-15s\n", rank, $0)
}
