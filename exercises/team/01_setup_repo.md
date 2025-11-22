# Exercice Équipe 1 — Configuration du dépôt partagé (simplifié)

## Objectif
Mettre en place un dépôt Git collaboratif minimal pour l'équipe sans fichiers supplémentaires.

## Durée
15 minutes

## Rôles
- Chef de projet: crée le dépôt et ajoute les permissions
- Membres: clonent le dépôt, configurent leur identité Git locale

## Étapes
1. Chef: créer dépôt (GitHub/GitLab) public ou privé
2. Ajouter les collaborateurs (Settings / Manage Access)
3. Chaque membre clone le dépôt
4. Chaque membre configure son identité Git (si pas déjà globalement faite)
5. Vérifier que `main` se récupère et que le projet Godot s'ouvre

## Terminal

```bash
git clone <url-depot>
cd <nom-projet>

# (Optionnel si non fait) Configurer identité locale
git config user.name "Votre Nom"
git config user.email "votre@email.com"

# Vérifier accès écriture avec un petit commit (ex: ajuster README si autorisé)
echo "" >> README.md  # ou aucune modification réelle
git add README.md
git commit -m "chore: test accès écriture"
git push origin main
```

## VS Code
1. `F1` → Git: Clone → entrer l'URL
2. Ouvrir le dossier cloné
3. Source Control (`Ctrl+Shift+G`) pour vérifier l'état
4. Faire une légère modification test (ex: ajouter une ligne vide en fin de `README.md`)
5. Stage, Commit, Push (valide les permissions)

## Validation
- Tous les membres peuvent cloner
- Un commit test peut être poussé
- Pas de fichiers système ou caches Godot ajoutés

## Points d'attention
- Emails Git corrects (sinon attribution confuse dans l'historique)
- Ne pas ajouter de dossiers cachés (`.godot/`) ou de fichiers de cache
- Éviter les commits "vides" répétés pour ne pas polluer l'historique

## Pour aller plus loin
- Activer GitHub Issues / Projects pour la gestion des tâches
- Configurer protections de branche (ex: PR requise sur `main`)
