from rich.console import Console
from rich.panel import Panel
from rich.text import Text

def show_radio_art():
    art = r"""    
                      \
                       \
                         \
                           \
                             \
                               \
                                 \
    ______________________________
  /                                \
 /____________________________________\
|                                     |
|           RocknRoll Radio           |
|  ____________           ______      |
| |------------|         /      \     |
| |------------|        |        |    |
| |------------|         \______/     |
|  ____________                       |
|                                     |
|   VOL   |   TUNER   |   FM   |   AM |
|______________________________________|
 \____________________________________/
"""
    print(art)

    console = Console()

    # Create the "Like & Follow" button
    facebook_text = Text.from_markup("[bold white on #3b5998]  👍 Like & Follow  [/]")
    facebook_panel = Panel(facebook_text, style="#3b5998")
    console.print(facebook_panel)

    # Create the "Join Us" button
    whatsapp_text = Text.from_markup("[bold white on #25D366]  📱 Join Us  [/]")
    whatsapp_panel = Panel(whatsapp_text, style="#25D366")
    console.print(whatsapp_panel)

    print("\n")
    print("Find us at these links:")
    print("Facebook: https://www.facebook.com/profile.php?id=61577819146441")
    print("WhatsApp: https://whatsapp.com/channel/0029VbBkaQyG3R3maDo9S52b")

# The main part of your script
if __name__ == "__main__":
    show_radio_art()
