JEKYLL_ENV=production jekyll build --config _config_general.yml &&
firebase deploy --only hosting:general &&
JEKYLL_ENV=production jekyll build --config _config_cancer.yml &&
firebase deploy --only hosting:cancer