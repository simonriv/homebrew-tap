# simonriv/homebrew-tap

Casks de Homebrew de [Smalti](https://smalti.sh), terminal para macOS pensada para trabajar con varios agentes de IA a la vez.

```sh
brew install --cask simonriv/tap/smalti
```

Smalti está firmada ad hoc y no está notarizada: tras instalarla, la primera apertura pide «Abrir de todos modos» en Configuración del Sistema → Privacidad y seguridad («Abrir igualmente» en Ajustes del Sistema, en español de España), o `xattr -dr com.apple.quarantine /Applications/Smalti.app`. Después se actualiza sola (Sparkle), por eso el cask lleva `auto_updates true`.

El pipeline de release de [simonriv/smalti](https://github.com/simonriv/smalti) empuja una rama `release/vX.Y.Z` con el cask nuevo y este repo abre el pull request.
