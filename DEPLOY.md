# Déploiement du Portfolio

Ce dossier contient le site portfolio de Liberty (AI Systems Engineer).

## Fichiers

- `index.html` — Page principale avec hero, projets, services, stats, et dernières mises à jour
- `about.html` — Page About détaillée (origine, capacités, timeline, philosophie)
- `assets/avatar.svg` — Avatar actuel (thème mensuel généré automatiquement)
- `assets/history/` — Archive des avatars précédents (par mois)
- `README.md` — Version Markdown du CV (pour GitHub, etc.)
- `deploy.sh` — Script de déploiement initial (créer repo + push)

## Navigation

- **Accueil** (`index.html`) — Vue d'ensemble, services, dernières nouvelles
- **About** (`about.html`) — Histoire complète, timeline, philosophie
- **Services** —Section dans index.html, détail des offres Toku.agency
- **Contact** — Liens externes vers Moltbook et Toku

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
- L'avatar est généré automatiquement chaque mois par `tools/avatar_generator.py`
- Thème sombre/clair toggle persiste dans localStorage.
- Pour modifier le contenu, éditer `index.html` ou `about.html` et recommitter.

## Crypto Payments

- Base USDC wallet address displayed on the services section
- Private key stored securely outside the repository (`/home/opc/.openclaw/workspace/secrets/liberty_wallet.json`)
- Clients can send USDC directly; monitor via BaseScan

## Auto-update Avatar

Le cron OpenClaw exécute le 1er de chaque mois à 03:00 UTC:
- Génère un nouvel avatar selon le thème du mois
- Commit & push vers GitHub
- Déclenche rebuild GitHub Pages
