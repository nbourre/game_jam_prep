# Exercice Équipe 1 — Configuration du dépôt partagé

## Objectif
Mettre en place un dépôt Git collaboratif fonctionnel pour l'équipe.

## Durée
15 minutes

## Rôles
- Chef de projet: crée le dépôt, ajoute permissions
- Membres: clonent, configurent identité Git

## Étapes
1. Chef: créer dépôt GitHub/GitLab (public ou privé)
2. Ajouter collaborateurs (Settings / Manage Access)
3. Chaque membre clone
4. Configurer identité
5. Ajouter son nom dans `CONTRIBUTEURS.md`

## Terminal
```bash
git clone <url-depot>
cd <nom-projet>

git config user.name "Votre Nom"
git config user.email "votre@email.com"

echo "- Votre Nom" >> CONTRIBUTEURS.md
git add CONTRIBUTEURS.md
git commit -m "chore: ajout contributeur Votre Nom"
git push origin main
```

## VS Code
1. `F1` → Git: Clone
2. Ouvrir dossier
3. Source Control: voir fichiers
4. Créer / éditer `CONTRIBUTEURS.md`
5. Stage + Commit + Push

## Validation
- Tous les noms présents
- Pas de conflit initial
- Droits push confirmés

## Points d'attention
- Emails Git corrects
- Pas de fichiers système commités

## Pour aller plus loin
- Activer GitHub Issues / Projects
