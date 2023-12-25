return {
  "Yggdroot/LeaderF",
  cmd = "Leaderf",
  build = function()
    if not vim.g.is_win then
      vim.cmd(":LeaderfInstallCExtension")
    end
  end
}
