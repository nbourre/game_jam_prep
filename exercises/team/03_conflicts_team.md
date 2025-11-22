# Exercice Équipe 3 — Résolution de conflits réelle

## Objectif
Collaborer pour résoudre un conflit sur une scène partagée (`scenes/main.tscn`).

## Durée
30 minutes

## Scénario
Deux membres ajoutent chacun un élément (UI + Ennemi) dans `main.tscn`.

## Étapes
1. Dev 1 branche `feature/ui-main`
2. Dev 2 branche `feature/enemy-main`
3. Les deux modifient `scenes/main.tscn`
4. Dev 1 merge → OK
5. Dev 2 merge → Conflit
6. Résolution coordonnée

## Terminal (Dev 2)
```bash
git checkout main
git pull origin main
git checkout feature/enemy-main
git merge main  # Conflit
# Éditer scène, garder les deux ajouts
git add scenes/main.tscn
git commit -m "fix: résolution conflit main.tscn (UI + Ennemi)"
```

## VS Code
- Fichier marqué `C`
- Utiliser diff pour comparer
- Conserver les sections Node des deux ajouts
- Tester dans Godot après merge

## Validation
- Scène contient les deux ajouts
- Jeu démarre sans erreur
- Conflit résolu en 1 commit

## Bonnes pratiques
- Communiquer avant modifications lourdes
- Préférer sous-scènes instanciées
- Limiter taille de `main.tscn`

## Pour aller plus loin
- Essayer un conflit sur script + scène simultanément
