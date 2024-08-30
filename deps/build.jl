#copied from GeoPythonPlot
using Pkg
using CondaPkg #, Conda

if lowercase(get(ENV, "CI", "false")) == "true"    

    ENV["PYTHON"] = ""
    Pkg.build("PyCall")

    CondaPkg.add("matplotlib")
    #Conda.add("shapely",channel="conda-forge")
    #CondaPkg.add("cartopy")
    #CondaPkg.add("cmocean")
    #CondaPkg.add("cmocean",channel="conda-forge")
end
