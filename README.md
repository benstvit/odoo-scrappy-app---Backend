# odoo-scrappy-app

Le but du programme est d'affiché dans une application web les données des contacts (par exemple: prénom, nom, email) d'une application Odoo.
Donc il y a deux composants: 
- une application front: tu choisis le langage
- une application back: tu choisis le langage
L'application front doit se connecter au back qui récupère les données depuis Odoo.
L'idée est donc de te faire travailler sur tes compétences front & back mais en plus de cela de faire une intégration facile avec Odoo.

On a créé dans une instance odoo: https://chift.odoo.com, un utilisateur pour toi : ... et mdp: ...

Voici la documentation Odoo pour se connecter à leur API: https://www.odoo.com/documentation/15.0/developer/api/external_api.html
Tu verras qu'il utilise un vieux truc XML-RPC mais il y a des exemples qui montre comment faire.
Pour te connecter tu as encore besoin des informations suivantes:
- url/host: ...
- database: ...
- version: v15
- res.partner correspond aux contacts dans Odoo pour la fonction 'search'

Pour voir les contacts dans Odoo, tu peux aller ici: https://chift.odoo.com/web#cids=1&action=345&model=res.partner&view_type=kanban&menu_id=230
Donc l'idée est de pouvoir montrer cela dans ta page à toi de la manière qui te semble la meilleure.
