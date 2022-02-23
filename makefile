#targets
lab1: ranking.txt

ranking.txt: data_lab1/data.csv total.sh rank.sh
	./total.sh data_lab1/data.csv | sort -t, -nk4 -r | ./rank.sh > ranking.txt

clean: 
	rm -f ranking.txt
