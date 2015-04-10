# Déclaration commune contre la surveillance généralisée d'Internet

Ce dépôt contient les sources de la page des acteurs du numérique signataires de la déclaration.


## Installation

Les sources utilisent [Brunch](http://brunch.io/) pour construire le code de production. Vous avez donc besoin d'un envrionnement node.js avec Brunch d'installé :

```sh
npm install -g brunch
```

Installez les dépendances liées au projet :

```sh
cd <projet>
npm install
```


## Build

Pour lancer la construction du projet :

```sh
cd <projet>
brunch build --production
```


## Développement

Brunch embarque un serveur HTTP léger couplé à BrowserStack pour gérer la partie LiveReload. Pour le lancer (avec son watcher) :

```sh
cd <projet>
brunch watch --server
```

et pointez votre butineur sur [localhost:3333](http://localhost:3333/).
