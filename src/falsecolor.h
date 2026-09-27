#ifndef _falsecolor_h_
#define _falsecolor_h_

int falsecolor_value(int i);

int falsecolor_value_ex(int palette, int i);

int falsecolor_fordraw(int i);

void draw_false_downsampled( void );

char* falsecolor_palette_name();

void falsecolor_palette_preview(int x, int y);

extern uint8_t *false_colour[256];
extern int falsecolor_draw;
extern int falsecolor_palette;

/* not in false_colour[]: computed from the raw data (see draw_false_raw_lv) */
#define FALSECOLOR_PALETTE_RAW 6

MENU_UPDATE_FUNC(falsecolor_display);

MENU_UPDATE_FUNC(falsecolor_display_palette);

#endif /* _falsecolor_h_ */