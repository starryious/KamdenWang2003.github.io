(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[      3392,         88]
NotebookOptionsPosition[      3692,         80]
NotebookOutlinePosition[      4368,        103]
CellTagsIndexPosition[      4325,        100]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`highestOrder$$ = 16, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`highestOrder$$], 0, 16, 1}}, Typeset`size$$ = {
    360., {112., 116.80726756861708`}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`highestOrder$656$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`highestOrder$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`highestOrder$$, $CellContext`highestOrder$656$$, 
         0]}, "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        MapThread[Plot[
          Tooltip[#, #], {$CellContext`x, 0, 4 Pi}, PlotStyle -> #2, 
          PlotRange -> {All, {-3, 3}}]& , {
          Join[{
            Sin[$CellContext`x]}, 
           Map[Apply[Plus, 
             
             Table[((-1)^($CellContext`n + 1)/Factorial[
               2 $CellContext`n - 1]) $CellContext`x^(2 $CellContext`n - 
                1), {$CellContext`n, 1, #}]]& , 
            Range[$CellContext`highestOrder$$]]], 
          Map[Hue[1 - (# - 1)/($CellContext`highestOrder$$ + 1)]& , 
           Range[$CellContext`highestOrder$$ + 1]]}]], 
      "Specifications" :> {{$CellContext`highestOrder$$, 0, 16, 1}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{684., {141.13403309800196`, 146.86596690199804`}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"e5fb48a5-\
7fe2-447e-ae98-4350e1ad433a"]
},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"12.3 for Microsoft Windows (64-bit) (2021\:5e747\:670823\
\:65e5)",
StyleDefinitions->FrontEnd`FileName[{$RootDirectory, "C:", "Users", "10471", 
   "AppData", "Roaming", "Mathematica", "SystemFiles", "FrontEnd", 
   "StyleSheets"}, "Stellaria.nb", CharacterEncoding -> "UTF-8"],
ExpressionUUID->"e726e264-a16a-4e8c-9868-f3ab4d375c4e"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 2200, 45, 40, "Output",ExpressionUUID->"e5fb48a5-7fe2-447e-ae98-4350e1ad433a"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Dv0mTUmnBdEjwC14dfOYGdA4 *)
