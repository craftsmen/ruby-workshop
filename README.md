Ruby / Rails : premier rencard !
================================

Vous allez participer à un workshop vous permettant de découvrir le langage Ruby et l'un
des frameworks les plus connus : Ruby on Rails. Ce repo contient l'intégralité du code
source que vous allez manipuler au fur et à mesure de l'avancée du workshop, ainsi que
les éléments de configuration nécessaires pour que votre environnement soit opérationnel.

N'hésitez pas à soumettre des suggestions/améliorations en proposant des pull request :
l'idée ici est de créer un environnement d'apprentissage le plus efficace possible,
avec le plus grand nombre de contributeurs possible.

Initialisation de votre environnement
-------------------------------------

La première étape, avant même de commencer à découvrir le langage, est la mise en place
et la configuration de votre environnement de développement.

Afin que tous les participants au workshop partagent exactement le même espace de travail
et les mêmes outils, nous utilisons l'outil Vagrant vous permettant d'obtenir une
machine virtuelle identique aux autres participants.

Vous devez donc commencer par installer Vagrant sur votre poste, en le téléchargeant
ici : http://www.vagrantup.com/downloads

> Note : si vous aviez une version de Vagrant préalablement installée sur votre poste,
> vérifiez bien que celle-ci est supérieure à la 1.6 en tapant `vagrant --version`.
> Ceci est nécessaire pour que Vagrant trouve la machine virtuelle utilisée dans
> ce workshop.

Une fois l'outil installé, clonez ce repository sur votre machine, puis initialisez
votre machine virtuelle Vagrant :

```sh
git clone git@gitlab.com:mainelabs/workshop-ruby.git
cd workshop-ruby
vagrant up
```

Si vous n'obtenez pas d'erreur, votre machine virtuelle est opérationnelle et en
cours de fonctionnement ! Cette machine virtuelle partage son répertoire interne
`/vagrant` avec le répertoire courant de votre système : tous les fichiers que
vous déposez ou éditez dans ce répertoire sont disponibles dans votre box Vagrant,
et inversement.

Test de votre environnement
---------------------------

Vous pouvez maintenant tester votre environnement de développement, en vous y connectant :

```sh
vagrant ssh
ruby --version
```

Vérifiez que la version de ruby est bien la version 2.1.1 (ou plus). Puis, vérifiez
dans la box que vous retrouvez bien dans le répertoire `/vagrant` les fichiers du
repo git courant :

```sh
cd /vagrant
ls
```

Vous devriez obtenir, dans la liste des fichiers, le fichier README.md. Si c'est
le cas, vous êtes prêt(e) à découvrir le langage avec nous !

Aide et questions
-----------------

Ce workshop étant gratuit, nous ne garantissons pas de service après-vente ;-) Néanmoins,
si jamais vous rencontrez des problèmes lors de l'installation de votre machine, ou si
les étapes de ce tutoriel ne sont pas claires, n'hésitez pas à me contacter sur mon
mail scharrier@gmail.com
