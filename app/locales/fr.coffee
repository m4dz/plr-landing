module.exports =
    meta:
        title:       "Déclaration commune contre la surveillance généralisée d'Internet"
        description: "Les acteurs du numériques français unis contre la surveillance généralisée d'internet : #niPigeonsNiEspions"
        keywords:    "projet loi renseignement, loi renseignement, niPigeonsNiEspions, surveillance, internet, numérique, 1984"
    header:
        title: "Nous, acteurs du numérique, sommes contre<br>la surveillance généralisée d'Internet."
        quote: "Naturellement, il n’y avait pas moyen de savoir si, à un moment donné, on était surveillé."
    nav:
        manifesto: "Déclaration"
        signatories: "Signataires"
        faq: "FAQ"
    main:
        content: """
            Nous, *acteurs du numérique français*,

            Sommes contre la surveillance généralisée d'Internet qui est inefficace et dangereuse.

            - **inefficace** : les personnes motivées utiliseront facilement des outils de chiffrement pour y échapper.
            - **dangereuse pour la croissance** : nos clients internationaux perdront confiance dans nos entreprises numériques.
                - **Les hébergeurs français**, qui connaissent une croissance de 30% par an, [se verront obligés de **délocaliser leurs datacenters et leurs emplois à l'étranger**][1] pour que leurs clients internationaux continuent à leur confier leurs précieuses informations.
                - **Nos champions de l'internet des objets**, véritables fers de lance, devront expliquer à leurs clients étrangers que l'objet connecté installé dans leur salon n'est pas un espion (alors qu'il le sera).
                - **Les éditeurs de solutions SaaS** devront convaincre leurs clients que non, malgré les dispositifs algorithmiques sous scellés (les « boites noires ») dans leur <em>datacenter</em>, ils n'ont pas à craindre l'espionnage industriel.
                - **Les entreprises de conseils et service**, alors que la France compte plusieurs acteurs internationaux, vont se retrouver décrédibilisées par cette exception sécuritaire française.
                - **L'ensemble de notre écosystème de R&amp;D** s'en trouvera ainsi pénalisé alors que justement nous avons besoin de créer des cercles vertueux.
                - Les entreprises du numérique créent de l'emploi et sont le relais de croissance dont la France a besoin. **Mettre Internet sous surveillance, c'est sacrifier l'avenir numérique de la France, ses emplois et sa contribution à l'économie française**.

            Mettre Internet massivement sous surveillance, c’est ouvrir la porte à un espionnage incontrôlable, sans aucune garantie de résultat pour notre sécurité.

            Mettre Internet massivement sous surveillance, c’est nous décrédibiliser vis-à-vis de nos clients et nous pousser à une délocalisation progressive pour continuer à offrir un service similaire à celui de nos concurrents internationaux.

            Mettre Internet massivement sous surveillance, c'est aussi sacrifier l'avenir numérique de la France, ses emplois et sa contribution à l'économie française.

            De ce fait, nous demandons une révision en profondeur du projet de loi sur le renseignement, à commencer par le retrait pur et simple du dispositif nous imposant l'installation des « boites noires ».
        """
        call: "Vous êtes un acteur du numérique français ? Signez cette déclaration et rejoignez les %{n} signataires sur la liste #niPigeonsNiEspions."
        cta:  "Signez ici"
    form:
        title:  "Je souhaite souscrire à la <em>Déclaration commune contre la surveillance généralisée d'Internet</em> et apparaître sur cette page comme signataire."
        fields:
            name:
                label: "Nom"
            firstname:
                label: "Prénom"
            email:
                label: "E-mail"
            company:
                label:    "Société / Organisation / Association"
                sublabel: "(vérifiez que vous avez le pouvoir d'engager votre organisation)"
            category:
                label: "Catégorie"
                placeholder: "Sélectionnez votre catégorie"
                options:
                    agenceweb:    "Agence"
                    autre:        "Autre"
                    ecole:        "École"
                    ecommerce:    "e-commerce"
                    fai:          "FAI / Réseau"
                    freelance:    "Freelance"
                    hebergeur:    "Hébergeur"
                    investisseur: "Investisseur"
                    media:        "Media"
                    organisation: "Organisation"
                    securite:     "Sécurite"
                    soft:         "Logiciel"
                    startup:      "Startup"
            cardline:
                label:    "Mention du cartouche"
                sublabel: "(votre nom apparaîtra par défaut)"
        success:  "Votre demande de signature nous a bien été transmise. Merci pour votre soutien, nous vous contacterons rapidement."
        error:    "Merci de patienter, nous transmettons votre demande d'inscription."
        required: "Ce champ est requis."
        email:    "Veuillez entrer une adresse email valide."
    signatories:
        title: "Signataires"
        filters:
            title: "Filtres"
            all:   "Tous"
            none:  "Aucun"
    faq: [
        title: "Êtes-vous les seuls à vous sentir concernés ?"
        desc: """
            Rarement un texte de loi aura autant fait l'unanimité contre lui : [le Conseil d'État][2], [la CNIL][3], [l'ARCEP][4], [le Défenseur des droits][5], [le patron de la commission de surveillance des écoutes téléphonique][6], [le juge anti-terroriste Marc Trevidic][7] ont unanimement émis des réserves sur ce projet de loi.

            Dans le domaine informatique, [les éditeurs de logiciels de l'AFDEL][8], [les fournisseurs de services en ligne de l'ASIC][9], [les membres du CNNum][10], [Renaissance Numérique][11], [les sociétés informatiques du Syntec Numérique][12] ont aussi clairement communiqué leur profonde inquiétude.

            [Une pétition][13] a réuni plus de 100 000 signatures en quelques jours.
        """
    ,
        title: "Les opposants au projet de loi laissent entendre que la démocratie serait en jeu, n'est ce pas exagéré ?"
        desc: """
            Il y a tout juste 70 ans, la France, l'Europe, le monde étaient en guerre. La stabilité de la démocratie exige de ne pas présumer des intentions des gouvernements dans 70 ans. Or aujourd'hui seuls les états autoritaires ont un usage efficace de la surveillance généralisée, pour identifier leurs dissidents. Qui peut dire que dans 10 ans, 30 ans, la France n'aura pas affaire à un état policier ? Le [juge anti-terroriste Marc Trévédic ne dit pas autre chose][7].
        """
    ,
        title: "Sans cette loi les terroristes vont pouvoir communiquer pour s'organiser tranquillement, c'est important de pouvoir écouter ce qu'ils se disent, non ?"
        desc:  """
            Il existe de nombreux outils gratuits qui permettent de chiffrer les différents usages d'Internet comme le navigateur TorBrowser, les VPN, la messagerie instantanée avec OTR, etc. chiffrer est très facile et permet de passer inaperçu sur Internet. C'est pour cela que surveiller tous les Français ne permettra pas d'empêcher le terrorisme.
        """
    ,
        title: "Je n'ai rien à cacher, donc je ne crains rien ?"
        desc:  """
            Chacun de nous a quelque chose à cacher. C'est pourquoi nous avons des loquets aux portes des toilettes, des rideaux aux fenêtres de nos chambres à coucher, et que nous ne souhaitons pas que notre employeur sache qu'on envoie des CV ailleurs. Rien de tout cela n'est illégal, et pourtant nous avons besoin de cette intimité. Encore un doute ? Envoyez-nous votre déclaration d'impôts, vos trois dernières fiches de paye et le mot de passe de votre compte email (c'est promis, on ne touche à rien !) pour que nous parlions de tout ça. :)
        """
    ,
        title: "Mais les boites noires ne vont scruter que les méta-données ?"
        desc: """
            Les méta-données, ce sont les données à propos des données. Dans un email, elles comprennent l'adresse de l'expéditeur, du destinataire, le type de document, sa taille, sa date d'expédition. Ces données, structurées,  sont faciles à traiter par un ordinateur, bien plus facilement que les données non structurées comme un message vocal ou une image. Il est du coup très facile pour un ordinateur de croiser les méta-données pour comprendre ce que fait un individu. Prenons l'exemple d'une série d'appels téléphoniques dont on ne dispose que des méta-données. Un individu reçoit un appel d'un centre de dépistage du Sida. Il appelle ensuite son médecin, et trois personnes dont une seule qu'il a appelée récemment, puis [SOS Amitié][14]. On ne sait rien du contenu des conversations, mais on devine aisément ce qui se passe.

            Il est naïf d'affirmer que l'on peut anonymiser des méta-données, en particulier dans un contexte général de croisement des données.
        """
    ]
    footer:
        license: "Ce document est mis à disposition selon les termes de la Licence Creative Commons Attribution :"
        cc:      "Partage dans les Mêmes Conditions 4.0 International."
