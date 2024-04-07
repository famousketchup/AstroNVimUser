return {
  "Yggdroot/LeaderF",
  cmd = "Leaderf",
  build = function()
    if not vim.g.is_win then
      vim.cmd(":LeaderfInstallCExtension")
    end
  end,
  opts = function()
    vim.cmd('let g:Lf_UseCache = false')
  end
}
