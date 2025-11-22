# Exercice 3 — Branches de fonctionnalité

## Objectif
Isoler des développements indépendants (mouvement, animation) via des branches Git.

## Durée
30 minutes

## Étapes
1. Créer branche `feature/mouvement`
2. Ajouter script `movement.gd`
3. Commit
4. Retour sur `main`
5. Créer branche `feature/animation`
6. Ajouter animations dans `personnage.tscn`
7. Fusions vers `main`

## Méthode Terminal
```bash
git checkout -b feature/mouvement
git add scripts/movement.gd
git commit -m "feat: script mouvement de base"

git checkout main
git checkout -b feature/animation
git add scenes/personnage.tscn
git commit -m "feat: animations personnage"

git checkout main
git merge feature/mouvement
git merge feature/animation
```

## Méthode VS Code
1. Barre de statut → nom de branche → Create new branch
2. Developper, commit
3. Revenir sur `main` (sélecteur)
4. Créer seconde branche
5. Commit
6. Sur `main`: `F1` → Git: Merge Branch…
7. Sélectionner successivement les branches

## Visualisation
- `F1` → Git Graph: View Git Graph
- Vérifier que les branches se rejoignent sur `main`

## Validation
- Deux merges propres
- Historique linéaire ou peu divergeant

## Bonnes pratiques
- Nommer `feature/<action>` (ex: `feature/mouvement`)
- Un sujet par branche
- Supprimer la branche après merge

## Erreurs fréquentes
| Problème | Cause | Solution |
|----------|-------|----------|
| Merge impossible | Modifs locales non commit | Faire commit ou stash |
| Conflit inattendu | Modifications sur mêmes lignes | Voir Exercice 4 |

## Pour aller plus loin
- Introduire branche `dev` pour intégration
