-- TypeScript / Effect language service.
--
-- vtsls only loads tsserver plugins (like @effect/language-service) when it runs
-- the *workspace* TypeScript rather than its own bundled copy. That matters here:
-- the workspace copy is the one patched by `effect-language-service patch`, so it
-- is the only one that emits Effect diagnostics.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
            },
            typescript = {
              tsserver = {
                -- let the bundled tsserver find locally installed plugins
                pluginPaths = { "./node_modules" },
              },
            },
          },
        },
      },
    },
  },
}
