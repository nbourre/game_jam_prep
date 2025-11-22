# Préparation Game Jam — Godot + Git

## 🎯 Objectif
Fournir aux étudiants un environnement structuré pour pratiquer Git avec un projet Godot avant et pendant un game jam.

## 📁 Structure
```
/ (racine)
├── .gitignore
├── .gitattributes
├── README.md
├── docs/
│   ├── guide_collaboration.md
│   └── vscode_setup.md
├── exercises/
│   ├── individual/
│   │   ├── 01_initialisation_commit.md
│   │   ├── 02_scene_modification.md
│   │   ├── 03_branches.md
│   │   ├── 04_conflits.md
│   │   └── 05_historique.md
│   └── team/
│       ├── 01_setup_repo.md
│       ├── 02_feature_workflow.md
│       ├── 03_conflicts_team.md
│       ├── 04_sync_continue.md
│       └── 05_simulation_game_jam.md
├── godot_project/  (projet de base à compléter)
└── exercices_git_godot.md (index global — sera simplifié)
```

## 🚀 Démarrage rapide
```bash
git clone <url-du-depot>
cd game_jam_prep
code .
```
1. Lire `docs/vscode_setup.md`
2. Ouvrir `godot_project/` dans Godot
3. Commencer par `exercises/individual/01_initialisation_commit.md`

## 🛠 Extensions VS Code recommandées
- GitLens
- Git Graph
- godot-tools

## 📌 Workflow Git suggéré
| Branche | Rôle |
|---------|------|
| main | Stable / jouable |
| dev (optionnel) | Intégration collective |
| feature/* | Développement isolé |
| hotfix/* | Correction urgente |

## ✅ Compétences ciblées
- Init & configuration Git
- Branches & merges
- Conflits & résolutions
- Historique & revert/reset
- Collaboration multi-personnes

## 📄 Licence / Attribution
Basé en partie sur des ressources publiques (Beerday Games, docs Godot).

## 🔜 Prochaines améliorations
- Ajouter un vrai projet Godot dans `godot_project/`
- Scripts d’export automatisés (CI)
- Intégrer Git LFS si assets lourds

## 🧪 Fichiers Git ajoutés
| Fichier | Rôle |
|---------|------|
| `.gitignore` | Ignore dossiers générés Godot, builds, fichiers système |
| `.gitattributes` | Normalise fins de ligne et marque binaires |

### Activer Git LFS (optionnel)
Après installation de Git LFS:
```bash
git lfs track "*.png"
git lfs track "*.wav"
git add .gitattributes
git commit -m "chore: activer LFS pour images et audio"
```

Bon apprentissage et bon game jam! 🎮
