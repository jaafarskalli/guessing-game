# Nom du fichier README à générer
README=README.md

all: $(README)

$(README):
	@echo "# Projet Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "Date d'exécution de make : $$(date '+%Y-%m-%d %H:%M:%S')" >> $(README)
	@echo "" >> $(README)
	@echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> $(README)

clean:
	@rm -f $(README)
