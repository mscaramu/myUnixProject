all:	readme

readme:	guessinggame.sh

	echo "PROJECT_NAME: " > README.md
	echo "UnixWorkbench Project" >> README.md
	echo "DATE: " >> README.md 
	date >> README.md
	echo "NUMBER_OF_LINES: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
