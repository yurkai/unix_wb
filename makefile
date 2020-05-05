all: README.md

README.md: 
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "$$(date)" >> README.md
	echo "File guessinggame.sh has $$(wc -l guessinggame.sh | egrep -o [0-9]+) lines of code" >> README.md

clean:
	rm README.md

