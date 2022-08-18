This is a simple Swift program to test the process for using an AnimatableVector for simple 2D plotting.

A DataSource class generates (and publishes) a vector of 16 random Float values every half-second.

A PlotView struct then plots these values along a horizontal axis.  The PlotView's Canvas has a .animation modifier which should animate the plot.  But, clearly, no smoothing is occuring.  What am I doing wrong?

This is the code for a question I posted on StackOverflow at https://stackoverflow.com/questions/73396167/how-to-use-an-animatablevector-for-simple-2d-plotting

