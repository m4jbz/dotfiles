return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            numbers = "none", -- Opcional: muestra números de buffer
            diagnostics = "nvim_lsp", -- Muestra errores del LSP si los tienes configurados
            separator_style = "slant", -- Estilo visual entre pestañas ("slant", "thick", "thin")
            always_show_bufferline = true, -- Asegúrate de que siempre se muestre
            offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } }, -- Ajustes para NvimTree si lo usas
            show_buffer_close_icons = false, -- Ocultar íconos de cerrar buffer
        },
    },
}