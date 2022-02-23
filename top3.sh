#!//usr/bin/awk -f

BEGIN {
	FS = ","
}
{	
	#prints first 3 cars of each make from ranking.txt
	currentModel = $4
	if(currentModel != previousModel){
		printed = 0
		previousModel = currentModel
	}

	if(printed < 3) {
		if(printed == 0){
			printf "\nTOP 3 MODELS FROM %s\n", currentModel	
		}
		print($0)
		printed++
	}
}
