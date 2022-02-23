#targets
lab1: ranking.txt top3.txt

#Sorts ranking.txt by make name primarily, and ranking secondarily. This allows for easy printing of the top 3 cars of each make
top3.txt: ranking.txt top3.sh
	sort  -t, -k4,4d k1,1n ranking.txt | ./top3.sh > top3.txt

#Runs total.sh on data.csv. This creates an output where each car is listed with its id, year, make, model, and score. rank.sh is then run on this output to add a ranking column
ranking.txt: data_lab1/data.csv total.sh rank.sh
	./total.sh data_lab1/data.csv | sort -t, -nk5 -r | ./rank.sh > ranking.txt

clean: 
	rm -f ranking.txt top3.txt
