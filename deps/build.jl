#copied from GeoPythonPlot
using Pkg
using CondaPkg

if lowercase(get(ENV, "CI", "false")) == "true"    

    ENV["PYTHON"] = ""
    Pkg.build("PythonCall")
    CondaPkg.add("matplotlib")
    #Conda.add("shapely",channel="conda-forge")
    #CondaPkg.add("cartopy")
    #CondaPkg.add("cmocean")
    #CondaPkg.add("cmocean",channel="conda-forge")
end
