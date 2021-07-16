local ts_config
if
    not pcall(
        function()
            ts_config = require "nvim-treesitter.configs"
        end
    )
 then
    return
end

ts_config.setup {
    ensure_installed = {
        "javascript",
        "html",
        "css",
        "bash",
        "lua",
        "json",
        "python"
        "rust",
        "cpp",
        "c"
        -- "go"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
