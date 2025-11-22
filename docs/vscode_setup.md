# 🛠️ Configuration VS Code pour projet Godot + Git

## 1. Extensions indispensables
| Extension | Rôle | Id Marketplace |
|----------|------|----------------|
| GitLens | Historique, blame, exploration des commits | eamodio.gitlens |
| Git Graph | Visualisation graphique des branches | mhutchie.git-graph |
| godot-tools | Syntaxe GDScript, intégration | geequlim.godot-tools |
| EditorConfig (optionnel) | Uniformiser style de code | EditorConfig.EditorConfig |
| Live Share (optionnel) | Pair programming temps réel | ms-vsliveshare.vsliveshare |

## 2. Paramètres recommandés (`.vscode/settings.json`)
```json
{
  "git.enableSmartCommit": true,
  "git.confirmSync": false,
  "git.autofetch": true,
  "gitlens.codeLens.enabled": true,
  "files.autoSave": "afterDelay",
  "files.autoSaveDelay": 1000,
  "editor.formatOnSave": true,
  "[gdscript]": {
    "editor.formatOnSave": false
  }
}
```

## 3. Raccourcis utiles
| Action | Raccourci |
|--------|-----------|
| Source Control | `Ctrl+Shift+G` |
| Palette de commandes | `Ctrl+Shift+P` |
| Commit (zone Source Control) | `Ctrl+Enter` |
| Terminal intégré | `` Ctrl+` `` |
| Rechercher fichier | `Ctrl+P` |

## 4. Workflow de base dans VS Code
1. Pull avant de commencer (`...` → Pull ou terminal)  
2. Créer / basculer de branche (barre de status en bas)  
3. Coder / tester dans Godot  
4. Stager les changements (`+`)  
5. Commit (`Ctrl+Enter`) avec message clair  
6. Push (icône nuage ou terminal)  
7. Créer PR (notification VS Code ou via GitHub/GitLab)  

## 5. Résolution de conflits
Quand un conflit apparaît :
- VS Code marque le fichier avec `C`
- Ouvrir le fichier : sections avec `<<<<<<<`, `=======`, `>>>>>>>`
- Utiliser les boutons : Accept Current / Incoming / Both
- Re-tester dans Godot
- Commit de résolution : `fix: résolution conflit vitesse joueur`

## 6. Git Graph
- Ouvrir: `F1` → "Git Graph: View Git Graph"  
- Vérifier qu'aucune branche ne dérive trop longtemps  
- Nettoyer les branches fusionnées (bouton Delete Branch)  

## 7. Astuces productivité
- Préfixes de commit : `feat:`, `fix:`, `chore:`, `refactor:`, `docs:`  
- Ajouter un snippet pour messages de commit fréquents (User Snippets)  
- Utiliser "Timeline" sur fichiers sensibles (scripts système, scènes principales)  

## 8. Sécurité / Qualité
- Ne pas commit `.godot/` ni `.import/`
- Vérifier avant push que le jeu démarre
- Utiliser commits WIP seulement sur branches feature (éviter sur main/dev)

## 9. Exemple de message de commit clair
```
feat: ajout mouvement de base du joueur (ZQSD + vitesse 300)
```

## 10. Checklist avant PR
- [ ] Branche à jour avec `main`
- [ ] Pas de conflit restant
- [ ] Jeu démarre
- [ ] Pas de fichier temporaire ajouté
- [ ] Message de commit explicite
- [ ] Description PR remplie (objectif + tests)
