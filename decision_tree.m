%load the data
load fisheriris
%creat classificatin tree
ctree=ClassificationTree.fit(meas,species)
%graph of decision tree
ctree.view('mode','graph')
