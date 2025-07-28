{
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./theme.nix
    ./visuals.nix
  ];
  vim = {
    # This is the sample configuration for nvf, aiming to give you a feel of the default options
    # while certain plugins are enabled. While it may partially act as one, this is *not* quite
    # an overview of nvf's module options. To find a complete and curated list of nvf module
    # options, examples, instruction tutorials and more; please visit the online manual.
    # https://notashelf.github.io/nvf/options.html

    # relative numbers =>
    lineNumberMode = "relNumber";
    viAlias = true;
    vimAlias = false;
    debugMode = {
      enable = false;
      level = 16;
      logFile = "/tmp/nvim.log";
    };
    dashboard.alpha = {
      enable = true;
      theme = "theta";
    };

    # autobrackets
    autopairs.nvim-autopairs.enable = true;

    # nvf provides various autocomplete options. The tried and tested nvim-cmp
    # is enabled in default package, because it does not trigger a build. We
    # enable blink-cmp in maximal because it needs to build its rust fuzzy
    # matcher library.
    autocomplete = {
      # nvim-cmp.enable = false;
      blink-cmp = {
        enable = true;
        friendly-snippets.enable = true;
        sourcePlugins.emoji.enable = true;
      };
    };

    snippets.luasnip.enable = true;

    filetree = {
      neo-tree = {
        enable = true;
      };
    };

    # tabline = {
    #   nvimBufferline.enable = true;
    # };

    treesitter.context.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
      # hardtime-nvim.enable = true;
    };

    telescope.enable = true;

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false; # throws an annoying debug message
    };

    utility = {
      diffview-nvim.enable = true;
      preview.markdownPreview.enable = true;

      # motion = {
      #   hop.enable = true;
      #   leap.enable = true;
      #   precognition.enable = false;
      # };
      images = {
        image-nvim.enable = false;
        img-clip.enable = false;
      };
    };

    notes = {
      obsidian.enable = false; # FIXME: neovim fails to build if obsidian is enabled
      neorg.enable = false;
      orgmode.enable = false;
      mind-nvim.enable = false;
      todo-comments.enable = false;
    };

    terminal = {
      toggleterm = {
        enable = true;
        lazygit.enable = true;
      };
    };

    ui = {
      borders.enable = true;
      # command bar
      noice.enable = true;

      colorizer.enable = true;
      modes-nvim.enable = false; # the theme looks terrible with catppuccin
      illuminate.enable = true;
      smartcolumn = {
        enable = true;
        setupOpts.custom_colorcolumn = {
          # this is a freeform module, it's `buftype = int;` for configuring column position
          nix = "110";
          ruby = "120";
          java = "130";
          go = ["90" "130"];
        };
      };
      fastaction.enable = true;
    };

    comments = {
      comment-nvim.enable = true;
    };
  };
}
