local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
   --    -- nvim-tree (新增)
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- Packer 可以升级自己
    use("wbthomason/packer.nvim")
     -- bufferline (新增)
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
      -- lualine (新增)
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
       -- telescope （新增）
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    -- telescope extensions
    use "LinArcX/telescope-env.nvim"
    --------------------- colorschemes --------------------
    ---- tokyonight
    use("folke/tokyonight.nvim")
-- OceanicNext
    use("mhartington/oceanic-next")
-- gruvbox
    use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
-- zephyr 暂时不推荐，详见上边解释
-- use("glepnir/zephyr-nvim")
-- nord
    use("shaunsingh/nord.nvim")
-- onedark
    use("ful1e5/onedark.nvim")
-- nightfox
    use("EdenEast/nightfox.nvim")
     -- dashboard-nvim (新增)
    use("glepnir/dashboard-nvim")
    -------------------------------------------------------
end)
-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
