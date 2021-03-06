/* Scale factor variable for retina displays */
@s: 1;

/* Fonts and font sets can be assigned to variables. The first font
   will be preferred, and fall back to subsequent fonts for characters
   that are not available, or if the entire font is not available to
   Mapnik. */
@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";
@futura_italic: "Futura Medium Italic","Function Pro Medium Italic","Ubuntu Italic","Trebuchet MS Italic","DejaVu Sans Oblique";
@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold","Trebuchet MS Bold","DejaVu Sans Bold";

/* ---- Countries ---- */
#country-name {
  text-face-name: @futura_med;
  text-fill:@line * 0.6;
  text-size:10 * @s;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1 * @s;
  text-wrap-width:50;
  text-placement-type: simple;
  text-placements: "N,S,NE,NW,SW,SE,W,E";
  text-dy: 0;
  text-dx: 0;
  text-name:"''";
  
  [LabelRank<2][zoom=2] {
    text-name: "[ABBREV]";
  }
  [LabelRank<3][zoom=3] {
    text-name: "[ABBREV]";
    text-size:11 * @s;
  }
  [zoom=4] {
    text-name:"[NAME]";
    [LabelRank<3] { text-size: 12 * @s; }
  }
  [zoom=5] {
    text-name:"[NAME]";
    [LabelRank<3] { text-size: 13 * @s; }
    [LabelRank=3] { text-size: 12 * @s; }
    [LabelRank=4] { text-size: 12 * @s; }
  }
  [zoom=6] {
    text-name:"[NAME]";
    [LabelRank<3] { text-size: 14 * @s; }
    [LabelRank=3] { text-size: 13 * @s; }
    [LabelRank=4] { text-size: 12 * @s; }
    [LabelRank=5] { text-size: 12 * @s; }
  }
  [zoom=7] {
    text-name:"[NAME]";
    [LabelRank<3] { text-size: 15 * @s; }
    [LabelRank=3] { text-size: 14 * @s; }
    [LabelRank=4] { text-size: 13 * @s; }
    [LabelRank=5] { text-size: 12 * @s; }
    [LabelRank=6] { text-size: 12 * @s; }
    [LabelRank>7] { text-size: 12 * @s; }
  }
}

/* ---- States ---- */

#state-name {
    text-face-name:@futura_italic;
  	text-fill: @line;
    opacity: 0.6;
  	text-size: 9 * @s;
  	text-halo-fill: rgba(255,255,255,0.5);
  	text-halo-radius: 1;
    text-placement-type: simple;
    text-placements: "N,E,W,NE,NW,S,SW,SE";
    text-dy: 3;
    text-dx: 3;
    text-name:"''";

  [zoom=4] {
    text-name:"[Abbrev]";
    [LabelRank<3] { text-size: 12 * @s; }
  }
  [zoom=5] {
    text-name:"[Abbrev]";
    [LabelRank<3] { text-size: 13 * @s; }
    [LabelRank=3] { text-size: 12 * @s; }
    [LabelRank=4] { text-size: 11 * @s; }
  }
  [zoom=6] {
    text-name:"[NAME_1]";
    [LabelRank<3] { text-size: 14 * @s; }
    [LabelRank=3] { text-size: 13 * @s; }
    [LabelRank=4] { text-size: 12 * @s; }
    [LabelRank=5] { text-size: 11 * @s; }
  }
  [zoom=7] {
    text-name:"[NAME_1]";
    [LabelRank<3] { text-size: 15 * @s; }
    [LabelRank=3] { text-size: 14 * @s; }
    [LabelRank=4] { text-size: 13 * @s; }
    [LabelRank=5] { text-size: 12 * @s; }
    [LabelRank=6] { text-size: 11 * @s; }
    [LabelRank=7] { text-size: 11 * @s; }
  }
}

/* ---- Cities ---- */

