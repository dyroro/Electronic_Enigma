<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Implémentation de l'Enigma en VHDL</h1>
        <p>Prepared by :</p>
        <ul>
            <li>Ali nechchadi</li>
            <li>Omar nechchadi</li>
            <li>Abir Werzgan</li>
        </ul>
        <section>
            <h2>Contexte historique de l'Enigma</h2>
            <p>L'Enigma a été développée dans les années 1920 par l'ingénieur allemand Arthur Scherbius. Son utilisation par les forces armées allemandes a été une composante clé de leurs communications sécurisées pendant la Seconde Guerre mondiale. Cependant, les efforts des cryptanalystes alliés, en particulier à Bletchley Park sous la direction d'Alan Turing, ont réussi à percer le code Enigma, ce qui a eu un impact significatif sur le conflit.</p>
        </section>
        <section>
            <h2>Objectif du projet</h2>
            <ul>
                <li>Développer des modules VHDL pour chaque composant de l'Enigma, y compris les rotors, les réflecteurs et l’incrimenteur.</li>
                <li>Assembler les modules développés précédemment pour former une machine Enigma complète, capable de chiffrer et de déchiffrer des messages.</li>
                <li>Utiliser des outils de simulation VHDL pour vérifier que la machine Enigma fonctionne correctement selon les spécifications historiques.</li>
            </ul>
        </section>
        <section>
            <h2>Introduction</h2>
            <h3>Principe de fonctionnement de l'Enigma</h3>
            <p>Tout d'abord, les lettres du message à chiffrer étaient saisies sur le clavier de l'Enigma. Lorsqu'une touche était enfoncée, un courant électrique traversait une série de rotors, chacun étant un disque avec des fils électriques à l'intérieur. Ces rotors pouvaient être positionnés de différentes manières, offrant ainsi des milliards de configurations possibles.</p>
            <p>Le courant électrique passait ensuite à travers le plugboard, une série de câbles qui échangeaient les lettres entrantes avec d'autres lettres. Cette étape offrait encore plus de combinaisons potentielles.</p>
            <p>Ensuite, le courant traversait les rotors à nouveau, mais cette fois-ci dans l'ordre inverse. Les rotors fonctionnaient comme des substituts alphabétiques, modifiant la lettre initiale en une autre lettre en fonction de leur configuration.</p>
            <p>Le courant atteignait ensuite le réflecteur, qui renvoyait le signal à travers les rotors une dernière fois, inversant à nouveau les substitutions. Ce processus complexe de substitution multiple était ce qui rendait l'Enigma si difficile à décoder.</p>
            <p>Finalement, la lettre chiffrée s'affichait sur une lampe, indiquant ainsi la lettre correspondante du message chiffré. Le destinataire devait configurer son Enigma avec les mêmes paramètres pour déchiffrer le message.</p>
            <p>En résumé, l'Enigma fonctionnait en prenant une lettre d'entrée, en la passant à travers une série de substitutions complexes et en renvoyant une lettre chiffrée. Ce processus garantissait la sécurité des communications allemandes pendant une grande partie de la guerre, jusqu'à ce que les Alliés réussissent à percer son code, un exploit qui a eu un impact significatif sur le déroulement du conflit.</p>
        </section>
        <section>
            <h2>Développement des modules</h2>
            <h3>Modules en VHDL</h3>
            <p>...FOR MORE DETAILS READ PDF DOCUMENT IN  THE REPOSITORY !!!</p> <!-- Continue with the rest of the content as needed -->
        </section>
    </div>
</body>
</html>
