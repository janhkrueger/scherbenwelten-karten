# Scherbenwelten Karten

32 islands that have completed the full boundary-detection -> replacement -> classification -> SQL-generation pipeline in scherbenkarte-archiv and are ready for `world.map` import. This file and the sql/, thumbnails/, and schema.sql files are generated -- see scherbenwelten-karten-private for the generator.

Each `sql/<island>.sql` assumes the `world.map` / `world.map_name` schema already exists and is self-contained (allocates its own `karte_id`, so islands never collide with each other). Apply **[schema.sql](schema.sql)** once, then every `sql/*.sql` file in any order:

```bash
psql -d yourdb -f schema.sql
for f in sql/*.sql; do psql -d yourdb -f "$f"; done
```

## A´Mare t´Tini

![A´Mare t´Tini thumbnail](thumbnails/A_Mare_t_Tini.jpg)

- **Land type:** ebene
- **Fields:** 300
- **Bounding box:** x 3144–3171, y -362–-346 (28×17)
- **SQL:** [A_Mare_t_Tini.sql](sql/A_Mare_t_Tini.sql)

## Amon Kardar

![Amon Kardar thumbnail](thumbnails/Amon_Kardar.jpg)

- **Land type:** ebene
- **Fields:** 598
- **Bounding box:** x 4827–4860, y -700–-660 (34×41)
- **SQL:** [Amon_Kardar.sql](sql/Amon_Kardar.sql)

## Arandor Vanenia

![Arandor Vanenia thumbnail](thumbnails/Arandor_Vanenia.jpg)

- **Land type:** ebene
- **Fields:** 12888
- **Bounding box:** x 3371–3535, y 507–786 (165×280)
- **SQL:** [Arandor_Vanenia.sql](sql/Arandor_Vanenia.sql)

## Arboleda Kardar

![Arboleda Kardar thumbnail](thumbnails/Arboleda_Kardar.jpg)

- **Land type:** ebene
- **Fields:** 736
- **Bounding box:** x 4827–4859, y -876–-822 (33×55)
- **SQL:** [Arboleda_Kardar.sql](sql/Arboleda_Kardar.sql)

## Archipel Romantika

![Archipel Romantika thumbnail](thumbnails/Archipel_Romantika.jpg)

- **Land type:** ebene
- **Fields:** 597
- **Bounding box:** x 4942–4963, y -516–-459 (22×58)
- **SQL:** [Archipel_Romantika.sql](sql/Archipel_Romantika.sql)

## Bendurs Strand

![Bendurs Strand thumbnail](thumbnails/Bendurs_Strand.jpg)

- **Land type:** ebene
- **Fields:** 671
- **Bounding box:** x 3024–3054, y -553–-502 (31×52)
- **SQL:** [Bendurs_Strand.sql](sql/Bendurs_Strand.sql)

## Bumsfaldera

![Bumsfaldera thumbnail](thumbnails/Bumsfaldera.jpg)

- **Land type:** ebene
- **Fields:** 499
- **Bounding box:** x 4365–4396, y -587–-557 (32×31)
- **SQL:** [Bumsfaldera.sql](sql/Bumsfaldera.sql)

## Calen Kardar

![Calen Kardar thumbnail](thumbnails/Calen_Kardar.jpg)

- **Land type:** ebene
- **Fields:** 403
- **Bounding box:** x 4727–4765, y -449–-428 (39×22)
- **SQL:** [Calen_Kardar.sql](sql/Calen_Kardar.sql)

## Caligo

![Caligo thumbnail](thumbnails/Caligo.jpg)

- **Land type:** ebene
- **Fields:** 469
- **Bounding box:** x 4432–4467, y 1275–1303 (36×29)
- **SQL:** [Caligo.sql](sql/Caligo.sql)

## Cap Púccino

![Cap Púccino thumbnail](thumbnails/Cap_P_ccino.jpg)

- **Land type:** ebene
- **Fields:** 15676
- **Bounding box:** x 3213–3444, y -636–-386 (232×251)
- **SQL:** [Cap_P_ccino.sql](sql/Cap_P_ccino.sql)

## Carpe Diem

![Carpe Diem thumbnail](thumbnails/Carpe_Diem.jpg)

- **Land type:** ebene
- **Fields:** 354
- **Bounding box:** x 3602–3619, y 1401–1431 (18×31)
- **SQL:** [Carpe_Diem.sql](sql/Carpe_Diem.sql)

## Catan

![Catan thumbnail](thumbnails/Catan.jpg)

- **Land type:** ebene
- **Fields:** 327
- **Bounding box:** x 5044–5068, y 1673–1688 (25×16)
- **SQL:** [Catan.sql](sql/Catan.sql)

## Drachenbrandung

![Drachenbrandung thumbnail](thumbnails/Drachenbrandung.jpg)

- **Land type:** ebene
- **Fields:** 782
- **Bounding box:** x 3447–3489, y 1313–1369 (43×57)
- **SQL:** [Drachenbrandung.sql](sql/Drachenbrandung.sql)

## Drachenfels

![Drachenfels thumbnail](thumbnails/Drachenfels.jpg)

- **Land type:** ebene
- **Fields:** 134
- **Bounding box:** x 3417–3433, y 1382–1393 (17×12)
- **SQL:** [Drachenfels.sql](sql/Drachenfels.sql)

## Edubo

![Edubo thumbnail](thumbnails/Edubo.jpg)

- **Land type:** ebene
- **Fields:** 623
- **Bounding box:** x 3240–3286, y 978–1014 (47×37)
- **SQL:** [Edubo.sql](sql/Edubo.sql)

## Eiland

