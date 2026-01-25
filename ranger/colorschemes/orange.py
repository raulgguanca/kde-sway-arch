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
                bg = 166
                attr = bold

            if context.directory:
                fg = black

            else:
                fg = white
                attr = normal
            
            if context.empty or context.error:
                fg = black
                bg = 214
            if context.border:
                fg = 220
            
            if context.directory:
                fg = 214
                attr = bold
            
            elif context.executable and not \
                    any((context.media, context.container,
                       context.fifo, context.socket)):
                fg = 172
                attr = bold
            
            if context.socket:
                fg = 202
                attr = bold
            
            if context.fifo or context.device:
                fg = 166
                attr = bold
            
            if context.link:
                fg = 166 if context.good else 160
                attr = bold
            
            if context.bad:
                fg = 160
                bg = 220
            
            if context.tag_marker and not context.selected:
                fg = 220
                attr = bold
            
            if not context.selected and (context.cut or context.copied):
                fg = black
                bg = 220
            
            if context.main_column:
                if context.selected:
                    attr |= bold
                
                if context.marked:
                    fg = 220
                    bg = black
            
            if context.badinfo:
                fg = 160
                attr = bold

        elif context.in_titlebar:
            if context.hostname:
                fg = 166 if context.bad else 220
            elif context.directory:
                fg = 166
            elif context.tab:
                if context.good:
                    fg = 220
            elif context.link:
                fg = 220

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 166
                elif context.bad:
                    fg = 160
                    bg = 220
            
            if context.marked:
                fg = 220
                bg = black
                attr |= bold
            
            if context.message:
                if context.bad:
                    fg = 160
                    bg = 220
            
            if context.loaded:
                bg = 166

        if context.text:
            if context.highlight:
                attr |= bold
            
            if context.selected:
                attr |= reverse

        return fg, bg, attr
