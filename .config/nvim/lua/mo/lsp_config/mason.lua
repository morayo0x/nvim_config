-- [[ Mason Setup ]]
require("mason").setup({
  ui = {
    icon = {
      package_installed = "",
      package_pending = "",
      package_uninstalled = ""
    }
  }

})


require("mason-lspconfig").setup()
