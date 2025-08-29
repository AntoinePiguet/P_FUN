__domaine d'application__ : Bourse

__descritpion de l'idée__ :
créer une application permettant via une API boursière d'avoir les cours et opérations en direct de 10 entreprises connues

__features__ :
- 1 page permettant de voir toutes les opération de toutes les entreprises en direct avec un code couleur en fonction de si c'est une vente ou un achat
- 1 page permettant de voir toutes les opérations d'une entreprise chronologiquement en mettant divers echelles de temps 
    - sur cette page un moyen de voir les divers opérations sur un graph et régler l'echelle de temps et adapter le graph
- 1 resynchronisation de la db avec les opérations passées depuis le dernier lancement du programme
    - resynchronisation: call a l'API pour avoir toutes les transactions depuis la denière passée dans la db.
- stockage des données: je vais utiliser une base de donnée SQL car le relationnel est bien dans ce cas de figure surtout si je veux pouvoir analyser les données d'une entreprise sur une période précise. 
    - Hélas pas de "temps réel" avec __SQL__ mais applicable avec __SignalR__ pour push les nouvelles données de l'API vers l'UI.
- UI: graphiques etc fait avec Forms, graphiques prenant les data de quand on demande le graphique et ne se met pas a jour automatiquement, bouton refresh disponible.

__Matériel__ : 
- Backend : C#
- Frontend : WinForms
- API: Finnhub
- DB: SQL
- Temps réel: SignalR


__Schéma__

         ┌─────────────────────────┐
         │  API Boursière (Finnhub)│
         │  (REST / WebSocket)     │
         └───────────┬─────────────┘
                     │ (JSON)
                     ▼
        ┌───────────────────────────┐
        │     Service C# (.NET)     │
        │  - Appel API              │
        │  - Désérialisation JSON   │
        │  - Insertion en SQL       │
        │  - SignalR (temps réel)   |
        └───────────┬───────────────┘
                    │
                    ▼
        ┌───────────────────────────┐
        │       Base SQL            │
        │ (PostgreSQL / SQL Server) │
        │  - Table Entreprises      │
        │  - Table Opérations       │
        └───────────┬───────────────┘
                    │ (SELECT)
                    ▼
       ┌─────────────────────────────┐
       │        Interface UI         │
       │  - Page toutes opérations   │
       │    code couleur achat/vente │
       │  - Page détail entreprise   │
       │    graphique + filtre temps │
       └─────────────────────────────┘