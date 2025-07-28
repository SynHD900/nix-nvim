{
  vim = {
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
      lspkind.enable = false;
      lightbulb.enable = false;
      lspsaga.enable = false;
      trouble.enable = false;
      lspSignature.enable = false; # conflicts with blink in maximal
      otter-nvim.enable = false;
      nvim-docs-view.enable = true;
    };

    # This section does not include a comprehensive list of available language modules. To list all available language module options, please visit the nvf manual.
    languages = {
      enableFormat = true; #
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      # Languages that will be supported in default and maximal configurations.
      nix.enable = true;
      markdown.enable = true;

      terraform.enable = true;

      bash.enable = true;
      go.enable = true;
      lua.enable = true;
      python = {
        enable = true;
        lsp.server = "pyright";
      };
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

      assembly.enable = false;
      astro.enable = false;
      clang.enable = false;
      csharp.enable = false;
      css.enable = false;
      dart.enable = false;
      elixir.enable = false;
      fsharp.enable = false;
      gleam.enable = false;
      haskell.enable = false;
      html.enable = false;
      java.enable = false;
      julia.enable = false;
      kotlin.enable = false;
      nu.enable = false;
      ocaml.enable = false;
      r.enable = false;
      ruby.enable = false;
      scala.enable = false;
      sql.enable = false;
      svelte.enable = false;
      tailwind.enable = false;
      ts.enable = false;
      vala.enable = false;
      zig.enable = false;

      # Nim LSP is broken on Darwin and therefore
      # should be disabled by default. Users may still enable
      # `vim.languages.vim` to enable it, this does not restrict
      # that.
      # See: <https://github.com/PMunch/nimlsp/issues/178#issue-2128106096>
      nim.enable = false;
    };
  };
}
