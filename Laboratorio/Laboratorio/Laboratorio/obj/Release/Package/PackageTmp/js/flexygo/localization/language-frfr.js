/**
 * @namespace flexygo.culture.frfr
 */
var flexygo;
(function (flexygo) {
    var culture;
    (function (culture) {
        var frfr;
        (function (frfr) {
            frfr.process = {
                executing: 'Exécution du processus...',
            };
            frfr.dependecymanager = {
                sort: 'Trier',
                valuedep: 'Valeur',
                classdep: 'Classe',
                combodep: 'Déroulant',
                enabledep: 'Activé',
                visibledep: 'Visible',
                requireddep: 'Obligatoire',
                CustomProperty: 'Propriété personnalisée',
                save: 'Sauvegarder',
                addmore: 'Ajouter d’autres propriétés en attente',
                sqlvalue: 'SQL Valeur',
                sqlclass: 'SQL Classe',
                sqlcombofilter: 'Filtre SQL pour déroulant',
                sqlcombosentence: 'SQL pour déroulant',
                enabledvalues: ' Valeurs qui activent',
                disabledvalues: 'Valeurs qui désactivent',
                sqlenabledsentence: 'SQL d’activé',
                visiblevalues: 'Valeurs qui rendent visible',
                hiddenvalues: 'Valeurs qui cachent',
                visiblesentence: 'SQL de visible',
                requiredvalues: 'Valeurs pour obligatoire',
                notrequiredvalues: 'Valeurs pour non obligatoire',
                requiredsentence: 'SQL pour obligatoire',
                description: 'Description',
                valueApply: 'Valeurs concernées',
                CusPropertyName: 'Nom du contrôle personnalisé',
                SQLCustomProperty: 'SQL Propriété personnalisée ',
                connectionstrings: 'Chaînes de connexion',
                connStringvalues: 'Valeurs de chaîne de connexion',
                view: 'regarder',
                relateddep: 'Dépendances associées'
            };
            frfr.develop = {
                developer: 'Développeur',
                adminarea: ' Zone de conception',
                help: ' Aide',
                dependencymanager: 'Gestion des dépendances ',
                filtermanager: 'Gestion des filtres',
                modulemanager: 'Gestion des modules',
                nodemanager: 'Gestion des noeudss',
                settings: 'Configuration',
                wizard: 'Assistant',
                editproperties: 'Modifier les propriétés',
                modules: 'Modules',
                collection: 'Collection',
                page: 'Page',
                object: 'Objet',
                imagemanager: 'Paramètres de l\'image',
                documentmanager: 'Paramètres du document',
                mailmanager: 'Paramètres de messagerie',
                viewobject: 'Afficher objet',
                security: 'Sécurité',
                objectsecurity: 'Sécurité d’objet',
                objectprocesssecurity: 'Processus de l’Objet',
                selectobject: 'Veuillez sélectionner une page contenant un objet',
                objectpropertysecurity: 'Sécurité des propriétés',
                pageSettings: 'Propriétés de la page',
                chatter: 'Chatter',
                users: 'Utilisateurs',
                roles: 'Les rôles',
            };
            frfr.history = {
                historyempty: 'Historique de navigation vide',
                showmore: 'Voir plus',
            };
            frfr.navigation = {
                relatedobjects: 'Objets liés',
                reports: 'Rapports',
                noelements: ' Il n’y a pas d’éléments',
                popupwarning: 'Les paramètres de votre navigateur bloquent les fenêtres pop-up.',
            };
            frfr.msg = {
                confirm: 'Confirmer l’action',
                fieldrequired: ' Le champ est requis',
                copied: 'Copié',
            };
            frfr.flxkanban = {
                addCard: 'Ajouter nouvelle',
            };
            frfr.flxedit = {
                addfields: 'Añadir campos',
                selectall: 'Sélectionner tous',
                selectnone: 'Désélectionner tous',
                createwarning: 'Sélectionner au moins un champ.',
                appendwarning: 'Sélectionnez un type et un nom de champ.',
                createfields: 'Ajouter des champs',
                enterfieldname: ' Nom du champ',
                selecttype: 'Sélectionner le type de données',
                seedependencies: 'Afficher dépendances',
                templates: 'Modèles',
                objectsettings: 'Paramètres d’objet',
                label: 'Étiquette ',
                style: 'Style',
                classname: 'Nom de la classe',
                selecticon: 'Sélectionnez une icône',
                selectcontroltype: 'Sélectionnez un type de contrôle',
                locked: 'Bloqué',
                required: 'Requis',
                hidden: 'Masqué',
                addseparatora: 'Ajouter séparateur vers le haut',
                addseparatorb: ' Ajouter séparateur vers le bas',
                addplaceholder: 'Añadir un contol de posición',
                save: 'Sauvegarder',
                close: 'Fermer',
                areyousuretitle: 'Vous avez des modifications sans enregistrer',
                areyousuremsg: 'Voulez-vous vraiment fermer cette page?',
                areyousuremsgyes: 'Oui',
                areyousuremsgno: 'Non',
                emptyproperty: 'Propriété vide',
                addproperties: 'Ajouter des champs',
                propertyname: 'Nom du champ',
                propertylabel: 'Étiquette de champ',
                adddetachedproperty: 'Ajouter un champ déconnecté',
                selecttable: 'Sélectionnez Tableau',
                loadmore: 'Faites défiler pour charger plus',
                hasdependencies: 'Lance des dépendances',
                hasdependingproperties: 'Affecté par les dépendances'
            };
            frfr.flxeditgrid = {
                addrow: 'Ajouter ligne',
                removeselection: 'Supprimer sélection',
                hide: 'Masquer',
                settings: 'Configuration',
                deleteconfirm: 'Voulez-vous supprimer les éléments sélectionnés?',
                startinfo: 'Vous devez d\'abord configurer le editgrid',
            };
            frfr.flxfilter = {
                searchplaceholder: 'Recherche par:',
                showall: 'Tout montrer',
            };
            frfr.flxarea = {
                noprocesses: 'Aucun processus associé',
                doubleclickexpand: 'Cliquez pour afficher / réduire les processus ...',
            };
            frfr.flxgipe = {
                butonadd: ' Ajouter',
                buttonload: 'Charger',
                buttonsave: 'Sauvegarder',
                buttoncancel: 'Annuler',
                dialogloadtitle: 'Charger flux',
                dialogsavetitle: ' Enregistrer flux',
                dialogpropertiestitle: 'Propriétés',
                dialogtemplatetitle: 'Sélectionner modèle',
                dialogdebugtitle: 'Débogage exécution',
                errornoworkflowselected: 'Sélectionner un flux à charger',
                errornoversionselected: 'Sélectionnez une version du flux',
                confirmunsavedchanges: 'Il a des modifications non enregistrées. Voulez-vous continuer?',
                labelarea: 'Zone:',
                labelmodule: 'Module:',
                labelname: 'Nom:',
                labeldescrip: 'Description:',
                labelversion: 'Version:',
                labeltop: 'Position X:',
                labelleft: 'Position Y:',
                labelheight: 'Hauter:',
                labelwidth: 'Largeur:',
                labellabel: 'Étiquette:',
                labelobject: 'Objet:',
                labelprocess: 'Processus:',
                labelworkflow: 'Flux:',
                labeldecission: 'Décision:',
                labelevent: 'Événement:',
                labelactive: 'Actif:',
                labelstatus: 'État:',
                labelresult: 'Résultat:',
                labelerrormessage: 'Menssage d’erreur: ',
                labelrelations: 'Relations de paramètres:',
                labeloutputparams: 'Paramètres de sortie:',
                labelbackgroundcolor: 'Couleur de fond:',
                labelbordercolor: 'Couleur de bord:',
                labeltextcolor: 'Couleur du texte:',
                treeinnode: 'Paramètres d’entrée:',
                treeoutnode: 'Paramètres de sortie:',
                workflowareaplaceholder: 'Sélectionnez zone...',
                workfloworiginplaceholder: 'Sélectionnez source...',
                workflowmoduleplaceholder: 'Sélectionnez module...',
                workflownameplaceholder: 'Saisissez nom...',
                workflowversionplaceholder: 'Sélectionnez la version...',
                searchtemplates: 'Chercher dans modèles...',
                editortemplates: {
                    process: 'Processus',
                    object: 'Objet',
                    decission: 'Décision',
                    event: 'Événement',
                    workflow: 'Flux',
                    label: 'Étiquette',
                    toggleall: 'Cocher/Décocher tous',
                },
                editortoolbar: {
                    new: 'Nouveau',
                    open: 'Ouvrir',
                    save: 'Sauvegarder',
                    generate: 'Générer',
                    up: 'Flux externe',
                    down: 'Flux interne',
                    run: 'Exécuter Flux',
                    debug: 'Déboguer flux',
                    select: 'Sélectionner',
                    pan: 'Déplacer',
                    undo: 'Annuler',
                    redo: 'Refaire',
                    cut: 'Couper',
                    copy: 'Copier',
                    paste: 'Frapper',
                    delete: 'Supprimer',
                    group: 'Grouper',
                    ungroup: 'Dissocier',
                    workflow: 'Flux',
                    object: 'Objet',
                    process: 'Processus',
                    decission: 'Décision',
                    event: 'Événement',
                    connect: 'Conexion',
                    fit: 'Ajuster',
                    zoomin: 'Zoom avant',
                    zoomout: 'Zoom arrière',
                    actualsize: 'Taille réelle',
                    templates: ' Modèles',
                    label: 'Étiquette',
                    properties: 'Propriétés',
                },
                messages: {
                    savefirst: 'Enregistrez le graphique pour générer le flux',
                    workflowgenerated: 'Flux généré avec succès',
                    workflowsaved: 'Flux enregistré avec succès',
                },
                popupmenu: {
                    workflowproperties: 'Propriétés du flux ',
                    view: 'Afficher',
                    properties: 'Propriétés',
                    enter: 'Entrer',
                    new: 'Nouveau',
                    listparams: 'Afficher paramètres',
                }
            };
            frfr.filtermanager = {
                choosefilter: 'Choisir filtre',
                objectname: 'Objet',
                filtertype: 'Type de filtre',
                properties: 'Propriétés',
                fields: 'Champs',
                unsaved: 'Il y a des modifications non enregistrées. Voulez-vous continuer?',
                sure: 'Êtes-vous sûr?',
                add: 'Ajouter',
                errornofilter: 'Veuillez d’abord ajouter un nouveau filtre.',
                errornofields: 'Veuillez ajouter au moins un champ de filtre.',
                save: 'Sauvegarder',
                delete: 'Supprimer',
            };
            frfr.sortmanager = {
                sort: 'Ordre',
                fields: 'Champs',
                apply: 'Appliquer',
                clean: 'Nettoyer',
                groups: 'Groupements',
                applied: 'Appliqué'
            };
            frfr.flxlist = {
                noentriesfound: 'Sans résultat.',
                warning: 'Le module n’a pas de modèle mais possède une chaîne HTML spécifique.affichage de la configuration du module.',
                currentfiltervalues: ' Sauvegarder les valeurs de filtre actuelles Guardar valores del filtro actual.',
                removecurrentfiltervalues: 'Êtes-vous sûr de vouloir supprimer ce filtrage que vous avez enregistré?.',
                name: 'Nom',
                generic: 'Générique',
                savefilter: 'Sauvegarder filtre',
                selectfilterfirst: 'Sélectionnez d’abord un filtre',
                save: 'Sauvegarder',
            };
            frfr.flxmail = {
                nomails: 'Aucun courrier trouvé ',
                nosettings: 'Votre compte de messagerie n’a pas été créé.Cliquez pour le configurer.',
                loadmore: 'Chargez plus ',
                folders: 'Dossiers',
                address: 'Adresse',
                subject: 'Question',
                body: 'Body',
                mindate: 'Date minimale',
                maxdate: 'Date maximale',
                unseen: 'Il suffit de ne pas lire',
                sync: 'Synchronisation',
                waitsync: 'Attendez la fin de la synchronisation.',
                nomail: 'Mail introuvable.',
                nomailalert: 'Le courrier n’a pas été trouvé sur le serveur.',
            };
            frfr.flxmodule = {
                delete: 'Supprimer',
                save: 'Sauvegarder',
                new: 'Nouveau',
                edit: 'Modifier',
                view: 'Afficher',
                print: 'Imprimer',
                printpage: 'Imprimer la page',
                printmodule: 'Module dimpression',
                help: 'Aide',
                settings: 'Configuration',
                process: 'Processus',
                report: 'Rapport',
                export: 'Exporter',
                back: 'Revenir',
                unknown: 'Fonction inconnue',
                templates: 'Modèles',
                noprop: 'Module sans propriétés.',
                requiredsaving: 'Remplissez tous les paramètres requis avant d’enregistrer.Comme:',
                noparams: 'Aucun paramètre à récupérer.',
                requiredrunning: 'Remplissez tous les paramètres requis avant l’exécution.',
                requiredreport: 'Remplissez tous les paramètres requis avant d’ouvrir le rapport.',
                deleted: 'Supprimé :)',
                saved: 'Sauvegardé :)',
                uniqueBagError: 'Champ d\'identificateur unique non défini.',
                nofieldBagError: 'Impossible de trouver le champ <b>{0}</b>. Ajoutez-le pour interroger ou supprimer le bouton de sélection.',
                noItemsSelected: 'D\'abord sélectionner un élément de la liste.',
            };
            frfr.flxnav = {
                notimplemented: ' Action non mise en œuvre ',
                pIdNotespecified: 'Id Processus non spécifié',
                urlnotespecified: 'Url non mise en œuvre ',
                autoSQlnovalidtype: 'Nœud autogénéré de SQL non valid',
                webcomponentnotspecified: 'Composant web non spécifié.',
                helpidnotspecified: 'Id Aide non spécifié',
                moreinfo: 'Plus d’information',
            };
            frfr.image = {
                browsebutton: 'Rechercer',
                browsebuttontooltip: 'Vous pouvez rechercher ou faire glisser une image',
                savebutton: 'Sauvegarder',
                removebutton: 'Supprimer',
                cropbutton: 'Rogner ',
                movebutton: 'Déplacer',
                zoombutton: 'Zoom',
                rotatebutton: 'Pivoter',
                scalebutton: 'Redimensionner',
                aspectratiobutton: ' Rapport d’aspect',
                resetbutton: 'Redémarrer',
                downloadbutton: 'Télécharger',
                free: 'Libre',
                errorfiletype: 'Accepte uniquement images',
                errorfilenumber: 'Sólo acepta una imagen',
                infotostart: 'Rechercher ou faire glisser une image pour démarrer',
                errorfilename: 'L’image n’a pas de nom',
                errorrootpath: 'Chemin racine',
                extension: 'Extension de fichier non acceptée.',
            };
            frfr.documentmanager = {
                upload: 'Télécharger',
                info: 'Rechercher ou faire glisser des documents',
                saved: 'Sauvegardé',
                save: 'Sauvegarder',
                return: 'Revenir',
                removed: 'Supprimé',
                errorsaving: 'Erreur sauvedardé',
                errorremoving: 'Erreur supprimé',
                copy: 'Copier au portefeuille',
                preview: 'Aperçu',
                edit: 'Modifier',
                remove: 'Supprimer',
                disk: 'Disque',
                diskfiles: 'Fichiers',
                diskfolders: 'Dossiers',
                drive: 'Drive',
                dropbox: 'Dropbox',
                download: 'Télécharger',
                link: 'Relier',
                filter: 'Filtre',
                folderorfile: 'Dossier ou fichier',
                browsernotsupported: 'Votre navigateur n’est pas compatible',
                settings: 'Paramétrage',
                permissionerror: 'Désolé, vous n’avez pas d’autorisations',
                documentempty: 'Document vide',
                downloadall: 'Télécharger tous les documents',
                nodocuments: 'Aucun document à télécharger',
                msgremove: 'Etes-vous sûr de vouloir supprimer le document?',
                sendselection: 'Envoyer les documents sélectionnés',
                noselection: 'Aucun document sélectionné',
            };
            frfr.imagemanager = {
                upload: 'Télécharger',
                settings: 'Paramétrage',
                msgremove: 'Êtes-vous sûr de vouloir supprimer l’image?',
                msgremoveall: 'Êtes-vous sûr de vouloir supprimer TOUTES les images?',
                removed: 'Image supprimée',
                removedall: 'Toutes les images ont été supprimées',
                errorremoving: 'Erreur lors de suppression de l’image',
                uploaded: 'Image téléchargée',
                erroruploading: 'Erreur en téléchargeant l’image',
                updated: 'Image actualisée',
                errorupdating: 'Erreur en téléchargeant l’image',
                permissionerror: 'Désolé, vous n’avez pas d’autorisations',
                imageepmty: 'Image vide',
                downloadall: 'Télécharger toutes les images',
                deleteall: 'Supprimer toutes les images',
                errordownload: 'Erreur de téléchargement des images',
                noimages: 'Il n’y a pas d’images',
            };
            frfr.upload = {
                uploaded: 'Téléchargé',
                error: 'Erreur de téléchargement',
                info: 'Faire glisser pour télécharger',
                extension: 'Extension de fichier non acceptée.',
            };
            frfr.file = {
                saved: 'Fichier sauvegardé ;)',
                errorsaving: 'Erreur en enregistrant fichier :(',
                resultbase64: '1 fichier en base64',
                extension: 'Extension de fichier non acceptée.',
            };
            frfr._export = {
                success: 'Succès exportation données ;)',
                error: 'Erreur exportation données :(',
                exportinglist: 'Exportant liste',
                exportlimit: 'Le nombre maximum d&#39enregistrements à exporter a été dépassé, veuillez utiliser un filtre plus restrictif',
            };
            frfr.menumanager = {
                deleteMenu: 'Supprimer menu',
                deleteMenuquestion: 'Êtes-vous sûr de vouloir supprimer ce menu et tous vos enfants?',
                empty: 'Erstellen Sie ein neues Menü zum Navigieren!',
                menus: 'Menus',
                new: 'Nouveau',
                refresh: 'Rafraîchir',
                moreoptions: 'Plus d\'options',
                delete: 'Supprimer',
                edit: 'Éditer',
                submenus: 'Sous-menus',
                newsubmenu: 'Nouveau sous-menu',
            };
            frfr.modulemanager = {
                save: 'Sauvegarder',
                searchmodules: 'Rechercher modules',
                cancel: 'Annuler',
                tabid: 'Identificateur de tabulation',
                tabtitle: 'Titre du tabulation',
                tabdescrip: 'Description',
                selecttabicon: 'Sélectionnez une icône',
                classification: 'Classification',
                addnewtabmodule: 'Ajouter un module tabulation',
                changepagerelation: 'Modifier la relation de module avec la page',
                configmodule: 'Configurer module',
                removemodule: 'Supprimer module',
                events: 'Événement liés',
                security: 'Sécurité du module',
                tabMode: 'Tab mode',
            };
            frfr.moduletab = {
                emptytabs: 'Tabs vides',
                nocontent: 'Sans résultats.',
            };
            frfr.nodemanager = {
                save: 'Sauvegarder',
                title: 'Gestionnaire de nœuds',
                deletenode: 'Supprimer nœud',
                deletenodequestion: 'Êtes-vous sûr de vouloir supprimer ce nœud?',
                addfields: 'Ajouter champs',
            };
            frfr.objectmanager = {
                selecticon: 'Sélectionnez une icône ',
                validicon: 'Sélectionnez icône valide',
                objectname: 'Nom de l’objet',
                validobjectname: 'Saisissez un nom d’objet',
                objectdescription: 'Description de l’objet',
                validobjectdescription: 'Saisissez une description de l’objet',
                collectionname: 'Nom de la collection',
                validcollectionname: 'Saisissez le nom de la collection',
                collectiondescription: 'Description de la collection',
                validcollectiondescription: 'Saisissez la description de la collection',
                datasource: 'Source des données',
                fromtable: 'Dés un Tableau',
                fromview: 'Dés une vue',
                fromnewtable: 'Dés un nouveau tableau',
                selectcnnstring: 'Sélectionnez la chaine de connexion',
                validcnnstring: 'Debe seleccionar una cadena de conexión',
                selecttable: 'Sélectionnez une source',
                validorigin: 'Indiquez une source valide',
                newtablename: 'Nom du nouveau tableau',
                validnewtablename: 'Saisissez le nom du nouveau tableau',
                viewkeyfields: 'Champs clés de la vue',
                validviewkeyfields: 'Saisissez les champs clés',
                savecontinue: 'Sauvegarder et continuer',
                continue: 'Continuer',
                listtemplate: 'Modèle de liste',
                edittemplate: 'Modèle d’édition ',
                viewtemplate: 'Modèle d’affichage',
                objectcreated: 'Objet creé',
                selectoption: 'Sélectionnez une option',
                listform: 'Afficher formulaire de <b>Liste</b>.',
                editform: 'Afficher formulaire <b>d’Édition</b >.',
                objectconfig: 'Afficher formulaire de <b>l’Objet</b >.',
                collectionconfig: 'Afficher configuration de <b>Collection</b>.',
                showrelations: 'Afficher <b>Relations</b>.',
                saved: 'Sauvegardé',
                basicinfo: 'Information basique',
                objectproperties: 'Propriétés',
                listsettings: 'Listes',
                displaysettings: 'Modèles',
                end: 'Fin',
                colproperties: 'Propriétés Edit grid (facultatif)',
                save: 'Sauvegarder',
                filtersettings: 'Paramètres de filtre',
            };
            frfr.flxpropertymanager = {
                addfields: 'Cliquez sur "ajouter champs" pour démarrer.',
                label: 'Étiquette',
                style: 'Style',
                classname: 'Nom de la classe',
                selecticon: 'Sélectionnez une icône',
                selectcontroltype: 'Sélectionnez un type de contrôle',
                locked: 'Bloqué',
                required: 'Requis',
                hidden: 'Masqué',
                addseparatora: 'Ajouter séparateur vers le haut',
                addseparatorb: 'Ajouter séparateur vers le bas',
                addplaceholder: 'Ajouter un contrôle de position',
                save: 'Sauvegarder',
                close: 'Fermer',
                hasdefinition: 'Passez en revue la propriété dans le tableau:',
            };
            frfr.flxversioninfo = {
                currentversion: 'Version actuelle ({{CurrentVersion}}).',
                lastversion: 'Dernière version ({{LastVersion}}).',
                updatedversion: 'L’application est à jour.',
                pendingchanges: 'Il y a des modifications en suspens pour examiner',
                reviewchanges: 'Afficher modifications en suspens',
                newupdate: 'Une mise à jour disponible ({{LastVersion}}).',
                update: 'Actualiser',
                info: 'Information',
                test: 'Exécuter tests',
                delete: 'Supprimer',
                deleting: 'Suppression version',
                updating: 'Mise à jour',
                initupdate: 'Initialisation mise à jour...',
                estatusupdatingservice: 'Mise à jour service...',
                estatuscheckingpackages: 'Vérification paquets ...',
                estatusdownloadingversion: 'Téléchargement nouvelle version...',
                estatusfinished: 'Terminé',
                estatusupdatedatabase: 'Mise à jour base de données',
                estatusupdateiis: 'Mise à jour application web',
                applicationwillreset: 'L’application est en cours de redémarrage...',
                updatesuccessful: 'Mise à jour avec succès!',
                oldversion: 'Version précédente ({{VersionNumber}})',
                newversion: 'Version ultérieure S({{VersionNumber}})',
                confirmupdate: 'Êtes-vous sûr de vouloir mettre à jour votre application?',
                confirmdelete: 'Êtes-vous sûr de vouloir supprimer la version?',
                infotitle: 'Information de la version',
                deletesuccessful: 'Version supprimé avec succès!',
                infoversion: 'Numéro de version:',
                infopath: 'Chemin virtuel:',
                infodatabase: 'Base de données:',
                confirmwarningtitle: 'Attention!',
                confirmwarninglabel: 'Veuillez confirmer ces opérations:',
                switch: ' Changer à cette version',
                confirmswitch: '¿Êtes-vous sûr de vouloir changer à cette version?',
                releasenotes: 'Notes de la version',
                oldversionvalue: 'Valeur version précédente ',
                customvalue: 'Valor personalizado',
                newversionvalue: 'Valeur nouvelle version',
                manualvalue: 'Valeur manuelle',
                applychanges: 'Appliquer modifications',
                nochanges: 'Aucune modification marquée pour appliquer',
                changecount: 'Êtes-vous sûr de vouloir appliquer des {{count}} modifications?',
                applychangessuccesful: 'Modifications appliquées avec succès',
            };
            frfr.viewmanager = {
                properties: 'Propriétés',
                fields: 'Champs',
                unsaved: 'Il y a des modifications non enregistrées. Voulez-vous continuer?',
                add: 'Ajouter',
                errornofilter: 'Veuillez d’abord ajouter une nouvelle vue.',
                errornofields: 'Veuillez au moins un champ.',
                errornosql: 'Le champ SQL ne peut pas être vide..',
                validate: 'Valider',
                errorduplicateprop: 'Le champ {0} existe déjà dans la liste.',
                save: 'Save',
                cancel: 'Cancel',
                viewwizard: 'View Wizard',
                selectobject: 'Veuillez sélectionner un objet',
                openwizard: 'Ouvrir l\'assistant',
                saved: 'Saved :)',
            };
            frfr.templates = {
                addnewtemplate: 'Ajouter modèle',
            };
            frfr.flxscheduler = {
                objects: 'Objets',
                chooseobjects: 'Sélectionnez objet',
            };
            frfr.flxscheduleryear = {
                january: 'Janvier',
                february: 'Février',
                march: 'Mars',
                april: 'Avril',
                may: 'Mai',
                june: 'Juin',
                july: 'Juillet',
                august: 'Août',
                september: 'Septembre',
                october: 'Octobre',
                november: 'Novembre',
                december: 'Décembre',
                mn: 'Lun',
                tu: 'Mar',
                we: 'Mer',
                th: 'Jeu',
                fr: 'Ven',
                sa: 'Sam',
                su: 'Dim',
            };
            frfr.flxsearch = {
                search: 'Chercher...',
                pleasewrite: 'S’il vous plaît entrer le texte pour rechercher',
                speak: 'Parlez maintenant...',
                pleaseobject: 'Veuillez d’abord sélectionner un objet',
                searchnode: 'Recherche',
            };
            frfr.text = {
                map: 'Cliquez sur la carte',
                errormap: 'Adresse non trouvée',
                api: 'Clé API Google introuvable.',
                apihelp: 'Voir notre aide pour savoir comment obtenir.',
                nophone: 'Entrez un numéro de téléphone',
                nomail: 'Entrez une adresse e-mail',
            };
            frfr.flxfunnel = {
                data: 'Aucune donnée',
            };
            frfr.flxtimeline = {
                withoutDescription: 'Sans Description',
                withoutRegisters: 'Sans registres',
                hour: 'Heure',
                today: 'Aujourd’hui',
                day: 'journée',
                week: 'La semaine',
                month: 'Mois',
                year: 'Année',
                navigation: 'La navigation',
                range: 'intervalle',
                title: 'AIDE ET RACCOURCIS ',
                description: 'La description',
                action: 'Action',
                selectitem: 'Sélectionner un article',
                multiselectitems: 'Articles multisélectionnés',
                multiselectbyrange: 'Sélectionner plusieurs articles par plage de temps',
                multiselectbyrangegroup: 'Multisélectionner des éléments par plage horaire dans un groupe',
                createitem: 'Créer un article',
                createitemwithrange: 'Créer un article avec une plage',
                edititem: 'Modifier l’article',
                openeditview: 'Ouvrir la vue d’édition',
                zoom: 'Changer la plage de temps',
                navigationtime: 'Navigation dans le temps',
                or: 'o',
                to: 'à',
                withoutpercentage: 'Sans Pourcentage',
                notsupported: 'taille d’écran non supportée',
            };
            frfr.flxfilebrowser = {
                saved: 'Sauvegardé',
                errorsaving: 'Erreur sauvedardé',
                errorremoving: 'Erreur supprimé',
                permissionerror: 'Désolé, vous n’avez pas d’autorisations',
                documentempty: 'Document vide',
                itemsselected: "Éléments sélectionnés",
                emptyfolder: "Le dossier est vide",
                existingfiles: "Certains fichiers existent sur le serveur",
                overwritefiles: "Êtes-vous sûr de vouloir les remplacer?",
                deleting: "Suppression",
                items: 'articles',
                sure: 'Êtes-vous sûr?',
                currentfolder: 'Dossier en cours',
                uploadfiles: 'Télécharger des fichiers',
                addfolder: 'Ajouter le dossier',
                download: 'Télécharger',
                delete: 'Effacer',
                goback: 'Retourner',
                processingdownload: 'Traitement Télécharger'
            };
            frfr.chatter = {
                composerplaceholder: 'Écris quelque chose ...',
                sendbutton: 'Registre',
                startinfo: 'Vous devez d\'abord configurer le chatter',
                deleteconfirm: '¿Êtes-vous sûr de vouloir supprimer le message?',
                saveButton: 'Enregistrer',
            };
            frfr.offline = {
                createobjecttitle: 'Ajouter un nouvel objet à l\'application',
                createobjectcontent: 'Vous pouvez créer un nouvel objet ou construire sur un objet existant',
                createobjectbuttonnew: 'Nouvel article',
                createobjectbuttonbased: 'Basé sur les objets',
                enablewebapiconfirmation: 'Pour utiliser l\'application hors ligne, il est nécessaire d\'activer WebApi et de redémarrer l\'application.Voulez - vous redémarrer l\'application maintenant?',
            };
            frfr.offlineemulator = {
                ios: 'Activer le mode iOS',
                md: 'Activer le mode Android',
            };
            frfr.combobuilder = {
                datasource: 'Data source',
                fromtable: "Table",
                fromview: 'View',
                selectcnnstring: "Sélectionnez la chaîne de connexion",
                validcnnstring: "Vous devez sélectionner une chaîne de connexion",
                selecttable: "Sélectionner une source",
                validorigin: "Spécifier une source valide",
                viewkeyfields: "Afficher les champs clés",
                saved: 'Saved',
                save: 'Save',
                cancel: 'Annuler',
                selectvaluefield: "Sélectionnez le champ à sauvegarder",
                selectdisplayfield: "Sélectionnez le champ à afficher",
                selectadditionalfield: "Sélectionnez des champs supplémentaires",
                selectorderfield: "Sélectionnez le champ pour trier les résultats",
                comboassistant: 'Assistant',
                cnnstring: "Chaîne de connexion",
                origin: "Origine",
                sqlsentence: 'Déclaration SQL',
                valuefield: "Champ à stocker",
                displayfield: "Champ à afficher",
                additionalfield: "Champs supplémentaires",
                orderfield: "Champ à trier",
                validvaluefield: "Spécifier un champ à stocker",
                validdisplayfield: "Spécifier un champ à afficher",
                validorderfield: "Indiquez un champ à trier",
                validsqlsentence: 'SQL statement is invalid',
            };
            frfr.formatsmanager = {
                formatassistant: 'Assistant',
                field: 'Champ',
                selectfield: 'Sélectionner un champ',
                validfield: 'Sélectionnez un champ valide',
                validformat: 'Sélectionnez un format valide',
                selectformat: "Sélectionner le type de format",
                formattype: "Type de format",
                saved: 'Enregistré',
                nosaved: 'Aucun format n\'a été enregistré',
                decimal: 'Format décimal',
                isdate: 'Format date',
                translate: 'Traduire la phrase',
                save: 'Enregistrer',
                cancel: 'Annuler',
                casetrue: 'Cas vrai',
                casefalse: 'Case false',
                boolformat: 'Format booléen',
                isnull: 'La valeur est nulle',
                numdecimals: 'Nombre de décimales',
                switchformat: 'Changement de cas',
                casenotnull: 'La valeur n\'est pas nulle',
                stringformat: 'Chaîne à formater',
                stringtype: 'Type de format de chaîne de caractères',
                validstringformat: 'Sélectionnez un type de format de chaîne de caractères valide',
                uppercase: 'Majuscules',
                lowercase: 'Minuscules',
                characternumber: "Nombre de caractères à afficher",
                addoption: 'Ajouter une option',
                addelse: 'Ajouter une option par défaut',
                dateformat: 'Type de format de date',
                selectdateformat: 'Sélectionner le type de format de date',
                validdateformat: 'Sélectionnez le type de format de date valide',
                dateLT: '19:05',
                dateLTS: '19:05:57',
                dateL: '13/07/2021',
                datel: '13/7/2021',
                dateLL: '13 de juillet de 2021',
                datell: '13 juil. 2021',
                dateLLL: '13 juillet 2021 19:05',
                datelll: '13 juil. 2021 19:05',
                dateLLLL: 'mardi 13 de julio de 2021 19:05',
                datellll: 'mar. 13 jul. 2021 19:05',
                translatesentence: 'Phrase à traduire',
                option: 'Option',
                result: 'Resultat',
                elseoption: "Option par défaut",
            };
        })(frfr = culture.frfr || (culture.frfr = {}));
    })(culture = flexygo.culture || (flexygo.culture = {}));
})(flexygo || (flexygo = {}));
//# sourceMappingURL=language-frfr.js.map