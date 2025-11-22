# Index des Exercices Git Godot

Ce fichier sert désormais d'index vers les exercices détaillés déplacés dans le dossier `exercises/`.

## Sommaire
1. [Individuel](#exercices-individuels)
2. [Équipe](#exercices-en-équipe)
3. [Ressources VS Code](#ressources-vs-code)
4. [Projet de base](#projet-de-base)

---

## Exercices individuels

| # | Sujet | Fichier |
|---|-------|---------|
| 1 | Initialisation & premier commit | `exercises/individual/01_initialisation_commit.md` |
| 2 | Scène & modifications | `exercises/individual/02_scene_modification.md` |
| 3 | Branches de fonctionnalité | `exercises/individual/03_branches.md` |
| 4 | Conflits simulés | `exercises/individual/04_conflits.md` |
| 5 | Historique & revert/reset | `exercises/individual/05_historique.md` |

## Exercices en équipe

| # | Sujet | Fichier |
|---|-------|---------|
| 1 | Setup dépôt partagé | `exercises/team/01_setup_repo.md` |
| 2 | Workflow feature + PR | `exercises/team/02_feature_workflow.md` |
| 3 | Conflits scène principale | `exercises/team/03_conflicts_team.md` |
| 4 | Synchronisation continue | `exercises/team/04_sync_continue.md` |
| 5 | Simulation mini game jam | `exercises/team/05_simulation_game_jam.md` |

## Ressources VS Code

Voir `docs/vscode_setup.md` pour :
- Extensions recommandées
- Paramètres (`settings.json`)
- Raccourcis utiles
- Résolution de conflits visuelle

## Projet de base

Le projet Godot minimal est à placer dans `godot_project/`.

Inclure idéalement :
- `project.godot`
- Une scène `main.tscn`
- Script `player.gd`
- Dossiers `assets/` structurés

## Ancien contenu

Le contenu détaillé autrefois présent ici a été découpé pour une meilleure navigation.
Pour la collaboration avancée, consulter `docs/guide_collaboration.md`.

---

Bonne pratique : toujours commencer par l'exercice 1 individuel avant de passer aux exercices en équipe.

---

Dernière mise à jour : restructuration vers fichiers modulaires.

### Installation de VS Code
1. Télécharger et installer VS Code depuis [code.visualstudio.com](https://code.visualstudio.com/)
2. Ouvrir VS Code et configurer les paramètres de base

### Extensions recommandées

> **Note :** Les extensions sont accessibles via le panneau Extensions (`Ctrl+Shift+X`). Par défaut, il s'agit du 5e icône dans la barre latérale gauche.

Avant de commencer, installez ces extensions dans VS Code :

1. **Git Graph** (mhutchie.git-graph)
   - Visualiser l'historique Git de manière graphique
   - Facilite la compréhension des branches et fusions

2. **GitLens** (eamodio.gitlens)
   - Informations Git avancées
   - Voir qui a modifié chaque ligne de code

3. **godot-tools** (geequlim.godot-tools)
   - Support pour GDScript
   - Coloration syntaxique et autocomplétion

### Interface Git dans VS Code

VS Code intègre Git nativement. Voici les sections importantes :

- **Source Control (Ctrl+Shift+G)** : Gérer les changements, commits, et branches
- **Timeline** : Voir l'historique d'un fichier
- **Indicateurs visuels** : 
  - `M` = Modifié (Modified)
  - `A` = Ajouté (Added)
  - `D` = Supprimé (Deleted)
  - `U` = Non suivi (Untracked)
  - `C` = Conflit (Conflict)

### Raccourcis clavier utiles

| Raccourci | Action |
|-----------|--------|
| `Ctrl+Shift+G` | Ouvrir le panneau Source Control |
| `Ctrl+Enter` | Commiter les changements |
| `F1` puis "Git" | Accéder aux commandes Git |
| `Ctrl+Shift+P` | Palette de commandes |

### Configuration initiale dans VS Code

1. Ouvrir le terminal intégré : `` Ctrl+` ``
2. Configurer votre identité :
```bash
git config --global user.name "Votre Nom"
git config --global user.email "votre@email.com"
```

3. Activer la signature automatique des commits (optionnel) :
```bash
git config --global commit.gpgsign false
```

**Note** : Vous pouvez utiliser soit le terminal intégré de VS Code, soit l'interface graphique. Les deux méthodes sont expliquées dans chaque exercice.

---

## Exercices individuels

Ces exercices permettent à chaque étudiant de maîtriser les bases de Git avec un projet Godot avant de travailler en équipe.

### Exercice 1 : Initialisation et premier commit
**Objectif** : Créer un dépôt Git et faire son premier commit

**Durée estimée** : 15 minutes

**Étapes** :
1. Cloner le projet de base fourni par l'enseignant
2. Ouvrir le projet dans Godot pour vérifier qu'il fonctionne
3. Créer un fichier `.gitignore` pour Godot (si non présent)
4. Faire un premier commit avec un message descriptif

**Méthode 1 : Terminal intégré VS Code** (`` Ctrl+` ``) :
```bash
git clone [url-du-projet-base]
cd [nom-du-projet]
code .  # Ouvre le projet dans VS Code
# Ouvrir dans Godot et tester
git status
git add .
git commit -m "Initial commit - projet de base fonctionnel"
```

**Méthode 2 : Interface graphique VS Code** :
1. `F1` → "Git: Clone" → Coller l'URL du projet
2. Sélectionner le dossier de destination
3. "Open" pour ouvrir le projet cloné
4. Ouvrir le panneau Source Control (`Ctrl+Shift+G`)
5. Voir les fichiers non suivis
6. Cliquer sur `+` à côté de "Changes" pour tout ajouter
7. Entrer le message "Initial commit - projet de base fonctionnel"
8. Cliquer sur le ✓ (Commit) ou `Ctrl+Enter`

**Validation** : 
- Le dépôt est initialisé
- Le `.gitignore` exclut les fichiers temporaires de Godot
- Un commit initial existe dans l'historique (visible dans Git Graph)

---

### Exercice 2 : Créer et modifier une scène
**Objectif** : Comprendre comment Git gère les fichiers de scène Godot (.tscn)

**Durée estimée** : 20 minutes

**Étapes** :
1. Créer une nouvelle scène simple (ex: un personnage avec un sprite)
2. Ajouter quelques nœuds (Sprite2D, CollisionShape2D, etc.)
3. Commiter la nouvelle scène
4. Modifier la scène (changer une propriété)
5. Visualiser les changements avec `git diff`
6. Commiter les modifications

**Méthode Terminal** :
```bash
git status
git add scenes/personnage.tscn
git commit -m "Ajout de la scène personnage avec sprite"

# Après modifications
git diff
git add scenes/personnage.tscn
git commit -m "Modification des propriétés du personnage"
```

**Méthode VS Code** :
1. Créer la scène dans Godot et sauvegarder
2. Dans VS Code, ouvrir le panneau Source Control (`Ctrl+Shift+G`)
3. Voir `personnage.tscn` dans "Changes" avec un `U` (Untracked)
4. Cliquer sur le fichier pour voir un aperçu
5. Cliquer sur `+` pour ajouter (stage) le fichier
6. Entrer le message "Ajout de la scène personnage avec sprite"
7. Commit (`Ctrl+Enter`)
8. Après modifications dans Godot, le fichier apparaît avec `M` (Modified)
9. Cliquer sur le fichier pour voir le **diff visuel** des changements
10. Répéter le processus de commit

**Points d'apprentissage** :
- Les fichiers `.tscn` sont en texte, donc Git peut les suivre
- VS Code montre les différences ligne par ligne avec coloration
- Comprendre ce que signifient les changements dans un fichier de scène

---

### Exercice 3 : Travailler avec des branches
**Objectif** : Créer des branches pour développer des fonctionnalités isolées

**Durée estimée** : 30 minutes

**Étapes** :
1. Créer une branche `feature/mouvement`
2. Ajouter un script de mouvement au personnage
3. Commiter les changements
4. Retourner à la branche `main`
5. Créer une autre branche `feature/animation`
6. Ajouter des animations
7. Commiter et fusionner les branches

**Méthode Terminal** :
```bash
# Créer et basculer sur la branche
git checkout -b feature/mouvement
# Développer la fonctionnalité
git add scripts/movement.gd
git commit -m "Ajout du script de mouvement du personnage"

# Retour à main
git checkout main

# Nouvelle branche
git checkout -b feature/animation
# Développer l'animation
git add scenes/personnage.tscn
git commit -m "Ajout des animations au personnage"

# Fusionner
git checkout main
git merge feature/mouvement
git merge feature/animation
```

**Méthode VS Code** :
1. En bas à gauche de VS Code, cliquer sur le nom de la branche actuelle (ex: `main`)
2. Sélectionner "Create new branch..."
3. Nommer la branche : `feature/mouvement`
4. Développer la fonctionnalité
5. Commiter via le panneau Source Control
6. Cliquer à nouveau sur le nom de branche → Sélectionner `main`
7. Créer `feature/animation` de la même manière
8. Pour fusionner :
   - Retourner sur `main`
   - `F1` → "Git: Merge Branch..."
   - Sélectionner `feature/mouvement`
   - Répéter pour `feature/animation`

**Astuce VS Code** : Utilisez l'extension **Git Graph** pour visualiser vos branches :
- `F1` → "Git Graph: View Git Graph"
- Voir graphiquement toutes les branches et leurs fusions

**Validation** :
- Comprendre le concept de branches
- Savoir créer, basculer et fusionner des branches
- Les deux fonctionnalités sont intégrées dans `main`
- Visualiser le graphe des branches dans Git Graph

---

### Exercice 4 : Gérer les conflits (simulation)
**Objectif** : Apprendre à résoudre des conflits de fusion

**Durée estimée** : 25 minutes

**Étapes** :
1. Créer deux branches à partir de `main`
2. Modifier le même fichier dans les deux branches (ex: propriétés du personnage)
3. Fusionner la première branche
4. Tenter de fusionner la seconde → conflit!
5. Résoudre le conflit manuellement
6. Compléter la fusion

**Méthode Terminal** :
```bash
# Branche 1
git checkout -b feature/vitesse-rapide
# Modifier la vitesse à 400
git add scripts/movement.gd
git commit -m "Augmentation de la vitesse à 400"

# Branche 2
git checkout main
git checkout -b feature/vitesse-lente
# Modifier la vitesse à 150
git add scripts/movement.gd
git commit -m "Ajustement de la vitesse à 150"

# Fusionner
git checkout main
git merge feature/vitesse-rapide  # OK
git merge feature/vitesse-lente   # CONFLIT!

# Résoudre dans l'éditeur
git add scripts/movement.gd
git commit -m "Résolution du conflit de vitesse"
```

**Méthode VS Code** (recommandée pour les débutants) :
1. Créer et travailler sur les deux branches comme à l'exercice 3
2. Fusionner la première branche → OK
3. Tenter de fusionner la seconde → **CONFLIT!**
4. VS Code affiche automatiquement :
   - Le fichier en conflit avec un `C` rouge
   - Des boutons dans le fichier :
     - **Accept Current Change** (garder la version de main)
     - **Accept Incoming Change** (garder la version de la branche)
     - **Accept Both Changes** (garder les deux)
     - **Compare Changes** (voir côte à côte)
5. Choisir la résolution appropriée en cliquant sur un bouton
6. Ou éditer manuellement le fichier pour combiner les modifications
7. Sauvegarder le fichier
8. Dans le panneau Source Control, cliquer sur `+` pour marquer comme résolu
9. Commiter avec un message approprié

**Aperçu des marqueurs de conflit dans VS Code** :
```gdscript
<<<<<<< HEAD (Current Change)
const SPEED = 400.0
=======
const SPEED = 150.0
>>>>>>> feature/vitesse-lente (Incoming Change)
```

**Points importants** :
- VS Code colore les sections en conflit (vert = current, bleu = incoming)
- Les boutons facilitent la résolution
- Reconnaître les marqueurs de conflit (`<<<<<<<`, `=======`, `>>>>>>>`)
- Comprendre les deux versions en conflit
- Toujours tester le jeu dans Godot après résolution

---

### Exercice 5 : Utiliser l'historique
**Objectif** : Naviguer dans l'historique et annuler des changements

**Durée estimée** : 20 minutes

**Étapes** :
1. Consulter l'historique des commits
2. Afficher les détails d'un commit spécifique
3. Créer un changement "indésirable"
4. Annuler le dernier commit avec `git revert`
5. Utiliser `git reset` (avec précaution) pour annuler des changements non commités

**Méthode Terminal** :
```bash
# Historique
git log --oneline --graph --all
git log --oneline -n 5

# Détails d'un commit
git show [hash-du-commit]

# Faire une erreur
# Modifier quelque chose
git add .
git commit -m "Modification qui casse tout"

# Annuler proprement
git revert HEAD
# OU si pas encore poussé
git reset --soft HEAD~1  # Garde les changements
git reset --hard HEAD~1  # Supprime tout (danger!)
```

**Méthode VS Code** :
1. **Voir l'historique** :
   - Ouvrir Git Graph : `F1` → "Git Graph: View Git Graph"
   - Ou cliquer sur l'horloge dans le panneau Source Control
   - Chaque commit est une bulle dans le graphe

2. **Détails d'un commit** :
   - Cliquer sur un commit dans Git Graph
   - Voir les fichiers modifiés, le message, l'auteur
   - Cliquer sur un fichier pour voir le diff

3. **Annuler un commit** :
   - Dans Git Graph, clic droit sur un commit
   - "Revert Commit" pour annuler proprement
   - Ou utiliser le terminal pour plus de contrôle

4. **Annuler des changements non commités** :
   - Dans le panneau Source Control
   - Clic droit sur un fichier modifié
   - "Discard Changes" (⚠️ Attention : perte définitive!)

5. **Avec GitLens** :
   - Survoler une ligne de code
   - Voir qui l'a modifiée et quand
   - Cliquer pour voir le commit complet

**Timeline (barre latérale)** :
- Cliquer sur un fichier
- Ouvrir la vue "Timeline" en bas de l'explorateur
- Voir tous les commits qui ont touché ce fichier
- Cliquer pour voir une version antérieure

**Validation** :
- Comprendre l'historique Git visuellement
- Savoir annuler des modifications en toute sécurité
- Différence entre `revert` (crée un nouveau commit) et `reset` (réécrit l'historique)

---

## Exercices en équipe

Ces exercices simulent le travail collaboratif durant un game jam.

### Exercice Équipe 1 : Configuration du dépôt partagé
**Objectif** : Mettre en place un dépôt centralisé et donner accès à tous

**Durée estimée** : 15 minutes

**Rôles** :
- **Chef de projet** : Crée le dépôt distant (GitHub/GitLab)
- **Tous** : Clonent le dépôt et configurent leur environnement

**Étapes** :
1. Le chef crée un dépôt sur GitHub/GitLab
2. Ajoute les collaborateurs
3. Chaque membre clone le dépôt
4. Chaque membre configure son identité Git
5. Chaque membre crée un fichier `CONTRIBUTEURS.md` avec son nom

**Commandes** :
```bash
# Configuration identité
git config user.name "Votre Nom"
git config user.email "votre@email.com"

# Cloner
git clone [url-du-depot]
cd [nom-du-projet]

# Ajouter son nom
echo "- Votre Nom" >> CONTRIBUTEURS.md
git add CONTRIBUTEURS.md
git commit -m "Ajout de mon nom aux contributeurs"
git push origin main
```

**Points d'attention** :
- Gérer les permissions du dépôt
- S'assurer que tous peuvent pousser
- Résoudre les problèmes de connexion

---

### Exercice Équipe 2 : Workflow de branches par fonctionnalité
**Objectif** : Chaque membre développe une fonctionnalité sur sa branche

**Durée estimée** : 45 minutes

**Rôles** :
- **Développeur 1** : Interface utilisateur (UI)
- **Développeur 2** : Système de score
- **Développeur 3** : Effets sonores
- **Développeur 4** : Ennemis

**Workflow** :
1. Chaque dev crée sa branche depuis `main`
2. Développe sa fonctionnalité
3. Commit régulièrement
4. Pousse sa branche
5. Crée une Pull Request
6. Le chef de projet révise et fusionne

**Méthode Terminal** :
```bash
# Créer sa branche
git checkout -b feature/[nom-fonctionnalité]

# Développer et commiter
git add .
git commit -m "Ajout de [détails]"

# Pousser sa branche
git push origin feature/[nom-fonctionnalité]

# Créer une PR sur GitHub/GitLab
# Attendre la révision
# Après fusion, mettre à jour sa copie locale
git checkout main
git pull origin main
```

**Méthode VS Code** :
1. **Créer sa branche** :
   - Cliquer sur le nom de branche en bas à gauche
   - "Create new branch..."
   - Nommer : `feature/[votre-fonctionnalité]`

2. **Développer et commiter** :
   - Faire vos modifications
   - Panneau Source Control (`Ctrl+Shift+G`)
   - Stage les fichiers avec `+`
   - Entrer un message descriptif
   - Commit (`Ctrl+Enter`)

3. **Pousser la branche** :
   - Cliquer sur l'icône cloud ☁️ en bas de VS Code
   - Ou : Panneau Source Control → `...` → "Push"
   - VS Code demandera de publier la branche → Confirmer

4. **Créer une Pull Request** :
   - VS Code affichera une notification
   - Cliquer sur "Create Pull Request" dans la notification
   - Ou aller sur GitHub/GitLab dans le navigateur
   - Remplir le titre et la description
   - Assigner le chef de projet comme reviewer

5. **Après fusion** :
   - Retourner sur `main` (cliquer sur le nom de branche)
   - Panneau Source Control → `...` → "Pull"

**Indicateurs VS Code utiles** :
- En bas à gauche : `↓2 ↑3` = 2 commits à tirer, 3 à pousser
- Notification quand la branche est en retard

**Bonnes pratiques** :
- Messages de commit clairs et descriptifs
- Commits atomiques (une fonctionnalité = un commit)
- Tester dans Godot avant de pousser
- Communiquer avec l'équipe sur Discord/Slack
- Utiliser GitLens pour voir les modifications des autres

---

### Exercice Équipe 3 : Résolution de conflits en équipe
**Objectif** : Gérer des conflits réels en situation de collaboration

**Durée estimée** : 30 minutes

**Scénario** :
Deux développeurs modifient le même fichier (ex: scène principale) simultanément.

**Étapes** :
1. Dev 1 et Dev 2 partent de la même version de `main`
2. Chacun crée sa branche
3. Les deux modifient `scenes/main.tscn` (ajoutent des éléments)
4. Dev 1 fusionne en premier → OK
5. Dev 2 tente de fusionner → CONFLIT!
6. Dev 2 résout le conflit avec l'aide de Dev 1
7. Fusion complétée

**Commandes (Dev 2)** :
```bash
# Après que Dev 1 a fusionné
git checkout main
git pull origin main
git checkout feature/ma-branche
git merge main  # CONFLIT!

# Ouvrir le fichier en conflit
# Discuter avec Dev 1
# Résoudre dans Godot ou éditeur de texte
git add scenes/main.tscn
git commit -m "Résolution conflit avec Dev 1"
git push origin feature/ma-branche
```

**Points d'apprentissage** :
- Communication essentielle
- Comprendre les modifications de l'autre
- Tester ensemble après résolution
- Conflits dans les fichiers de scène Godot

---

### Exercice Équipe 4 : Synchronisation continue
**Objectif** : Maintenir son code à jour pendant le développement actif

**Durée estimée** : 30 minutes (sur plusieurs cycles)

**Scénario** :
Simuler une journée de game jam avec plusieurs développeurs actifs.

**Workflow** :
1. Tous partent de `main` à jour
2. Chacun travaille sur sa branche
3. Toutes les 10 minutes, synchroniser avec `main`
4. Résoudre les conflits si nécessaire
5. Continuer le développement

**Commandes de synchronisation** :
```bash
# Sauvegarder son travail
git add .
git commit -m "WIP: [description]"

# Mettre à jour main
git checkout main
git pull origin main

# Intégrer les changements dans sa branche
git checkout feature/ma-branche
git merge main
# Résoudre conflits si nécessaire

# Continuer le développement
```

**Bonnes pratiques** :
- Synchroniser régulièrement (au moins toutes les heures)
- Communiquer avant de grandes fusions
- Utiliser des commits "WIP" (Work In Progress) si nécessaire
- Ne jamais pousser du code qui ne compile pas

---

### Exercice Équipe 5 : Simulation de game jam (2-3 heures)
**Objectif** : Mettre en pratique tous les concepts dans un mini game jam

**Durée estimée** : 2-3 heures

**Organisation** :
- Équipes de 3-4 personnes
- Thème simple fourni par l'enseignant
- Utilisation obligatoire de Git
- Objectif : jeu jouable à la fin

**Rôles suggérés** :
- **Chef de projet / Git master** : Gère les fusions, résout les conflits
- **Développeur gameplay** : Mécaniques de jeu
- **Développeur UI/UX** : Interface et menus
- **Développeur audio/visuel** : Sons et effets visuels

**Règles Git** :
1. Branche `main` toujours stable et jouable
2. Branches de fonctionnalités pour tout développement
3. Pull Requests obligatoires (ou fusion avec validation)
4. Commits toutes les 15-30 minutes
5. Synchronisation avant chaque fusion

**Déroulement** :
```
0:00 - 0:15 : Planning et setup du dépôt
0:15 - 1:00 : Sprint 1 - Fonctionnalités de base
1:00 - 1:10 : Pause et synchronisation
1:10 - 2:00 : Sprint 2 - Fonctionnalités avancées
2:00 - 2:10 : Pause et synchronisation
2:10 - 2:45 : Sprint 3 - Polish et corrections
2:45 - 3:00 : Test final et présentation
```

**Critères d'évaluation** :
- Utilisation correcte de Git (historique propre)
- Travail d'équipe visible dans les commits
- Gestion des conflits
- Stabilité de la branche `main`
- Qualité des messages de commit

---

## Préparation du projet de base

### Structure recommandée

```
game-jam-project/
├── .gitignore
├── .gitattributes
├── project.godot
├── README.md
├── CONTRIBUTEURS.md
├── scenes/
│   └── main.tscn
├── scripts/
│   └── player.gd
├── assets/
│   ├── sprites/
│   ├── sounds/
│   └── fonts/
└── docs/
    └── git-workflow.md
```

### Fichier .gitignore pour Godot

```gitignore
# Godot 4+ specific ignores
.godot/
.import/

# Godot-specific files
*.translation
*.import
export_presets.cfg

# Mono-specific ignores (if using C#)
.mono/
data_*/
mono_crash.*.json

# System/Editor files
.DS_Store
Thumbs.db
*.swp
*.swo
*~
.vscode/
.idea/

# Build results
builds/
exports/
*.zip
*.apk
*.exe
*.dmg
*.app
```

### Fichier .gitattributes

```gitattributes
# Godot files
*.tscn text eol=lf
*.gd text eol=lf
*.tres text eol=lf
*.shader text eol=lf
*.gdshader text eol=lf

# Images
*.png binary
*.jpg binary
*.jpeg binary
*.bmp binary
*.svg binary

# Audio
*.wav binary
*.ogg binary
*.mp3 binary

# Fonts
*.ttf binary
*.otf binary
```

### Scène principale minimale

La scène `main.tscn` devrait contenir :
- Un nœud Node2D racine
- Un arrière-plan coloré (ColorRect)
- Un label de bienvenue
- Un personnage simple (Sprite2D avec script basique)

### Script de base player.gd

```gdscript
extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta : float) -> void:
    var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    velocity = direction * SPEED
    move_and_slide()
```

---

## Conseils pour l'enseignant

### Avant les exercices
1. Créer le projet de base et le tester
2. Créer un dépôt template sur GitHub/GitLab
3. Préparer des slides sur les concepts Git
4. Installer Git, Godot et VS Code sur tous les postes
5. **Extensions VS Code à préinstaller** :
   - Git Graph (mhutchie.git-graph)
   - GitLens (eamodio.gitlens)
   - godot-tools (geequlim.godot-tools)

### Configuration VS Code recommandée
Créer un fichier `settings.json` dans `.vscode/` du projet template :
```json
{
  "git.enableSmartCommit": true,
  "git.confirmSync": false,
  "git.autofetch": true,
  "gitlens.codeLens.enabled": true,
  "files.autoSave": "afterDelay",
  "files.autoSaveDelay": 1000
}
```

### Pendant les exercices
1. Circuler pour aider les étudiants
2. Encourager l'utilisation de **Git Graph** pour visualiser
3. Montrer comment résoudre les conflits avec les boutons VS Code
4. Faire des démonstrations en direct si nécessaire
5. Garder une équipe "vitrine" visible de tous (partage d'écran)
6. Encourager les étudiants à utiliser l'interface graphique au début, puis progressivement le terminal

### Points de vigilance
- Les conflits dans les fichiers binaires (.import) sont difficiles
- Les fichiers de scène (.tscn) peuvent avoir de gros conflits
- Expliquer l'importance du `.gitignore`
- Insister sur la communication pendant les fusions
- **VS Code** : Expliquer la différence entre "stage" et "commit"
- Attention au `.godot/` qui ne doit jamais être commité

### Astuces VS Code pour le game jam
- **Live Share** : Permettre le pair programming à distance
- **GitLens Blame** : Voir qui a écrit chaque ligne
- **Timeline** : Naviguer dans l'historique d'un fichier
- **Diff Editor** : Comparer deux versions côte à côte

### Ressources supplémentaires
- [Git Documentation](https://git-scm.com/doc)
- [Godot Git Integration](https://docs.godotengine.org/en/stable/tutorials/best_practices/index.html)
- [GitHub Flow](https://guides.github.com/introduction/flow/)
- [VS Code Git Documentation](https://code.visualstudio.com/docs/sourcecontrol/overview)
- [GitLens Documentation](https://gitlens.amod.io/)

---

## Checklist de compétences acquises

Après avoir complété ces exercices, les étudiants devraient pouvoir :

- [ ] Initialiser et configurer un dépôt Git
- [ ] Faire des commits avec des messages significatifs
- [ ] Créer et gérer des branches
- [ ] Fusionner des branches
- [ ] Résoudre des conflits simples
- [ ] Travailler avec un dépôt distant (clone, pull, push)
- [ ] Utiliser les Pull Requests
- [ ] Synchroniser leur travail avec l'équipe
- [ ] Comprendre l'historique Git
- [ ] Appliquer un workflow Git dans un projet Godot
- [ ] Collaborer efficacement durant un game jam

---

Bonne chance pour votre game jam! 🎮🚀
