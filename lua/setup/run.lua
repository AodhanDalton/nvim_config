function  run_python_script()
    -- Get the current window dimensions
    local file_path = vim.fn.expand("%:p")

    local win_width = tonumber(vim.fn.winwidth(0))
    local win_height = tonumber(vim.fn.winheight(0))
    
    -- window size and position
    local new_width = math.floor(0.5 * win_width)
    local new_height = math.floor(0.9 * win_height)

    local x_pos = math.floor((win_width - new_width) / 0.8)
    local y_pos = math.floor((win_height - new_height) / 2)

    local win_opts = {
        border = "double",
        relative = "win",
        style = "minimal",
        width = new_width,
        height = new_height,
        row = y_pos,
        col = x_pos,
    }

    -- create preview buffer
    local buf = vim.api.nvim_create_buf(false, true)
    local win = vim.api.nvim_open_win(buf, true, win_opts)
    
    local keymaps_opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(buf, "n", "q", ":q<CR>", keymaps_opts)

    -- run python script
    vim.fn.termopen("python3 " .. file_path)
    
end

