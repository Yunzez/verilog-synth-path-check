from pyverilog.dataflow.dataflow_analyzer import VerilogDataflowAnalyzer

analyzer = VerilogDataflowAnalyzer(
    topmodule='top',
    filelist=['test.v'],
    preprocess_include=[], preprocess_define=[]
)
analyzer.generate()
terms = analyzer.getTerms()
binddict = analyzer.getBinddict()

for termname, term in terms.items():
    print(f"{termname}: {term.termtype}")

for varname, binds in binddict.items():
    print(f"\nBindings for {varname}:")
    for b in binds:
        print(f"  {b.tree}")
