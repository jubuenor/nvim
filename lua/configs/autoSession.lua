local opts = {
  auto_session_enabled = true,
  auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
}

require("auto-session").setup(opts)
