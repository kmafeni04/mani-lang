---@class PackageDependency
---@field name string package name as it will be used in file gen
---@field repo string git repo
---@field version? string git hash(#) or tag(v), defaults to "#HEAD"

---@class Package
---@field dependencies? PackageDependency[] List of package dependencies
---@field scripts? table<string, string> scripts that can be called with `nlpm script`

---@type Package
return {
  dependencies = {
    {
      name = "variant-nelua",
      repo = "https://github.com/kmafeni04/variant-nelua",
      version = "#c1dbeb2a1daa86d88a38deb24416b66149161e65",
    },
    {
      name = "ansicolor-nelua",
      repo = "https://github.com/kmafeni04/ansicolor-nelua",
      version = "#82d3d7e1154316ca75c7a52c4f17eb2d67add499",
    },
    {
      name = "map-nelua",
      repo = "https://github.com/kmafeni04/map-nelua",
      version = "#74f7d0ebbf5057ba202f2659d25c75b225b17d7d",
    },
    {
      name = "switch-nelua",
      repo = "https://github.com/kmafeni04/switch-nelua",
      version = "#153961a0277b9f67f4981f614e19be5b821ddb2d",
    },
  },
  scripts = {
    test = "nelua --cc=tcc test.nelua",
    dev = "nelua --cc=tcc main.nelua test.mani",
    dev_dbg = "nelua main.nelua test.mani -d",
  },
}
