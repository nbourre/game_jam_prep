# 🎮 Collaborer sur un projet Godot — Guide complet pour les équipes

**Traduction + réorganisation du billet original de Beerday Games**

> Fichier déplacé depuis `og_fr.md` pour une meilleure organisation.

---

## 🧭 Table des matières

1. Introduction
2. Mettre en place la collaboration
   * Git et structure du dépôt
   * Fichier `.gitignore` Godot
   * Git LFS
3. Organisation du projet
   * Structure recommandée
   * Répartition du travail
4. Bonnes pratiques pour éviter les conflits
   * Gestion des scènes
   * Collaboration sur le code
5. Communication et gestion de projet
6. Résolution des conflits de fusion (merge conflicts)
7. Outils essentiels
8. Techniques avancées
9. Erreurs fréquentes et comment les éviter
10. Conclusion
11. Check-list rapide

---

# 1. 🎯 Introduction

La collaboration en développement de jeux est complexe : plusieurs personnes travaillent simultanément sur du code, des scènes, des assets et des systèmes variés.
Sans méthodes claires, les équipes se retrouvent vite avec :

* du travail écrasé par accident
* des scènes impossibles à fusionner
* des versions différentes sur chaque poste
* un projet qui “brise” régulièrement
* beaucoup de temps perdu

👉 Avec les bonnes pratiques, ces problèmes disparaissent presque complètement.

---

# 2. 🛠️ Mettre en place la collaboration

## 2.1. Utiliser Git (obligatoire pour collaborer sur Godot)

Git doit être configuré **dès le début du projet**.

### Procédure d'installation :

1. Créer un dépôt (GitHub, GitLab…).
2. Donner accès à tous les membres.
3. Chacun clone le projet localement.
4. Configurer `.gitignore` et Git LFS.

---

## 2.2. `.gitignore` pour Godot (recommandé)

```gitignore
# Dossiers Godot à ignorer
.import/
export.cfg
export_presets.cfg
.mono/
data_*/
.tmp/

# OS
.DS_Store
Thumbs.db
```

---

## 2.3. Git LFS (Large File Storage)

Pour éviter les dépôts énormes :

```bash
git lfs track "*.png"
git lfs track "*.jpg"
git lfs track "*.ogg"
git lfs track "*.wav"
```

---

## 2.4. Flux de travail quotidien (workflow)

1. **Toujours pull avant de commencer**
   ```bash
   git pull origin main
   ```
2. Travailler dans des **branches de feature**.
3. Faire des **commits fréquents** et clairs.
4. **Pousser régulièrement**.
5. Utiliser des **pull requests** pour les révisions.

### Stratégie de branches :

* `main` → version stable
* `dev` → intégration
* `feature/xxx` → nouvelles fonctionnalités
* `hotfix/xxx` → corrections urgentes

---

## 2.5. Paramètres du projet (`project.godot`)

Le fichier `project.godot` contient la quasi-totalité de la configuration globale du projet (Input Map, Rendering, Audio, Physics, Langues, Autoloads, etc.). Toute modification via le menu Godot: Project → Project Settings y ajoute ou modifie des lignes.

### Pourquoi c'est important
* C'est un fichier texte versionné; des changements non coordonnés peuvent créer des conflits ou des régressions (suppression d'un Input, d'un Autoload, changement de backend de rendu, etc.).
* Les diffs peuvent être volumineux si plusieurs sections sont ajustées en même temps.

### Bonnes pratiques de modification
1. Limiter les modifications à une catégorie à la fois (ex: Input Map, puis commit séparé pour Rendering).
2. Faire un commit dédié avec un message clair, par exemple:
   * `chore: ajout actions input Jump/Attack`
   * `feat: ajout autoload GameState`
3. Éviter de "tester" des options en les changeant puis rechangeant avant un commit — cela génère du bruit dans l'historique.
4. Ne pas supprimer des entrées Input existantes sans validation d'équipe (risque de casser des scripts existants).
5. Lors d'ajout d'Autoloads (Singletons), documenter leur rôle dans une note (README ou wiki interne).

