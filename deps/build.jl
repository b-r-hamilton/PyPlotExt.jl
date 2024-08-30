#copied from GeoPythonPlot, I had to change from COndaPkg to Conda 
using Pkg
using CondaPkg

if lowercase(get(ENV, "CI", "false")) == "true"    

    ENV["PYTHON"] = ""
    Pkg.build("PyCall")
    CondaPkg.add("matplotlib")
    #Conda.add("shapely",channel="conda-forge")
    #CondaPkg.add("cartopy")
    #CondaPkg.add("cmocean")
    #CondaPkg.add("cmocean",channel="conda-forge")
end
