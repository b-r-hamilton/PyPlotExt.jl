#copied from GeoPythonPlot, I had to change from COndaPkg to Conda 
using Pkg
using Conda

if lowercase(get(ENV, "CI", "false")) == "true"    

    ENV["PYTHON"] = ""
    Pkg.build("PyCall")
    Conda.add("matplotlib")
    #Conda.add("shapely",channel="conda-forge")
    #CondaPkg.add("cartopy")
    #CondaPkg.add("cmocean")
    #CondaPkg.add("cmocean",channel="conda-forge")
end
