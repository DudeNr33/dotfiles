return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      robotcode = {
        -- dynamically adjust cmd depending on lockfiles in root_dir
        cmd = function(dispatchers, config)
          local local_cmd
          if vim.uv.fs_stat(config.root_dir .. "/uv.lock") then
            local_cmd = { "uv", "--directory", config.root_dir, "run", "robotcode", "language-server" }
          elseif vim.uv.fs_stat(config.root_dir .. "/poetry.lock") then
            local_cmd = { "poetry", "--directory", config.root_dir, "run", "robotcode", "language-server" }
          else
            local_cmd = { "robotcode", "language-server" }
          end
          -- uncomment to see what command is actually used
          -- vim.notify("Cmd used: " .. table.concat(local_cmd, " "))
          return vim.lsp.rpc.start(local_cmd, dispatchers)
        end,
      },
    },
  },
}
