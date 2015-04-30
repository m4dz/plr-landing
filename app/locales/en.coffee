module.exports =
    meta:
        title :      "Joint statement against mass surveillance of the Internet"
        description: "French actors of the digital economy united against mass surveillance of the Internet: #niPigeonsNiEspions (#NoFoolsNoSpies)"
        keywords:    "law intelligence bill, intelligence law, niPigeonsNiEspions, noFoolsNoSpies, surveillance, internet, digital, 1984"
    header:
        title: "We, as actors of the digital economy,<br>stand against the mass surveillance of the Internet."
        quote: "There was of course no way of knowing whether you were being watched at any given moment."
    nav:
        manifesto:   "Statement"
        signatories: "Signatories"
        faq:         "FAQ"
    main:
        content: """
            We, *as members of the French digital economy*,

            stand against the widespread surveillance of the Internet, which is not only ineffective but dangerous too

            - **Ineffective**: motivated people can easily use cryptographic tools to evade it.
            - **Dangerous to the economic growth**: international partners will lose their trust in our digital businesses.
                - **French hosting services**, currently performing at a yearly 30% growth rate, [will have to **relocate their data-centers and associated jobs overseas**][1] if they want their international clients to keep trusting them with their precious data.
                - **Our Internet of Things start-ups**, true promoters of the industry, will have to tell their customers that the connected device in their living room is not a spying appliance, even though it will be.
                - **Saas software companies** will have to convince their customers they should not fear industrial espionage, although sealed-off algorithmic "black boxes" have been installed in their date centers.
                - **Several major multinational consulting and services companies** are currently located in France - they will inevitably be discredited  by this securitarian exception.
                - **Our entire Research and Development ecosystem** will suffer from this measure at a time when virtuous circles need to be formed instead.
                - Digital businesses provide ample employment and significantly foster economic growth in France. **Putting the Internet under surveillance will undermine France's digital future, along with its jobs and hope for the French economy**.

            Putting the Internet under mass surveillance opens the way to a ruthless, unprecedented level of spying, without any actual benefit to our safety.

            Putting the Internet under mass surveillance means losing credibility in the eyes of our customers and will force us to gradually relocate in order to keep providing services similar to those of our international competitors.

            Putting the Internet under massive surveillance will undermine France's digital future, along with its jobs and hope for the French economy.

            Consequently, we ask for an in-depth revision of the "Projet de Loi sur le Renseignement", starting with the unconditional removal of the requirement to install "black boxes".
        """
        call: "Are you a member of the French digital economy? Sign this declaration and join the %{n} signatories of the #niPigeonsNiEspions list (#NoFoolsNoSpies)."
        cta:  "Sign here"

    form:
        title:  "I am enrolling in the <em>Joint statement against mass surveillance of the Internet</em> and wish to appear on this web page as a signatory."
        fields:
            name:
                label: "Name"
            firstname:
                label: "First name"
            email:
                label: "Email"
            company:
                label:    "Company / Organisation / Association"
                sublabel: "(ensure that you have the authority to commit your organization)"
            category:
                label: "Category"
                placeholder: "Please pick a category"
                options:
                    agenceweb:    "Agency"
                    autre:        "Other"
                    ecole:        "School"
                    ecommerce:    "e-commerce"
                    fai:          "IP / Network operator"
                    freelance:    "Freelance"
                    hebergeur:    "Hosting"
                    investisseur: "Investors"
                    media:        "Media"
                    organisation: "Organization"
                    securite:     "Security"
                    soft:         "Software"
                    startup:      "Startup"
            cardline:
                label:    "Card line"
                sublabel: "(your name will appear by default)"
        success:  "Your subscription has been successfully submitted. Thank you for your support, we'll get in touch with you as soon as we can."
        error:    "Please wait while we're submitting your registration."
        required: "This field is required"
        email:    "Please enter a valid e-mail"
    signatories:
        title: "Signatories"
        filters:
            title: "Filters"
            all:   "All"
            none:  "None"
    footer:
        license: "This document is put at your disposal according to the Creative Commons Attribution license terms:"
        cc:      "ShareAlike 4.0 International."

