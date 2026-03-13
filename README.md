# nyxt-config

![Wanderer above the Sea of Fog](https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Caspar_David_Friedrich_-_Wanderer_above_the_Sea_of_Fog.jpeg/700px-Caspar_David_Friedrich_-_Wanderer_above_the_Sea_of_Fog.jpeg)

*"Wanderer above the Sea of Fog" (c. 1818) by Caspar David Friedrich — [Wikipedia](https://en.wikipedia.org/wiki/Wanderer_above_the_Sea_of_Fog)*

**Configuration for the Nyxt browser -- bringing Emacs keybindings to keyboard-driven web browsing.**

## About

[Nyxt](https://nyxt.atlas.engineer/) is a keyboard-oriented, extensible web browser inspired by Emacs and Vim, fully configurable in Common Lisp. This repo contains a minimalist `init.lisp` that keeps the excellent defaults while adding two things: Google as a search engine and a set of Emacs-style keybindings on top of Nyxt's default CUA mode.

The philosophy is simple: the out-of-the-box experience is already good, so only override what is missing.

## Key Customizations

### Search Engines

- **Google** -- `https://www.google.com/search?q=~a`
- **Wikipedia** -- `https://en.wikipedia.org/w/index.php?search=~a`

### Emacs Keybindings in CUA Mode

Rather than switching entirely to Emacs mode, these bindings bring familiar Emacs navigation into the default CUA keymap:

| Binding       | Action                    |
|---------------|---------------------------|
| `M-x`         | Execute command           |
| `C-n` / `C-p` | Scroll down / up          |
| `C-f` / `C-b` | Scroll right / left       |
| `C-s`         | Search buffer             |
| `M-w`         | Copy                      |
| `C-y`         | Paste                     |
| `C-Y`         | Paste from clipboard ring |
| `M-s-<` / `M-s->` | Scroll to top / bottom |
| `C-g`         | Query selection in search engine |

The prompt buffer uses full Emacs mode for comfortable minibuffer-style interaction.

## Files

- `init.lisp` -- active configuration (Nyxt 3.0+)
- `before-3.0.lisp` -- archived config from before the Nyxt 3.0 API changes

## Installation

```shell
# Clone
git clone git@github.com:pdelfino/nyxt-config.git ~/projects/nyxt-config

# Symlink to Nyxt's config directory
mkdir -p ~/.config/nyxt
ln -sf ~/projects/nyxt-config/init.lisp ~/.config/nyxt/init.lisp
```

### Requirements

- [Nyxt browser](https://nyxt.atlas.engineer/) 3.0+

## Related

- Pedro's [video introduction to Nyxt](https://www.youtube.com/watch?v=8yBjfjFE0fk) explaining what it is and why it matters
- [Official Nyxt repository](https://github.com/atlas-engineer/nyxt)
- [Nyxt community forum -- configuration expose](https://discourse.atlas.engineer/c/nyxt/configuration-expose/8)
- Other notable configs: [aartaka/nyxt-config](https://github.com/aartaka/nyxt-config), [jmercouris's config](https://discourse.atlas.engineer/t/my-lightweight-configuration/47/6)
