/**********************************************************

'Pindex'
=================

Originally 'Geography Class', this version has been modified
to increase visibility and usability on mobile devices, and
include more cities and a higher zoom level.

Layers overview
---------------

### paper [world_extent_merc.geojson]

The shapefile is a rectangle extending to the bounds of the 
map filled with a repeating transparent pattern to give the 
map a folded paper texture.

### cities [populated_places_by_pop.zip]

This is essentially Natural Earth's Populated Places 
shapefile, but the elements have been reordered such by
population (descending). This is to take advantage of the 
fact that Mapnik will give priority to elements stored first
in the datasource. Using various classification attributes 
in the shapefile, only certain cities will be shown at 
certain zoom levels.

### country-name [country-labels.zip]

Labeled points of the world's country names. Derived from 
Natural Earth Data but hand-tweaked by MapBox.

### geo-lines [geographic-lines.zip]

Important lines such as the equator, Arctic and Antarctic 
circles, and the international date line.

### admin-0-line-land [admin-0-line-land.zip]

These are international borders that occur over land or 
lakes. International maritime borders are a separate layer.

### lakes [lakes.zip]

The world's lakes. The style is designed such that smaller 
lakes only appear as you zoom in.

### rivers [rivers_lake_centerlines_scale_ranks.zip]

### country [admin_0_countries.zip]

Countries - the rainbow.mss stylesheet colors each of these
individually.

### land-glow [admin_0_countries.zip]

A copy of the country layer providing the shadow/glow around
the continents.
 
***********************************************************************/

/* Scale factor variable for retina displays */
@s: 1;

@water: #ddeeff;
@land: #ffffdd;
@line: #226688;

/* Water bodies */
Map { 
  background-color: #aaa;
}

#lakes[ScaleRank<3][zoom=3],
#lakes[ScaleRank<4][zoom=4],
#lakes[ScaleRank<5][zoom=5],
#lakes[ScaleRank<6][zoom>=6] {
  polygon-fill:@water;
  line-color:darken(@water, 20%);
  line-width:0.3 * @s;
}
#lakes[ScaleRank<3][zoom=3] {
  line-width:0.4 * @s;
}
#lakes[ScaleRank<4][zoom=4] {
  line-width:0.5 * @s;
}
#lakes[ScaleRank<5][zoom=5] {
  line-width:0.6 * @s;
}
#lakes[ScaleRank<6][zoom>=6] {
  line-width:0.8 * @s;
}

#rivers[SCALERANK=1][zoom>=3],
#rivers[SCALERANK=2][zoom>=4],
#rivers[SCALERANK=3][zoom>=5],
#rivers[SCALERANK=4][zoom>=5],
#rivers[SCALERANK=5][zoom>=6],
#rivers[SCALERANK=6][zoom>=6],
#rivers[SCALERANK=7][zoom>=7],
#rivers[SCALERANK=8][zoom>=7],
#rivers[SCALERANK=9][zoom>=8] {
  line-color:@line * 1.5;
  line-join:round;
}
#rivers[SCALERANK=1][zoom=3],
#rivers[SCALERANK=2][zoom=4],
#rivers[SCALERANK=3][zoom=5],
#rivers[SCALERANK=4][zoom=5],
#rivers[SCALERANK=5][zoom=6],
#rivers[SCALERANK=6][zoom=6],
#rivers[SCALERANK=7][zoom=7],
#rivers[SCALERANK=8][zoom=7],
#rivers[SCALERANK=9][zoom=8] {
  line-width:0.2 * @s;
  line-opacity:0.4;
}
#rivers[SCALERANK=1][zoom=4],
#rivers[SCALERANK=2][zoom=5],
#rivers[SCALERANK=3][zoom=6],
#rivers[SCALERANK=4][zoom=6],
#rivers[SCALERANK=5][zoom=7],
#rivers[SCALERANK=6][zoom=7],
#rivers[SCALERANK=7][zoom=8],
#rivers[SCALERANK=8][zoom=8],
#rivers[SCALERANK=9][zoom=9] {
  line-width:0.4 * @s;
  line-opacity:0.6;
}
#rivers[SCALERANK=1][zoom=5],
#rivers[SCALERANK=2][zoom=6],
#rivers[SCALERANK=3][zoom=7],
#rivers[SCALERANK=4][zoom=7],
#rivers[SCALERANK=5][zoom=8],
#rivers[SCALERANK=6][zoom=8],
#rivers[SCALERANK=7][zoom=9],
#rivers[SCALERANK=8][zoom=9],
#rivers[SCALERANK=9][zoom=10] {
  line-width:0.6 * @s;
  line-opacity:0.8;
}
#rivers[SCALERANK=1][zoom=6],
#rivers[SCALERANK=2][zoom=7],
#rivers[SCALERANK=3][zoom=8],
#rivers[SCALERANK=4][zoom=8],
#rivers[SCALERANK=5][zoom=9],
#rivers[SCALERANK=6][zoom=9],
#rivers[SCALERANK=7][zoom=10],
#rivers[SCALERANK=8][zoom=10],
#rivers[SCALERANK=9][zoom=11] {
  line-width:0.8 * @s;
  line-opacity:1;
}

