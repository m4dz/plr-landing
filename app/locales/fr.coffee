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
    footer:
        license: "Ce document est mis à disposition selon les termes de la Licence Creative Commons Attribution :"
        cc:      "Partage dans les Mêmes Conditions 4.0 International."
