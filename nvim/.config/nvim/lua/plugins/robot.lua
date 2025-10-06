return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      robotcode = {
        -- default fallback
        cmd = { "robotcode", "language-server" },

        -- dynamically adjust cmd depending on lockfiles in root_dir
        on_new_config = function(new_config, root_dir)
          local uv = vim.loop

          if uv.fs_stat(root_dir .. "/uv.lock") then
            new_config.cmd = { "uv", "run", "robotcode", "language-server" }
            return
          end

          if uv.fs_stat(root_dir .. "/poetry.lock") then
            new_config.cmd = { "poetry", "run", "robotcode", "language-server" }
            return
          end

          new_config.cmd = { "robotcode", "language-server" }
        end,
      },
    },
  },
}
