Dear reader,

       in this repository I share some of MATLAB files I have created to help me with some activities.
Here, you'll find some codes that can be extremely handy when trying to build a Z-bus matrix following
the step-by-step approach according to which one starts with the reference bus and adds one branch at
a time to connect every bus in an electrical system.
       The following files are available:

       1- symmatx.m (Enter a matrix and this function will return builds a symmetrical matrix from the 
upper triangle of the input square matrix).

       2- branchaddition.m (Pass as inputs the initial n-dimensional square matrix, the branch impedance 
and the number of the bus to which the new one shall be connected and a this function will return the 
resulting n+1-dimensional square matrix).

       3- kronsreduc.m (When the recently added branch closes a loop in the reference bus, use this
matrix and pass an n+1-dimensional square matrix and the number of the bus on the other end of branch
as arguments to the function and it will perform a kron's reduction to return an n-dimensional matrix)

       4- kronsreduct.m (This code is similar to the one in kronsreduct, but, here, an extra bus number 
needs be entered as the case being considered is that where none of the buses the added branch is 
connected to is the reference one).

	Further info on how each function works can be found within its introduction in each file.

	Hope this may help any member in this community and look forward to get feedback as well as to
hear how much help these files provided you.
