# Utilisez une image Node.js
FROM node:20

# Installer Angular CLI globalement
RUN npm install -g @angular/cli

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers du projet
COPY . .

# Exposer le port 4200
EXPOSE 4200

# Démarrer le serveur de développement Angular
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200", "--poll", "2000"]
