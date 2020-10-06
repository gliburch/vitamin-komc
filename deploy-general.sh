JEKYLL_ENV=production bundle exec jekyll build --config _config_general.yml &&
firebase deploy --only hosting:general