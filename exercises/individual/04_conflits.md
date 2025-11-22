# Exercice 4 — Résolution de conflits simulée

## Objectif
Comprendre et résoudre un conflit de fusion sur un script (`movement.gd`).

## Durée
25 minutes

## Scénario
Deux branches modifient la constante `SPEED` avec des valeurs différentes.

## Étapes
1. Branche `feature/vitesse-rapide` → SPEED = 400
2. Branche `feature/vitesse-lente` → SPEED = 150
3. Merge rapide dans `main`
4. Merge lente provoque conflit
5. Résolution manuelle

## Méthode Terminal
```bash
git checkout -b feature/vitesse-rapide
git add scripts/movement.gd
git commit -m "feat: vitesse 400"

git checkout main
git checkout -b feature/vitesse-lente
git add scripts/movement.gd
git commit -m "feat: vitesse 150"

git checkout main
git merge feature/vitesse-rapide
git merge feature/vitesse-lente  # CONFLIT
```

## Méthode VS Code
- Fichier marqué `C`
- Boutons : Accept Current / Incoming / Both
- Choisir valeur finale (ex: 300 pour compromis)
- Sauvegarder, stage, commit

## Exemple de conflit
```gdscript
<<<<<<< HEAD
const SPEED = 400.0
=======
const SPEED = 150.0
>>>>>>> feature/vitesse-lente
```

## Résolution recommandée
```gdscript
const SPEED = 300.0  # compromis
```

## Validation
- Conflit disparu
- Application démarre
- Commit de résolution identifiable

## Bonnes pratiques
- Discuter avant de choisir
- Tester après merge
- Message commit clair: `fix: résolution conflit vitesse (300)`

## Erreurs fréquentes
| Problème | Cause | Solution |
|----------|-------|----------|
| Conflit recréé | Merge sans pull préalable | `git pull --rebase` avant merge |
| Mauvaise suppression de marqueurs | Édition partielle | Revenir fichier → recommencer |

## Pour aller plus loin
- Utiliser `git mergetool`
