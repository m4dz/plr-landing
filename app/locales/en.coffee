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
    faq: [
        title: "Are you the only one thinking that way?"
        desc: """
            Never before has a law been so unanimously denounced: [the Conseil d'État (Council of State, legal adviser of the executive branch)][2], [the CNIL (National Commission on Informatics and Liberty)][3], [the ARCEP (independent French agency in charge of regulating telecommunications)][4], [the "Défenseur des Droits" (Right Defender, ombudsman towards the French Republic)][5], [the director of the wiretapping authority][6], [the anti-terrorist judge Marc Trevidic][7] have all unanimously called this law project into question."

            In the computer industry, [software vendors of the AFDEL][8], [online services providers of the ASIC][9], [members of the CNNum][10], ["Renaissance Numérique"][11], [IT companies of "Syntec Numérique"][12] have also clearly communicated about how deeply worried they are. "

            [A petition][13] gathered more than 100,000 signatures in a few days.
        """
    ,
        title: "Opponents to the bill suggest that our democracy is at stake, isn't that an overstatement?"
        desc:  """
            70 years ago exactly, France, Europe and the world were at war. Democratic stability requires not to presume of the intentions of the governments in 70 years. Yet, nowadays only authoritarian states use effectively global surveillance to identify their dissidents. Who can predict that in 10 years, 30 years, France will not be dealing with a police state? [Anti-terrorist judge Marc Trévédic says the exact same thing][7].
        """
    ,
        title: "Without this bill, terrorists will be able to communicate and get organized easily, so it is important to intercept their communications, isn't it?"
        desc:  """
            There are several free tools that allow you to encrypt communications in different contexts, such as the Tor browser, VPN (Virtual Private  Networks) systems, instantenous OTR (Off-The-Record) messaging, and so on. Encrypting is easy and it allows one to go unnoticed on the Internet. This is why mass surveillance of the French people will not prevent terrorism.
        """
    ,
        title: "I have nothing to hide, so I do not need to worry, do I?"
        desc:  """Each and everyone of us has something to hide. That is why we have latches on the doors of our bathrooms, curtains at the windows of our bedrooms, and we do not want our employer to know we're sending our résumé elsewhere. None of these is illegal, and yet we need this privacy. Still not convinced? Send us your tax return, your last three payslips and  the password of your email account (we promise, we won't touch anything!) so we can speak about this topic. :)
        """
    ,
        title: "But won't black boxes only scan metadata?"
        desc: """
            Metadata are data about other data. In an email, they include the address of the sender, of the recipient, the type of document, its size, and the time it was sent. This information, once structured, are easily  processed by a computer, a lot more easily than unstructured data like a  voice message or a picture. It's therefore very easy for a computer to  cross-reference metadata to understand what a person is doing. As an example, let's consider a series of phone calls of which we only know  the metadata. A person receives a call from an AIDS screening lab. The  following call is to a doctor, plus three additional people, from which  only one was previously contacted recently, and finally to a support  helpline. We know nothing about the content of these conversations, but  we can easily guess what happened.

            It is naive to state that metadata can be anonymized, particularly in the context of globally cross-referenced data.
        """
    ]
    footer:
        license: "This document is put at your disposal according to the Creative Commons Attribution license terms:"
        cc:      "ShareAlike 4.0 International."

