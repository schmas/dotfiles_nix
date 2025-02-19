{ config, ... }: {
  config = {
    security = { pam = { enableSudoTouchIdAuth = true; }; };

    system = {
      defaults = {
        NSGlobalDomain = {
          NSTableViewDefaultSizeMode = 2;
          AppleShowScrollBars = "Always";
          NSUseAnimatedFocusRing = false;
          NSWindowResizeTime = 0.001;
          NSNavPanelExpandedStateForSaveMode = true;
          NSNavPanelExpandedStateForSaveMode2 = true;
          PMPrintingExpandedStateForPrint = true;
          PMPrintingExpandedStateForPrint2 = true;
          NSDocumentSaveNewDocumentsToCloud = false;
          NSAutomaticCapitalizationEnabled = false;
          NSAutomaticDashSubstitutionEnabled = false;
          NSAutomaticPeriodSubstitutionEnabled = false;
          NSAutomaticQuoteSubstitutionEnabled = false;
          NSAutomaticSpellingCorrectionEnabled = false;
          ApplePressAndHoldEnabled = false;
          KeyRepeat = 2;
          InitialKeyRepeat = 15;

          "com.apple.keyboard.fnState" = true;
          "com.apple.swipescrolldirection" = true;
        };

        dock = {
          autohide = false;
          show-recents = false;
          launchanim = false;
          expose-animation-duration = 0.1;
          mineffect = "scale";
          minimize-to-application = true;
          mouse-over-hilite-stack = true;
          mru-spaces = false;
          showhidden = true;
          tilesize = 64;
        };

        finder = {
          AppleShowAllExtensions = true;
          _FXShowPosixPathInTitle = true;
          FXEnableExtensionChangeWarning = false;
          QuitMenuItem = true;
          FXPreferredViewStyle = "Nlsv";
          ShowPathbar = true;
          ShowStatusBar = true;
          FXRemoveOldTrashItems = true;
        };

        trackpad = {
          Clicking = true;
          TrackpadRightClick = true;
        };

        ActivityMonitor = {
          OpenMainWindow = true;
          IconType = 5;
          ShowCategory = 100;
          SortColumn = "CPUUsage";
          SortDirection = 0;
        };
      };
    };
  };
}
