# Cine presets — cheat sheet 5D Mark III

Menu ML → onglet **Movie** → **Cine presets** → choisir le preset → SET.
Le preset ferme le menu, règle tout et affiche ce qu'il reste à faire.
Le nom du preset actif s'affiche dans la barre du haut (`*` = un réglage a été modifié depuis).

| Preset | Capteur | Image enregistrée | Bits | Cartes | Usage |
|---|---|---|---|---|---|
| **FF HQ** | 5.7K 1x3 plein format | 1920×2340 → 5760×2340 (×3 en post, 2.46:1) | 14 (10 sans SD) | CF + SD | Mode principal, meilleure qualité globale |
| **S35 HQ** | 3.5K 1:1, zoom x5 (~1.6×) | 3584×1730 | 10 | CF + SD | Détail maximal |
| **FF SAFE** | 1080p 3x3 plein format | 1920×1280 (3:2) | 14 | CF | Fiable, léger : mouvement, prises importantes |

Tous : 23,976 i/s, **obturateur à 180° exact** (1/48), RAW lossless, son 48 kHz, Dual ISO OFF,
pré-record / rec trigger / proxy H.264 OFF.

**Obturateur :** Movie → **Shutter angle** : OFF (vitesse Canon), 180°, 90° (mouvements plus nets),
270° (plus de flou de mouvement, plus de lumière). L'angle reste exact quelle que soit la cadence ;
la vitesse Canon est ignorée tant qu'un angle est choisi (utilise le mode M).
La barre du bas affiche l'angle réel.

## Une seule fois

1. Réglage Canon : **Movie rec. size 1920×1080 24p** (le preset le vérifie mais ne peut pas le changer).
2. Levier LiveView sur **vidéo**.
3. FF HQ / S35 HQ avec carte SD : au premier clic, le preset active l'overclock SD (module sd_uhs, 192 MHz).
   **Redémarre l'appareil une fois** quand il le demande.

## Sur le plateau

- **FF HQ** : vue de cadrage exacte (image entière, pas en temps réel, grise pendant l'enregistrement) ;
  demi-pression longue = vue Canon temps réel, aux bonnes proportions, mais seulement la **bande centrale**
  de l'image (utile pour la mise au point et suivre un mouvement).
- **S35 HQ** : preview de cadrage en gris pendant l'enregistrement (plus rapide) ;
  demi-pression longue = vue Canon temps réel.
- **FF SAFE** : vue Canon couleur temps réel, HDMI utilisable ;
  demi-pression longue = vue de cadrage exacte (3:2).
- **S35 HQ** passe seul en zoom x5 ; FF HQ / FF SAFE reviennent en x1.
- Sans carte SD : FF HQ passe en 10 bits sur CF ; S35 HQ reste en 10 bits mais peut ne pas tenir en continu.

## À vérifier avant un vrai tournage

Les débits sont estimés (FF HQ 14 bits : ~104-123 Mo/s, S35 HQ 10 bits : ~99-121 Mo/s, FF SAFE : ~57-68 Mo/s).
Fais une prise test de plusieurs minutes dans chaque preset, à l'ISO que tu utilises, avec tes cartes.
Si l'enregistrement s'arrête seul en S35 HQ, baisse la hauteur (Aspect ratio 2.39:1 dans RAW video).

## False color RAW (exposition)

Menu ML → **Overlay** → **False color** : ON, puis **Palette** → **RAW stops** (une seule fois).
Ensuite, activer / désactiver « False color » pour jeter un coup d'œil à l'exposition.

Mesuré sur les données RAW (ce que tu retrouves en post), en stops sous l'écrêtage :

| Couleur | Signification |
|---|---|
| Rouge | Brûlé : aucune information, irrécupérable |
| Jaune | Dernier 1/2 stop avant de brûler : le maximum, à surveiller |
| Orange | Peau claire bien exposée (2,5 stops sous l'écrêtage) |
| Vert | Gris moyen 18 % (3,5 stops sous l'écrêtage) |
| Bleu | Ombres profondes, bruit visible |
| Magenta | Bouché : sous le bruit, pas de détail |
| (rien) | Tout le reste : l'image normale reste visible |

Fonctionne avec RAW video actif. Ne remplace pas les zébras : l'un ou l'autre s'affiche.
En 10/12 bits non compressés (pas nos presets), il ne s'affiche pas pendant l'enregistrement.

## Vue temps réel de FF HQ

En 1x3, la vue Canon ne lit que le centre de l'image (~55 % de la hauteur).
RAW video → **Canon view desqueeze** la remet aux bonnes proportions : **Auto = x3**
(vérifié : les objets ronds sont ronds). Le résultat est une bande large, centrée.
Pour cadrer le haut et le bas, utilise la vue de cadrage (par défaut dans FF HQ).

Dans cette vue, les surcouches RAW (false color, zébras) suivent la correction ; si elles semblent
décalées, fie-toi à la vue exacte (demi-pression longue).
