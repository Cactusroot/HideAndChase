- Überprüfen: https://hideandtrack.com/

In [eckigen Klammern] sind die verschiedenen Kategorien
In {geschweiften Klammern} stehen Referenzen zu Design-Problemen oder Apps.

[Features] (kann man an- oder ausschalten):
- matchmaking
    - Handyapp: Android + iOS with dedicated server
- geofencing
    - Kreis mit Mittelpunkt und Radius {Venari}
    - Polygon einzeichnen (Swipen zum Bewegen der Map, Klicken zum Node setzen, Rückgängig (letzte Node entfernen)-Button) {City Chase}
    - stay in shrinking game zone (works!) {complexity} {gottcha, Zone Hunt}
    - stay on dynamic map (changes caused by player interactions or events)
    - rollenbasierte Bewegungserlaubnis?
    - Doppelte Strecke verhindern (snake-mechanik)? {Jet Lag: The Game}
- movement {complexity}
    - prefer/incentivise choke points?
    - u-bahn station (nicht fahren) als 3d Erweiterung?
    - andere Fortbewegungsmittel
        - Busse / U-Bahnen
        - Fahrrad
        - Roller / Rollschuhe
- modes / rule twists
    - hide and seek
    - forty forty
    - capture the flag
    - (cops and robbers)
    - combat zwischen Seekern {complexity} {bounty run}
    - Spielmechaniken variieren basierend auf Straßenart? {complexity}
- positional information [hider / seeker]
    - distance to nearest opponent {randomness, if provided to hider}
    - compass to nearest component {unknown} {GPS Hide and Seek}
        - math instead of real-life
    - reveal location [at regular time intervals {gottcha, Venari}, as a penalty]
    - live locations
    - difference in direction of motion {randomness}
    - temperature
    - AI hints {unknown}
    - line-of-sight mechanics / RSSI? {complexity}
    - distribute information among seekers?
    - strava map {Jet Lag: The Game}
- hider information
  - 
- seeker information
  - 
- hider duties
    - send photos of location [static, dynamic timing] (AI-rated)
    - structured photo targets (find something ..., time limited?) [Farben, Formen] {unknown}
        - frage KI, welche Möglichkeit aus Auswahl korrekt ist
        - bestimme algorithmisch (z.B. k-means clustering)
    - AR anchors / structures / POIs (real-world spawns? overpass-turbo.eu!) {unknown, complexity}
    - Erobere Orte (capture the flag / territorial control) {unknown, complexity}
- seeker duties
    - time limit {city chase, GeoHunt}
    - curses
- user interface
    - 3d satelite map with height {unknown} {Manhunt}
    - chat
    - information history
    - replay
- shop system
    - gain coins
        - for motion
        - by completing duties
    - resources / gadgets / powerups / tools / traps / abilities / items
        - invisibility
        - eavesdropping
        - traps [activate when hider closer than seeker, radius]
        - time trap {Jet Lag: The Game}
        - upgrade: multiplies the effect of another item by 2 / 3 / 4 / 5
- anti-cheat
    - speed limits
    - {catching}
        - GPS + BLE proximity + Button?
        - AR detection {Beamster}
        - freeze hider for fixed amount of time, penalty otherwise {city chase}
        - video {SLAP}

[Design problems]:
unknown - Ort ist unbekannt / keine wiedererkennbaren Objekte
complexity - geringe Komplexität des Bewegungsgraphen
randomness - catching hider shouldn't be a surprise
catching - confirming catch when seeker knows location

[Meta-Game]:
- finding decorative items on map
- leaderboard

References (games):

City Chase - https://play.google.com/store/apps/details?id=com.streamline.citychase

GPS Hide and Seek - https://play.google.com/store/apps/details?id=de.goldjpg.gpshideandseek

Venari - https://play.google.com/store/apps/details?id=rocks.prxenon.venari

gottcha - https://play.google.com/store/apps/details?id=com.notedmedia.gottcha

Zone Hunt - https://apps.apple.com/kw/app/zone-hunt-irl-hide-and-seek/id1638173279

Manhunt - https://www.munimtech.com/manhunt

bounty run - https://apkpure.com/bounty-run/com.teampaluszewski.bountyrun

SLAP - https://play.google.com/store/apps/details?id=com.playslapp.irl.slapmvt&hl=de

GeoHunt - https://play.google.com/store/apps/details?id=com.twentysixprojects.geohunt

Jet Lag: The Game - https://de.wikipedia.org/wiki/Jet_Lag:_The_Game

References (technology):

Beamster - https://play.google.com/store/apps/details?id=com.beamster.Beamster