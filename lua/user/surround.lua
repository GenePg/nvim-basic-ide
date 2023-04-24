local M = {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  commit = "e6047128e57c1aff1566fb9f627521d2887fc77a",
}

function M.config()
  require("nvim-surround").setup({
     keymaps = {
      visual = "ms",
      delete = "md",
      change = "mr",
    },
    -- switch to use opening bracket for surrounding without space 
    surrounds = {
        [")"] = {
            add = { "( ", " )" },
            find = function()
                return M.get_selection({ motion = "a(" })
            end,
            delete = "^(. ?)().-( ?.)()$",
        },
        ["("] = {
            add = { "(", ")" },
            find = function()
                return M.get_selection({ motion = "a)" })
            end,
            delete = "^(.)().-(.)()$",
        },
        ["}"] = {
            add = { "{ ", " }" },
            find = function()
                return M.get_selection({ motion = "a{" })
            end,
            delete = "^(. ?)().-( ?.)()$",
        },
        ["{"] = {
            add = { "{", "}" },
            find = function()
                return M.get_selection({ motion = "a}" })
            end,
            delete = "^(.)().-(.)()$",
        },
        [">"] = {
            add = { "< ", " >" },
            find = function()
                return M.get_selection({ motion = "a<" })
            end,
            delete = "^(. ?)().-( ?.)()$",
        },
        ["<"] = {
            add = { "<", ">" },
            find = function()
                return M.get_selection({ motion = "a>" })
            end,
            delete = "^(.)().-(.)()$",
        },
        ["]"] = {
            add = { "[ ", " ]" },
            find = function()
                return M.get_selection({ motion = "a[" })
            end,
            delete = "^(. ?)().-( ?.)()$",
        },
        ["["] = {
            add = { "[", "]" },
            find = function()
                return M.get_selection({ motion = "a]" })
            end,
            delete = "^(.)().-(.)()$",
        },
    }
  })
end

return M

