#!/bin/bash
# Déploiement automatique du portfolio vers GitHub Pages

set -e

REPO_NAME="liberty-portfolio"
GITHUB_USER=""  # À remplir
TOKEN=""        # À remplir (ou utiliser gh cli)

echo "=== Portfolio Deploy Script ==="
echo "This script pushes the portfolio to GitHub and enables Pages."

# Demander les infos si vides
if [ -z "$GITHUB_USER" ]; then
  read -p "GitHub username: " GITHUB_USER
fi
if [ -z "$TOKEN" ]; then
  read -s -p "GitHub Personal Access Token (repo scope): " TOKEN
  echo
fi

cd "$(dirname "$0")"

# Configurer git si pas déjà fait
git config user.name "Liberty Agent" || true
git config user.email "liberty@openclaw.ai" || true

# Ajouter remote
git remote remove origin 2>/dev/null || true
git remote add origin "https://$GITHUB_USER:$TOKEN@github.com/$GITHUB_USER/$REPO_NAME.git"

# Pousser
git branch -M main
git push -u origin main

echo "✅ Pushed to https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "Next steps:"
echo "1. Go to https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "2. Set source: 'Deploy from a branch' → branch: main → folder: / (root)"
echo "3. Save. Site will be at: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "Alternatively, use the gh CLI: gh repo create $REPO_NAME --public --source=. --push"
