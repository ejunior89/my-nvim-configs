-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "gruvbox", -- set the colorscheme to use, this can be a string or a function that returns a string

    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      gruvbox = { -- this table overrides highlights in the gruvbox theme
        -- Normal = { bg = "#000000" },
      },
    },

    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },

  -- customize the status line
  statusline = {
    -- set the statusline to a table of components
    components = {
      { provider = "FileName" },        -- current file name
      { provider = "FileType" },        -- current file type
      { provider = "FileSize" },        -- current file size
      { provider = "FileFormat" },      -- current file format
      { provider = "FileEncoding" },    -- current file encoding
      { provider = "FileModified" },    -- if file is modified
      { provider = "FilePosition" },    -- current file position
      { provider = "GitBranch" },       -- current git branch
      { provider = "GitDiffAdded" },    -- added lines in git diff
      { provider = "GitDiffChanged" },  -- changed lines in git diff
      { provider = "GitDiffRemoved" },  -- removed lines in git diff
      { provider = "LSPActive" },       -- active LSP clients
      { provider = "LSPProgress" },     -- LSP progress
      { provider = "LSPDiagnostics" },  -- LSP diagnostics summary
      { provider = "LSPDiagnosticsError" },    -- number of errors
      { provider = "LSPDiagnosticsWarning" },  -- number of warnings
      { provider = "LSPDiagnosticsInformation" }, -- information messages
      { provider = "LSPDiagnosticsHint" },       -- hints
      { provider = "LSPStatus" },                 -- LSP status
      { provider = "LSPStatusProgress" },         -- LSP progress detail
      { provider = "LSPStatusError" },            -- LSP errors
      { provider = "LSPStatusWarning" },          -- LSP warnings
      { provider = "LSPStatusInformation" },      -- LSP info
      { provider = "LSPStatusHint" },              -- LSP hints
      { provider = "LSPStatusErrorCount" },        -- error count
      { provider = "LSPStatusWarningCount" },      -- warning count
      { provider = "LSPStatusInformationCount" },  -- info count
      { provider = "LSPStatusHintCount" },         -- hint count
      { provider = "LSPStatusProgressCount" },     -- progress count
      { provider = "LSPStatusLoading" },           -- loading indicator
      { provider = "LSPStatusLoadingCount" },      -- loading count
    },
  },
}
