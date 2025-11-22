# Exercice 1 — Initialisation et premier commit

## Objectif
Initialiser un dépôt Git pour un projet Godot et réaliser le premier commit propre.

## Durée estimée
15 minutes

## Pré-requis
- Git installé
- VS Code installé + extensions (GitLens, Git Graph, godot-tools)
- Projet Godot de base fourni (dossier `godot_project/`)

## Étapes
1. Cloner le dépôt template ou copier le dossier fourni
2. Ouvrir dans VS Code (`code .`) et Godot pour vérifier le bon fonctionnement
3. Créer / vérifier la présence du `.gitignore`
4. Stager tous les fichiers
5. Commit avec message clair

## Méthode Terminal
```bash
git clone <url-template>
cd <nom-projet>
code .
# Vérifier dans Godot
git status
git add .
git commit -m "Initial commit: projet Godot de base fonctionnel"
```

## Méthode VS Code
1. `F1` → Git: Clone → coller URL
2. Ouvrir le dossier cloné
3. Panneau Source Control (`Ctrl+Shift+G`)
4. Vérifier les fichiers non suivis
5. Cliquez sur `+` pour tout ajouter
6. Message de commit : `Initial commit: projet Godot de base fonctionnel`
7. `Ctrl+Enter` ou icône ✓

## Validation
- Le commit apparaît dans Git Graph
- Le projet s'exécute dans Godot
- `.gitignore` exclut `.import/` etc.

## Erreurs fréquentes
| Problème | Solution |
|----------|----------|
| Fichiers `.import` commités | Ajouter au `.gitignore` puis les retirer (`git rm --cached -r .import/`) |
| Mauvais message de commit | Faire un commit amend: `git commit --amend -m "Initial commit: ..."` |

## Pour aller plus loin
- Ajouter un `README.md` minimal
- Vérifier `git config user.name` et `user.email`