#glacier { 
  polygon-fill:#fff;
  polygon-opacity:0.5;
}

/* Useful/significant lines */
#geo-lines[ScaleRank<10] {
  line-color:@line;
  line-dasharray:6,2;
  [zoom=0] { line-width:0.2 * @s; }
  [zoom=1] { line-width:0.4 * @s; }
  [zoom=2] { line-width:0.6 * @s; }
  [zoom=3] { line-width:0.8 * @s; }
  [zoom>3] { line-width:1 * @s; }
}

.border.country[zoom>1],
.border.disputed[zoom>2] {
  line-width:1;
  line-color:#fff;
  line-join:round;
  .country[FeatureCla='Disputed (please verify)'] {
    [zoom=3] { line-dasharray:4,1; }
    [zoom=4] { line-dasharray:5,2; }
    [zoom=5] { line-dasharray:6,2; }
    [zoom=6] { line-dasharray:8,3; }
    [zoom>6] { line-dasharray:10,3; }
  }
  .disputed[FeatureCla='Breakaway'] {
    [zoom=3] { line-dasharray: 3,2; }
    [zoom=4] { line-dasharray: 4,4; }
    [zoom=5] { line-dasharray: 5,5; }
    [zoom=6] { line-dasharray: 6,6; }
    [zoom>6] { line-dasharray: 8,8; }
  }
  .disputed[FeatureCla='Claim boundary'] { 
    line-dasharray: 1,3;
    [zoom>6] { line-dasharray: 2,4; }
  }
  .country[FeatureCla='Indefinite (please verify)'] {
    line-dasharray: 6,1;
  }
}

#state[ADM0_A3="USA"],
#state[ADM0_A3="CAN"],
#state[ADM0_A3="AUS"] {
  [zoom>3] {
    line-color:@line;
    line-opacity:0.25;
    line-width:1.2 * @s;
    line-dasharray:6,2,2,2;
  }
}

/* Transparent PNG overlay for paper texture */
#paper[zoom<2] { 
  polygon-pattern-file:url(textures/paperfolds_256.png);
}
#paper[zoom>1] { 
  polygon-pattern-file:url(textures/paperfolds_512.png);
}

/* Tint Bands */
#ocean { polygon-fill: @water; }

#tint-band {
  opacity: 0.5;
  line-join: round;
  image-filters: agg-stack-blur(5,5);
  [zoom=2] { line-width: 3; }
  [zoom=3] { line-width: 5; }
  [zoom=4] { line-width: 8; }
  [zoom=5] { line-width: 12; }
  [zoom=6] { line-width: 17; }
  [zoom>6] { line-width: 23; }
}

#bath[DEPTH>0] {
  polygon-fill: aliceblue;
  polygon-comp-op: multiply;
}

