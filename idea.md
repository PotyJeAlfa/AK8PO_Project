# Název projektu: Hvězdný skokan

## Žánr:
2D platformová skákací hra (jump & run)

## Popis:
Hráč ovládá malého robota, který se vydává na cestu přes sérii planet, asteroidů a vesmírných stanic, aby sesbíral ztracené energetické krystaly a mohl se vrátit domů.

## Herní mechaniky:
- Pohyb vlevo/vpravo
- Skok
- Dvojskok (po vylepšení)
- Sbírání krystalů
- Smrt při pádu mimo mapu nebo dotyku s překážkami
- Úrovně se stoupající obtížností

## Cíle hráče:
- Doskákat na konec každé úrovně
- Sesbírat všechny krystaly (volitelný úkol)
- Vyhnout se překážkám a nepřátelům

## Technické aspekty:
- Engine: Godot (verze 4.x)
- Rozlišení: 1280x720 px
- Použití tilemap pro level design
- Hráč implementován pomocí `CharacterBody2D`
- Detekce kolizí přes `CollisionShape2D`
- Použití signálů pro herní logiku (např. při sbírání krystalů)

## UI:
- Startovací obrazovka
- Zobrazování skóre (krystaly)

## Možná rozšíření:
- Nepřátelé (např. pohybující se roboti)
- Časový limit
- Systém upgradu (např. vyšší skok)
- Více levelů
- Zlepšení grafiky