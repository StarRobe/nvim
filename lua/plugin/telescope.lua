local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup{
  defaults = {
    -- ...
  },
  pickers = {

  },
  extensions = {
    -- ...
  }
}

require("telescope").load_extension("notify")