#cities {
  [SCALERANK<3][zoom>=4],
  [SCALERANK=3][zoom>=5],
  [SCALERANK=4][zoom>=5],
  [SCALERANK=5][zoom>=6],
  [SCALERANK=6][zoom>=6],
  [SCALERANK=7][zoom>=7],
  [SCALERANK=8][zoom>=7],
  [SCALERANK=9][zoom>=8],
  [SCALERANK=10][zoom>=8] {
    text-name: "[NAME]";
  	text-fill: @line * 0.6;
  	text-face-name:@futura_med;
  	text-size: 9 * @s;
  	text-halo-fill: rgba(255,255,255,0.5);
  	text-halo-radius: 1;
  	point-file: url(icons/circle-6.png);
    text-placement-type: simple;
    text-placements: "W,E,NE,NW,N,S,SW,SE";
    text-dy: 6;
    text-dx: 6;
  }
  [zoom=4] {
    [SCALERANK<3] { text-size: 12 * @s; }
  }
  [zoom=5] {
    [SCALERANK<3] { text-size: 13 * @s; }
    [SCALERANK=3] { text-size: 12 * @s; }
    [SCALERANK=4] { text-size: 11 * @s; }
  }
  [zoom=6] {
    [SCALERANK<3] { text-size: 14 * @s; }
    [SCALERANK=3] { text-size: 13 * @s; }
    [SCALERANK=4] { text-size: 12 * @s; }
    [SCALERANK=5] { text-size: 11 * @s; }
  }
  [zoom=7] {
    [SCALERANK<3] { text-size: 15 * @s; }
    [SCALERANK=3] { text-size: 14 * @s; }
    [SCALERANK=4] { text-size: 13 * @s; }
    [SCALERANK=5] { text-size: 12 * @s; }
    [SCALERANK=6] { text-size: 11 * @s; }
    [SCALERANK=7] { text-size: 11 * @s; }
  }
  [zoom=8] {
    [SCALERANK<3] { text-size: 15 * @s; }
    [SCALERANK=3] { text-size: 15 * @s; }
    [SCALERANK=4] { text-size: 14 * @s; }
    [SCALERANK=5] { text-size: 14 * @s; }
    [SCALERANK=6] { text-size: 13 * @s; }
    [SCALERANK=7] { text-size: 13 * @s; }
    [SCALERANK=8] { text-size: 12 * @s; }
    [SCALERANK=9] { text-size: 11 * @s; }
  }
  [zoom=9] {
    [SCALERANK<3] { text-size: 16 * @s; }
    [SCALERANK=3] { text-size: 16 * @s; }
    [SCALERANK=4] { text-size: 15 * @s; }
    [SCALERANK=5] { text-size: 15 * @s; }
    [SCALERANK=6] { text-size: 14 * @s; }
    [SCALERANK=7] { text-size: 14 * @s; }
    [SCALERANK=8] { text-size: 13 * @s; }
    [SCALERANK=9] { text-size: 13 * @s; }
    [SCALERANK=10] { text-size: 12 * @s; }
  }
  [zoom=10] {
    [SCALERANK<3] { text-size: 16 * @s; text-character-spacing:2 * @s; }
    [SCALERANK=3] { text-size: 16 * @s; text-character-spacing:2 * @s; }
    [SCALERANK=4] { text-size: 15 * @s; text-character-spacing:1 * @s; }
    [SCALERANK=5] { text-size: 15 * @s; text-character-spacing:1 * @s; }
    [SCALERANK=6] { text-size: 15 * @s; text-character-spacing:1 * @s; }
    [SCALERANK=7] { text-size: 14 * @s; }
    [SCALERANK=8] { text-size: 14 * @s; }
    [SCALERANK=9] { text-size: 13 * @s; }
    [SCALERANK=10] { text-size: 13 * @s; }
  }
  [zoom>10] {
    [SCALERANK<3] { text-size: 16 * @s; text-character-spacing:3 * @s; }
    [SCALERANK=3] { text-size: 16 * @s; text-character-spacing:3 * @s; }
    [SCALERANK=4] { text-size: 16 * @s; text-character-spacing:3 * @s; }
    [SCALERANK=5] { text-size: 15 * @s; text-character-spacing:2 * @s; }
    [SCALERANK=6] { text-size: 15 * @s; text-character-spacing:2 * @s; }
    [SCALERANK=7] { text-size: 15 * @s; text-character-spacing:2 * @s; }
    [SCALERANK=8] { text-size: 14 * @s; text-character-spacing:1 * @s; }
    [SCALERANK=9] { text-size: 14 * @s; text-character-spacing:1 * @s; }
    [SCALERANK=10] { text-size: 14 * @s; text-character-spacing:1 * @s; }
  }
}

/* ---- GEOGRAPHIC LINES ---- */
#geo-lines[zoom>1][ScaleRank<10]{ 
  text-dy:-7;
  text-name:"";
  text-face-name:@futura_med;
  text-fill:@line;
  text-placement:line;
  text-spacing:600 * @s;
}
