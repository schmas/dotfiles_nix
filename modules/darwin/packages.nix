{ pkgs, isTesting ? false, ... }:

with pkgs;
let
  # Darwin-specific packages
  darwinSpecificPackages = with pkgs; [ dockutil vscode ];

  # Brew packages
  brews = [ "urlview" "mise" "openssl" ];

  # Casks
  testingCasks = [
    "1password"
    "google-chrome"
    "ghostty"
    "zed"
  ];

  fullCasks = [
      # Security & Privacy
      "1password"
      "gpg-suite-no-mail"
      "proton-pass"
      "protonvpn"
      "tunnelblick"

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

  sharedPackages = import ../shared/packages.nix { inherit pkgs; };

  # Combine shared packages with Darwin-specific packages
  allPackages = sharedPackages ++ darwinSpecificPackages;

  # Filter out packages that are in Homebrew from all packages
  filteredPackages = builtins.filter
    (pkg: !(builtins.elem (pkg.pname or pkg.name) brews))
    allPackages;

  # debug = builtins.trace "Shared packages: ${toString (map (p: p.name or p.pname) sharedPackages)}" true;
in {
  packages = filteredPackages;
  inherit brews;
  casks = if isTesting then testingCasks else fullCasks;
}
