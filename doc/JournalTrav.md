__29.08.25__

*temps :* 1h

*action :* 
- écoute des consignes et des informations du projet avec m.Carrel
- lecture du CdC
- lecture du barême et des requirements du projet.
_________________________

*temps :* 45 min

*action :* 
- création du repo pour le projet puis invitation de m.Carrel comme collaborateur au repo.
- relecture et signature du CdC
- échange avec M.Carrel sur mon idée de programme et les moyens de réalisations
- recherches sur les moyens de réaliser mon idée avec google, StackOverflow et ChatGPT
- création du rapport contenant tous les détails sur l'idée et les moyens de réalisations qui seront utilisés dans le projet
- création d'un simple schéma pour avoir un support visuel afin de mieux comprendre l'ordre des processus.
- commit push du projet contenant _CdC_ signé, _rapport_ complet avec markdown et _JournalTrav_ vide
_________________________

*temps :* 20 min

*action :* 
- remplissage du journal de travail en utilisant le markdown et des conventions pour obtenir un document structuré
- commit push du journal sur git

_________________________

__05.09.25__

*temps :* 30min

*action :* 
- création d'une vm Debian sur AWS
- installation de micro + dotnet + git
- installation de VeraCrypt 
- essai avec M. Carrel de VeraCrypt pour crypter un volume contenant mes fichiers de clés privées.

J'ai créé une vm debian sur AWS et installé micro ainsi que dotnet pour avoir un éditeur de code ainsi qu'un compilateur C# comme ça je pourrais coder mon projet depuis une interface linux car j'ai besoin d'apprendre ça. J'ai aussi installé VeraCrypt pour encrypter un volume contenant mes clés privées puis j'ai mis la clé encryptée de ma vm dans un nouveau repo git privé

_________________________

*temps :* 30min

*action :* 
j'ai créé ma planification sur excel puis je l'ai push sur git

_________________________

*temps :* 1h45

*action :* j'ai créé bon nombre d'issues, puis de user stories, puis de tests d'acceptances sur gitProject et ensuite j'ai parlé à M. Carrel car mes stories étaient faites d'un point de vue DEV a la place d'un point de vue USER et donc il m'a bien expliqué comment les faires puis j'ai commencé à les refaires bien - pareil pour les tests d'acceptances

_________________________

*temps :* 15min

*action :* rédaction du journal de travail, puis plusieurs commits git et enfin la release de S2.



__12.09.25__

*temps :* 30min

*action :* création du mcd sur looping puis du script mySQL

_________________________

*temps :* 1h

*action :* discussion avec m.Carrel sur mes users stories et la manière de les faire, la syntaxe ainsi que la manière de les évaluer car ce n'était pas limpide de mon côté, puis nous avons fait un schéma de ce a quoi ressemblerait mon app pour que toutes les fonctionnalités annoncées puissent être accessible.


_________________________

*temps :* 30 min

*action :* j'ai refait mes user-stories après la discussion avec m. Carrel 

_________________________

*temps :* 45 min

*action :* j'ai créé la maquette de mon app pour avoir un modèle visuel de mon app ainsi qu'un moyen supplémentaire d'évaluer mon travail en se basant sur la maquette.


_________________________

__19.09.25__
- absent

_________________________

__26.09.25__


*temps :* 1h

*action :* 
 - j'ai fais des recherches sur internet pour voir si quelqu'un avait déjà fait un projet similaire au mien, afin de m'inspirer de ce travail (sans plagier)
 - j'ai ensuite demandé à une IA de m'aider déjà simplement pour la structure de mon projet, quels fichiers j'aurais besoin pour me créer déjà l'architechture de mon projet.
 - ensuite en regardant le code de quelqu'un qui a fait un projet utilisant aussi l'API finnhub mais qui était en python j'ai pu comprendre ce que j'allais devoir faire "techniquement" dans les grandes lignes

_________________________

 
*temps :* 30min

*action :* 
- j'ai créé un docker-compose pour avoir un container docker avec ma db.
- j'ai aussi amélioré mon fichier de création de db.

_________________________


*temps :* 1h

*action :* 
- J'ai regardé des tutos sur Forms car je suis le seul de la classe qui n'a encore jamais utilisé cette technologie, j'ai testé quelques formes et params de base de ScottPlot
- j'ai notamment essayé de créer un graphiques avec l'aide de l'IA (pas sur mon projet directement, juste dans un dossier de test que j'ai détruit)

_________________________


*temps :* 45min

*action :* 
- j'ai lu de la documentation sur les connections avec HttpClient, sur linQ et aussi sur comment connecter ma db qui est maintenant dans un container docker a mon app, mais sans grand succès.
- puis j'ai cherché comment faire sur internet et j'ai trouvé que c'était car je n'avais pas créé de user à ma db et donc que j'essayais de me connecter avec root, mais c'est très déconseillé et aussi le password n'est pas "root" mais "rootpassword". En bref j'ai réglé l'erreur en modifiant mon fichier et en ajoutant un user et en me connectant avec ce User.