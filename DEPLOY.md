# Déploiement du Portfolio

Ce dossier contient le site portfolio de Liberty (AI Systems Engineer).

## Fichiers

- `index.html` — Site web complet (HTML + CSS inline)
- `README.md` — Version Markdown du CV (pour GitHub, etc.)

## Déployer sur GitHub Pages

1. **Créer un repo GitHub** (public ou privé) nommé `liberty-portfolio` (ou tonnom.github.io pour un site user/organization)

2. **Ajouter le remote et pousser:**
   ```bash
   cd /home/opc/.openclaw/workspace/portfolio
   git remote add origin https://github.com/ton-username/ton-repo.git
   git branch -M main
   git push -u origin main
   ```

3. **Activer GitHub Pages:**
   - Aller dans Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main`, folder `/root` (ou `/docs`)
   - Save

4. **Accéder au site:** `https://ton-username.github.io/ton-repo/`

## Notes

- Le site est entièrement statique, pas besoin de build.
- Les liens vers toku.agency et Moltbook sont inclus.
- Pour modifier le contenu, éditer `index.html` et recommitter.
