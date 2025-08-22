from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class OrangeYellowInverted(ColorScheme):
    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                fg = black
                bg = 166  # naranja oscuro (principal)
                attr = bold

            if context.directory:
                fg = black

            else:
                fg = white
                #bg = black
                attr = normal
            
            if context.empty or context.error:
                fg = black
                bg = 214  # naranja claro
            
            if context.border:
                fg = 220  # amarillo brillante (accesorio)
            
            if context.directory:
                fg = 214  # naranja oscuro (principal)
                attr = bold
            
            elif context.executable and not \
                    any((context.media, context.container,
                       context.fifo, context.socket)):
                fg = 172  # naranja medio
                attr = bold
            
            if context.socket:
                fg = 202  # naranja rojizo
                attr = bold
            
            if context.fifo or context.device:
                fg = 166  # naranja oscuro
                attr = bold
            
            if context.link:
                fg = 166 if context.good else 160  # naranja oscuro o rojo oscuro si roto
                attr = bold
            
            if context.bad:
                fg = 160  # rojo oscuro
                bg = 220  # amarillo brillante
            
            if context.tag_marker and not context.selected:
                fg = 220  # amarillo brillante (accesorio)
                attr = bold
            
            if not context.selected and (context.cut or context.copied):
                fg = black
                bg = 220  # amarillo brillante (accesorio)
            
            if context.main_column:
                if context.selected:
                    attr |= bold
                
                if context.marked:
                    fg = 220  # amarillo brillante (accesorio)
                    bg = black
            
            if context.badinfo:
                fg = 160  # rojo oscuro
                attr = bold

        elif context.in_titlebar:
            if context.hostname:
                fg = 166 if context.bad else 220  # naranja oscuro / amarillo
                bg = black
            elif context.directory:
                fg = 166  # naranja oscuro (principal)
                bg = black
            elif context.tab:
                if context.good:
                    fg = 220  # amarillo brillante (accesorio)
                    bg = black
            elif context.link:
                fg = 220  # amarillo brillante (accesorio)

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 166  # naranja oscuro (principal)
                elif context.bad:
                    fg = 160  # rojo oscuro
                    bg = 220
            
            if context.marked:
                fg = 220  # amarillo brillante (accesorio)
                bg = black
                attr |= bold
            
            if context.message:
                if context.bad:
                    fg = 160  # rojo oscuro
                    bg = 220  # amarillo brillante (accesorio)
            
            if context.loaded:
                bg = 166  # naranja oscuro (principal)

        if context.text:
            if context.highlight:
                attr |= bold
            
            if context.selected:
                attr |= reverse

        return fg, bg, attr