### Gestion des conflits sur `project.godot`
1. Ouvrir le diff et repérer les sections modifiées (les blocs sont souvent préfixés par `[category]`).
2. Concilier manuellement les listes (ex: actions d'input) en conservant toutes les entrées pertinentes.
3. Vérifier après merge dans Godot: recharger le projet, tester les inputs / autoloads concernés.
4. Si un conflit est complexe, décider d'une version de référence (ex: celle de la branche principale) et ré-appliquer les ajouts manquants.

### Astuces réduction de bruit
* Ajouter toutes les nouvelles actions Input avant de régler leurs paramètres secondaires (deadzone, etc.).
* Grouper les autoloads liés (ex: `AudioManager`, `GameState`) dans un seul commit.
* Éviter les modifications multiples de Render Settings tôt dans le projet.

### Checklist avant commit `project.godot`
- [ ] Les changements correspondent à un seul objectif
- [ ] Pas d'entrée supprimée par erreur
- [ ] Autoloads testés au démarrage
- [ ] Input actions déclenchables en jeu
- [ ] Message de commit explicite

En résumé: modifier `project.godot` avec parcimonie et intention pour réduire les risques de conflits et préserver un historique lisible.

---

# 3. 🗂️ Organisation du projet

## 3.1. Structure recommandée

```
project/
├── scenes/
│   ├── characters/
│   ├── environments/
│   ├── ui/
│   └── levels/
├── scripts/
│   ├── systems/
│   └── utilities/
├── assets/
│   ├── graphics/
│   ├── audio/
│   └── fonts/
├── autoload/
└── data/
```

---

## 3.2. Répartition du travail (selon les profils)

* Programmation : systèmes, gameplay
* Art & animations
* Audio
* Level design
* Personnages / UI / environnements séparés
* Par systèmes :
  * Personnage → dev A
  * IA ennemie → dev B
  * UI → dev C, etc.

👉 Une bonne division réduit les conflits Git.

---

# 4. 🧩 Bonnes pratiques pour éviter les conflits

## 4.1. Gestion des scènes Godot

1. **Utiliser des scènes instanciées plutôt que l’héritage** → plus modulaire, moins de conflits.
2. **Scènes petites et atomiques**
   * Chaque scène a une seule responsabilité.
   * Évite les grosses scènes monolithiques impossibles à fusionner.
3. **Séparer clairement les ressources**
   * Scripts, assets et scènes ne doivent pas être mélangés.
   * Utiliser des conventions de nommage cohérentes.

---

## 4.2. Collaboration sur le code

1. **Autoloads pour les systèmes globaux** (Gestion du jeu, Audio, Sauvegarde, Paramètres globaux)
2. **API claires et découplées**
   * Utiliser fortement les **signaux** pour limiter les dépendances.
   * Éviter les accès directs entre objets non reliés.
3. **Style de code uniforme**
   * Convention commune (indentation, nommage…).
   * Commenter la logique complexe.

---

# 5. 💬 Communication et gestion de projet

### Outils recommandés :

* **Discord / Slack** → communication rapide
* **Trello / Notion / GitHub Issues** → gestion des tâches
* **Documentation partagée** → wiki, Google Docs

### Rythmes efficaces :

* Stand-up quotidien (5 min)
* Planification hebdomadaire
* Revue de sprint
* Rétroaction (retrospective)

---

# 6. 🔧 Résolution des merge conflicts

Les conflits Git sont normaux.

### Pour les éviter :

* Communiquer sur les fichiers modifiés
* Pull fréquent
* Commits petits et cohérents
* Branches de feature

### Pour les résoudre :

1. Ne pas paniquer
2. Parler à la personne impliquée
3. Utiliser un outil de merge (VS Code, Meld…)
4. Tester les scènes après résolution
5. Documenter tout changement majeur

### Cas particuliers Godot :

* Les fichiers `.tscn` sont parfois difficiles à fusionner
* Toujours recharger le projet Godot après un merge
* Tester les scènes affectées immédiatement

---

# 7. 🧰 Outils essentiels

* **GitKraken**, **SourceTree**, ou ligne de commande
* **VS Code** + extensions Godot
* **Discord**, **Slack**, **Teams**
* Gestion de projet : **Trello**, **Notion**, **GitHub Projects**

---

# 8. 🚀 Techniques avancées

## 8.1. Intégration continue (CI)

* Tests automatisés
* Builds automatiques
* Déploiement multiplateforme avec GitHub Actions

## 8.2. Pipeline d’assets

* Directives claires pour les artistes
* Paramètres d’import uniformes
* Scripts de vérification

## 8.3. Revue de code

* Pull requests obligatoires
* Standards internes
* Discussions sur les changements majeurs

---

# 9. ⚠️ Erreurs fréquentes

## 9.1. “Ça marche sur ma machine”

Solution : environnements cohérents, documenter dépendances et versions, éventuellement conteneurs (Docker)

## 9.2. Écraser le travail d’un autre

Solution : pull avant chaque session, branches dédiées, communiquer

## 9.3. “Briser” la build

Solution : tester avant chaque commit, tests automatisés, `main` doit rester stable

## 9.4. Conflits d’assets

Solution : ownership clair des assets, paramètres d’import standardisés, versionner les fichiers de configuration

---

# 10. 🏁 Conclusion

Une collaboration réussie sur Godot repose sur :

* Git bien configuré
* Organisation claire du projet
* Communication constante
* Scènes petites et modulaires
* Processus de révision cohérents

Avec ces principes, l’équipe peut réellement se concentrer sur l’essentiel : **créer un excellent jeu ensemble**.

---

# 11. ✅ Check-list rapide

### Avant de commencer

* [ ] Dépôt Git prêt
* [ ] `.gitignore` configuré
* [ ] Structure du projet établie
* [ ] Outils de communication et gestion de tâches
* [ ] Standards de code définis

### Travail quotidien

* [ ] Pull avant de coder
* [ ] Commits fréquents et clairs
* [ ] Push régulier
* [ ] Communication des tâches en cours

### Maintenance hebdomadaire

* [ ] Révision & merge des branches
* [ ] Mise à jour de la doc
* [ ] Planification des features
* [ ] Nettoyage de la dette technique

# Références
- [Original Beerday Games Blog Post](https://beerday.games/blogs/collaborating-on-godot-projects-a-complete-guide-for-teams)
