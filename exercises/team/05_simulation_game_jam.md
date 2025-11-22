# Exercice Équipe 5 — Simulation mini Game Jam (2–3h)

## Objectif
Mettre en pratique l’ensemble du workflow Git + collaboration sur un mini projet jouable.

## Durée
2–3 heures

## Organisation
| Phase | Durée | Objectif |
|-------|-------|----------|
| Setup | 0:00–0:15 | Dépôt, rôles, thème |
| Sprint 1 | 0:15–1:00 | Mécaniques de base |
| Sync | 1:00–1:10 | Pull + Merge |
| Sprint 2 | 1:10–2:00 | Ajouts avancés (UI, score, audio) |
| Sync | 2:00–2:10 | Stabilisation |
| Sprint 3 | 2:10–2:45 | Polish, corrections |
| Final | 2:45–3:00 | Test + présentation |

## Rôles suggérés
- Chef de projet / Git master
- Gameplay dev
- UI/UX dev
- Audio/FX dev

## Règles Git
1. `main` = jouable toujours
2. Branches `feature/*` uniquement pour dev
3. PR obligatoire (ou validation Git master)
4. Commits toutes les 15–30 min
5. Sync avant chaque merge

## Qualité
- Test rapide Godot avant chaque push
- Pas de TODO non résolus sur `main`
- Messages commit normés

## Evaluation
| Critère | Description |
|---------|-------------|
| Historique propre | Branches courtes, merges clairs |
| Conflits gérés | Résolutions rapides documentées |
| Communication | Tâches visibles / partagées |
| Stabilité finale | Build jouable sans erreurs |
| Messages commits | Pertinents et structurés |

## Livrables finaux
- Build jouable (dossier export ou exécution locale)
- Liste features réalisées
- Rétrospective courte (ce qui a bien/mal fonctionné)

## Pour aller plus loin
- Ajouter un pipeline CI (GitHub Actions) pour export automatique
