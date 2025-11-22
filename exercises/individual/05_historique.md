# Exercice 5 — Historique et annulation

## Objectif
Explorer l'historique des commits, afficher un diff, annuler proprement.

## Durée
20 minutes

## Étapes
1. Afficher l'historique (Git Graph + terminal)
2. Inspecter un commit
3. Faire un commit erroné
4. Annuler via revert
5. Comparer avec reset

## Méthode Terminal
```bash
git log --oneline --graph --all
git show <hash>
# Commit erroné
echo "BUG" >> notes.txt
git add notes.txt
git commit -m "test: commit qui casse"
# Revert propre
git revert HEAD
# Reset (si pas poussé)
git reset --soft HEAD~1  # garde les modifs
```

## Méthode VS Code
1. Ouvrir Git Graph → cliquer commit
2. Voir liste fichiers modifiés
3. Revert via clic droit
4. Discard un changement non commit (clic droit fichier modifié)

## Différences clé
| Commande | Effet | Sécurité |
|----------|-------|----------|
| revert | Nouveau commit inverse | Sûr (préserve historique) |
| reset --soft | Retire commit, garde index | À utiliser local |
| reset --hard | Efface commit + changements | Dangereux |

## Validation
- Commit revert visible
- Pas de perte de code utile

## Bonnes pratiques
- Préférer revert si déjà poussé
- Utiliser reset seulement avant push

## Pour aller plus loin
- `git bisect` pour trouver un bug