![Eiland thumbnail](thumbnails/Eiland.jpg)

- **Land type:** ebene
- **Fields:** 6
- **Bounding box:** x 4249–4251, y 1050–1051 (3×2)
- **SQL:** [Eiland.sql](sql/Eiland.sql)

## Ennos Felsen

![Ennos Felsen thumbnail](thumbnails/Ennos_Felsen.jpg)

- **Land type:** ebene
- **Fields:** 430
- **Bounding box:** x 3028–3060, y 613–636 (33×24)
- **SQL:** [Ennos_Felsen.sql](sql/Ennos_Felsen.sql)

## Enoîki

![Enoîki thumbnail](thumbnails/Eno_ki.jpg)

- **Land type:** ebene
- **Fields:** 568
- **Bounding box:** x 4795–4824, y 1375–1407 (30×33)
- **SQL:** [Eno_ki.sql](sql/Eno_ki.sql)

## Enten Auen

![Enten Auen thumbnail](thumbnails/Enten_Auen.jpg)

- **Land type:** ebene
- **Fields:** 702
- **Bounding box:** x 3230–3268, y -262–-227 (39×36)
- **SQL:** [Enten_Auen.sql](sql/Enten_Auen.sql)

## Fisherman´s Friend

![Fisherman´s Friend thumbnail](thumbnails/Fisherman_s_Friend.jpg)

- **Land type:** ebene
- **Fields:** 321
- **Bounding box:** x 4309–4339, y 919–944 (31×26)
- **SQL:** [Fisherman_s_Friend.sql](sql/Fisherman_s_Friend.sql)

## Flatterfels

![Flatterfels thumbnail](thumbnails/Flatterfels.jpg)

- **Land type:** ebene
- **Fields:** 230
- **Bounding box:** x 4625–4642, y -790–-773 (18×18)
- **SQL:** [Flatterfels.sql](sql/Flatterfels.sql)

## Geisterinsel

![Geisterinsel thumbnail](thumbnails/Geisterinsel.jpg)

- **Land type:** ebene
- **Fields:** 274
- **Bounding box:** x 3401–3423, y -431–-410 (23×22)
- **SQL:** [Geisterinsel.sql](sql/Geisterinsel.sql)

## Golden Isle

![Golden Isle thumbnail](thumbnails/Golden_Isle.jpg)

- **Land type:** ebene
- **Fields:** 546
- **Bounding box:** x 3658–3684, y 434–480 (27×47)
- **SQL:** [Golden_Isle.sql](sql/Golden_Isle.sql)

## Hafeninsel

![Hafeninsel thumbnail](thumbnails/Hafeninsel.jpg)

- **Land type:** ebene
- **Fields:** 7526
- **Bounding box:** x 4201–4300, y 501–600 (100×100)
- **SQL:** [Hafeninsel.sql](sql/Hafeninsel.sql)

## Insel der Hoffnung

![Insel der Hoffnung thumbnail](thumbnails/Insel_der_Hoffnung.jpg)

- **Land type:** ebene
- **Fields:** 11972
- **Bounding box:** x 3002–3152, y 420–610 (151×191)
- **SQL:** [Insel_der_Hoffnung.sql](sql/Insel_der_Hoffnung.sql)

## Insel der Trostlosigkeit

![Insel der Trostlosigkeit thumbnail](thumbnails/Insel_der_Trostlosigkeit.jpg)

- **Land type:** ebene
- **Fields:** 179
- **Bounding box:** x 3574–3592, y -871–-856 (19×16)
- **SQL:** [Insel_der_Trostlosigkeit.sql](sql/Insel_der_Trostlosigkeit.sql)

## Insel der verlorenen Wespen

![Insel der verlorenen Wespen thumbnail](thumbnails/Insel_der_verlorenen_Wespen.jpg)

- **Land type:** ebene
- **Fields:** 706
- **Bounding box:** x 4682–4722, y 721–750 (41×30)
- **SQL:** [Insel_der_verlorenen_Wespen.sql](sql/Insel_der_verlorenen_Wespen.sql)

## Insel Emma

![Insel Emma thumbnail](thumbnails/Insel_Emma.jpg)

- **Land type:** ebene
- **Fields:** 596
- **Bounding box:** x 4462–4494, y -245–-210 (33×36)
- **SQL:** [Insel_Emma.sql](sql/Insel_Emma.sql)

## Inutile

![Inutile thumbnail](thumbnails/Inutile.jpg)

- **Land type:** ebene
- **Fields:** 703
- **Bounding box:** x 3593–3635, y 841–878 (43×38)
- **SQL:** [Inutile.sql](sql/Inutile.sql)

## Isla de Muerta

![Isla de Muerta thumbnail](thumbnails/Isla_de_Muerta.jpg)

- **Land type:** ebene
- **Fields:** 337
- **Bounding box:** x 4922–4956, y 970–994 (35×25)
- **SQL:** [Isla_de_Muerta.sql](sql/Isla_de_Muerta.sql)

## Isola La Speranza

![Isola La Speranza thumbnail](thumbnails/Isola_La_Speranza.jpg)

- **Land type:** ebene
- **Fields:** 295
- **Bounding box:** x 4420–4443, y -567–-548 (24×20)
- **SQL:** [Isola_La_Speranza.sql](sql/Isola_La_Speranza.sql)

## Kathodos

![Kathodos thumbnail](thumbnails/Kathodos.jpg)

- **Land type:** ebene
- **Fields:** 4184
- **Bounding box:** x 3765–3842, y -28–74 (78×103)
- **SQL:** [Kathodos.sql](sql/Kathodos.sql)
