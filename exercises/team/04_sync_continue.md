# Exercice Équipe 4 — Synchronisation continue

## Objectif
Minimiser les divergences longues et réduire les conflits via mises à jour fréquentes.

## Durée
30 minutes (répété en cycles)

## Workflow
1. Cycle de 10–15 min dev
2. Commit WIP local
3. Pull `main`
4. Merge/Rebase selon préférence
5. Continuer

## Terminal
```bash
git add .
git commit -m "wip: progression ennemi (détection)"
git checkout main
git pull origin main
git checkout feature/enemy-ai
git merge main   # ou git rebase main
```

## VS Code
- Commit WIP
- Pull via `...` menu
- Merge Branch via palette

## Bonnes pratiques
- WIP acceptable seulement sur branches feature
- Rebase pour historique propre (optionnel)
- Communiquer avant gros refactors

## Validation
- Peu de divergences visibles dans Git Graph
- Conflits rares ou mineurs

## Pour aller plus loin
- Introduire intégration continue (build automatique)
