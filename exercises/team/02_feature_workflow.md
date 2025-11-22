# Exercice Équipe 2 — Workflow branches de fonctionnalité

## Objectif
Travail parallèle propre via des branches `feature/*` et Pull Requests.

## Durée
45 minutes

## Rôles exemples
- Dev 1: UI
- Dev 2: Score
- Dev 3: Audio
- Dev 4: Ennemis

## Étapes par membre
1. Pull `main`
2. Créer branche `feature/<sujet>`
3. Développer (commits atomiques)
4. Push branche
5. Créer Pull Request
6. Révision + merge
7. Mettre à jour local `main`

## Terminal
```bash
git checkout main
git pull origin main
git checkout -b feature/ui
# dev...
git add .
git commit -m "feat: interface menu principal"
git push origin feature/ui
```

Créer PR sur GitHub/GitLab puis après merge :
```bash
git checkout main
git pull origin main
```

## VS Code
1. Barre de statut → Create new branch
2. Commits via Source Control
3. Icône nuage pour push → Publish Branch
4. Notification → Create Pull Request
5. Après merge: Pull

## Bonnes pratiques commit
```
feat: ajout système score (+ affichage HUD)
fix: correction null ref audio manager
refactor: extraction logique collision
```

## Validation
- PRs fusionnées sans conflits
- Historique clair
- Fonctionnalités testées

## Erreurs fréquentes
| Problème | Solution |
|----------|----------|
| Grosse PR difficile à relire | Découper en plus petites branches |
| Branche en retard | Rebase ou merge `main` régulièrement |
| Conflit en PR | Résoudre puis push nouvelle version |

## Pour aller plus loin
- Activer règles: PR requiert 1 review
