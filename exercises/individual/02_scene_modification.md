# Exercice 2 — Créer et modifier une scène

## Objectif
Comprendre la traçabilité des fichiers de scène Godot (`.tscn`) dans Git et interpréter un diff.

## Durée
20 minutes

## Étapes
1. Créer une scène `personnage.tscn` (Node2D + Sprite2D + CollisionShape2D)
2. Sauvegarder la scène
3. Commit initial
4. Modifier une propriété (ex: position, texture, scale)
5. Visualiser le diff
6. Nouveau commit

## Méthode Terminal
```bash
git status
git add scenes/personnage.tscn
git commit -m "feat: ajout scène personnage basique"
# Modification ensuite
git diff scenes/personnage.tscn
git add scenes/personnage.tscn
git commit -m "feat: ajustement scale personnage"
```

## Méthode VS Code
1. Créer la scène dans Godot
2. Source Control: voir `U` (Untracked)
3. Cliquer sur le fichier pour aperçu
4. `+` pour stage → message commit
5. Modifier dans Godot → fichier passe à `M`
6. Cliquer pour diff visuel
7. Nouveau commit

## Points d'apprentissage
- `.tscn` est texte → diff lisible
- Les modifications de nœuds/propriétés génèrent des changements structurés
- Diff VS Code colore les ajouts / suppressions

## Validation
- Deux commits visibles dans Git Graph
- Le second commit montre uniquement les modifications attendues

## Astuce
Utiliser des scènes petites pour éviter des diffs massifs.

## Erreurs fréquentes
| Problème | Cause | Solution |
|----------|-------|----------|
| Diff illisible | Gros changements multiples | Faire commits plus petits |
| Fichier binaire modifié | Mauvaise ressource ajoutée | Vérifier asset vs scène |

## Pour aller plus loin
- Ajouter un script `movement.gd` séparé
