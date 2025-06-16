{
  vim = {
    # This is the sample configuration for nvf, aiming to give you a feel of the default options
    # while certain plugins are enabled. While it may partially act as one, this is *not* quite
    # an overview of nvf's module options. To find a complete and curated list of nvf module
    # options, examples, instruction tutorials and more; please visit the online manual.
    # https://notashelf.github.io/nvf/options.html

    # relative numbers =>
    lineNumberMode = "number";
    viAlias = true;
    vimAlias = true;
    debugMode = {
      enable = false;
      level = 16;
      logFile = "/tmp/nvim.log";
    };

    keymaps = [
      {
        key = "<leader>e";
        mode = "n";
        silent = true;
        action = ":Neotree<CR>";
      }
      {
        key = "<C-n>";
        mode = "n";
        silent = true;
        action = ":Neotree toggle<CR>";
      }
    ];

    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };

    spellcheck = {
      enable = true;
      languages = [
        "en"
        "de"
      ];
    };

    lsp = {
      # This must be enabled for the language modules to hook into
      # the LSP API.
      enable = true;
      inlayHints.enable = true;
      formatOnSave = true;
      lspkind.enable = true;
      lightbulb.enable = true;
      lspsaga.enable = true;
      trouble.enable = true;
      lspSignature.enable = false; # conflicts with blink in maximal
      otter-nvim.enable = false;
      nvim-docs-view.enable = true;
    };

    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };

    # This section does not include a comprehensive list of available language modules.
    # To list all available language module options, please visit the nvf manual.
    languages = {
      enableFormat = true; #
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      # Languages that will be supported in default and maximal configurations.
      nix.enable = true;
      markdown.enable = true;

      # Languages that are enabled in the maximal configuration.
      bash.enable = true;
      clang.enable = false;
      css.enable = false;
      html.enable = false;
      sql.enable = false;
      java.enable = false;
      kotlin.enable = false;
      ts.enable = false;
      go.enable = true;
      lua.enable = true;
      zig.enable = false;
      python.enable = true;
      typst = {
        enable = true;
        format.type = "typstyle";
      };
      # typst.enable = true;
      rust = {
        enable = false;
        crates.enable = false;
      };
      yaml.enable = true;

      # Language modules that are not as common.
      assembly.enable = false;
      astro.enable = false;
      nu.enable = false;
      csharp.enable = false;
      julia.enable = false;
      vala.enable = false;
      scala.enable = false;
      r.enable = false;
      gleam.enable = false;
      dart.enable = false;
      ocaml.enable = false;
      elixir.enable = false;
      haskell.enable = false;
      ruby.enable = false;
      fsharp.enable = false;

      tailwind.enable = false;
      svelte.enable = false;

      # Nim LSP is broken on Darwin and therefore
      # should be disabled by default. Users may still enable
      # `vim.languages.vim` to enable it, this does not restrict
      # that.
      # See: <https://github.com/PMunch/nimlsp/issues/178#issue-2128106096>
      nim.enable = false;
    };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = false;

      highlight-undo.enable = true;
      indent-blankline.enable = true;

      # Fun
      cellular-automaton.enable = false;
    };

    statusline = {
      lualine = {
        enable = true;
        # theme = "catppuccin";
        # theme = "dracula";
        theme = "tokyonight";
        # theme = "onedark";
      };
    };

    theme = {
      enable = true;
      # name = "catppuccin";
      # style = "mocha";
      name = "tokyonight";
      style = "night";
      # name = "onedark";
      # style = "darker";
      transparent = false;
    };

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

    tabline = {
      nvimBufferline.enable = true;
    };

    treesitter.context.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
      hardtime-nvim.enable = false;
    };

    telescope.enable = true;

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false; # throws an annoying debug message
    };

    minimap = {
      minimap-vim.enable = false;
      codewindow.enable = true; # lighter, faster, and uses lua for configuration
    };

    dashboard = {
      dashboard-nvim.enable = false;
      alpha.enable = true;
    };

    notify = {
      nvim-notify.enable = false;
    };

    projects = {
      project-nvim.enable = false;
    };

    utility = {
      ccc.enable = false;
      vim-wakatime.enable = false;
      diffview-nvim.enable = true;
      yanky-nvim.enable = false;
      icon-picker.enable = false;
      surround.enable = false;
      leetcode-nvim.enable = false;
      multicursors.enable = false;
      preview.markdownPreview.enable = true;

      motion = {
        hop.enable = true;
        leap.enable = true;
        precognition.enable = false;
      };
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
      todo-comments.enable = true;
    };

    terminal = {
      toggleterm = {
        enable = true;
        lazygit.enable = true;
      };
    };

    ui = {
      borders.enable = true;
      noice.enable = true;
      colorizer.enable = true;
      modes-nvim.enable = false; # the theme looks terrible with catppuccin
      illuminate.enable = true;
      breadcrumbs = {
        enable = false;
        navbuddy.enable = false;
      };
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

    assistant = {
      chatgpt.enable = false;
      copilot = {
        enable = false;
        cmp.enable = false;
      };
      codecompanion-nvim.enable = false;
      avante-nvim.enable = false;
    };

    session = {
      nvim-session-manager.enable = false;
    };

    gestures = {
      gesture-nvim.enable = false;
    };

    comments = {
      comment-nvim.enable = true;
    };

    presence = {
      neocord.enable = false;
    };
  };
}
