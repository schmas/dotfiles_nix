{ pkgs, ... }: {
  homebrew = {
    enable = true;
    brews = [ "urlview" "mise" "openssl" ];
    casks = [
      # Security & Privacy
      "1password"
      "gpg-suite-no-mail"
      "proton-pass"
      "protonvpn"
      "tunnelblick"
      "yubico-yubikey-manager"

      # Productivity & Utilities
      "alfred"
      "alt-tab"
      "bartender"
      "cleanmymac"
      "cleanshot"
      "doll"
      "hammerspoon"
      "imageoptim"
      "keepingyouawake"
      "leader-key"
      "logi-options+"
      "monitorcontrol"
      "neohtop"
      "notion"
      "notion-calendar"
      "pixelsnap"
      "rectangle-pro"
      "transnomino"

      # Development Tools
      "ghostty"
      "jetbrains-toolbox"
      "podman-desktop"
      "postman"
      "visual-studio-code"
      "zed"

      # Browsers & Communication
      "discord"
      "google-chrome"
      "slack"
      "vivaldi"
      "zoom"

      # Cloud Storage & Sync
      "google-drive"
      "proton-drive"
      "proton-mail"

      # Media & Entertainment
      "spotify"
      "steam"
      "whisky"
      "heroic"

      # Design & Creative
      # "figma"
      # "godot"

      # Virtual Machines & Remote Access
      # "rustdesk"
      "utm"

      # Microsoft
      # "microsoft-auto-update"
    ];
    onActivation = {
      #cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };
  };
}
