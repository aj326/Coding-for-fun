/*  Student information for assignment:
 *
 *  UTEID:
 *  email address:
 *  Grader name:
 *  Number of slip days I am using:
 */



/* CS314 Students. Put your experiment results and
* answers to questions here.
*/

/**
 * A class to run tests on the MathMatrix class
 */
public class MathMatrixTester
{

    /**
     * main method that runs simple test on the MathMatrix class
     *
     * @param args not used
     */
    public static void main(String[] args) {
       int[][] data1 = { {1, 2, 3},
                       {2, 3, 4}};
        int[][] data2 = { {2, 1, 1},
                       {2, 3, 1}};
        int[][] e1;

        //test 1, specify size and values constructor
        MathMatrix mat1 = new MathMatrix(2, 3, -1);
        e1 = new int[][] {{-1, -1, -1}, {-1, -1, -1}};
        printTestResult( get2DArray(mat1), e1, 1, "Constructor with size and initial val specified.");

        //tests 2 and 3, int[][] constructor, deep copy
        mat1 = new MathMatrix( data1 );
        data1[0][0] = 2;
        // alter data1. mat1 should be unchanged if deep copy made
        e1 = new int[][] { {2, 2, 3}, {2, 3, 4} };
        printTestResult( data1, e1, 2, "constructor with one parameter of type int[][]");
        // data1 altered. mat1 should be unchanged if deep copy made
        e1 = new int[][] { {1, 2, 3}, {2, 3, 4} };
        printTestResult( get2DArray(mat1), e1, 3, "constructor with one parameter of type int[][]. Testing deep copy made.");

        //tests 4 - 6, addition
        data1[0][0] = 1;
        mat1 = new MathMatrix(data1);
        MathMatrix mat2 = new MathMatrix(data2);
        MathMatrix mat3 = mat1.add(mat2);
        e1 = new int[][] { {1, 2, 3}, {2, 3, 4} };
        printTestResult( get2DArray(mat1), e1, 4, "add method. Testing mat1 unchanged.");
        e1 = new int[][] { {2, 1, 1}, {2, 3, 1} };
        printTestResult( get2DArray(mat2), e1, 5, "add method. Testing mat2 unchanged.");
        e1 = new int[][] { {3, 3, 4}, {4, 6, 5} };
        printTestResult( get2DArray(mat3), e1, 6, "add method. Testing mat3 correct result.");

        //test 7, multiplication
        data2 = new int[][] { {1, 2}, {3, 1}, {2, 1} };
        mat2 = new MathMatrix(data2);
        mat1 = new MathMatrix(data1);
        mat3 = mat2.multiply(mat1);
        e1 = new int[][] { {5, 8, 11}, {5, 9, 13}, {4, 7, 10} };
        printTestResult( get2DArray(mat3), e1, 7, "multiply method");

        //test 8, toString()
        data1 = new int[][] {{10, 100, 101, -1000},
                          {1000, 10, 55, 4},
                          {1, -1, 4, 0}};
        mat1 = new MathMatrix(data1);
        String expected = "    10   100   101 -1000\n  1000    10    55     4\n     1    -1     4     0\n";
        if( mat1.toString().equals( expected ) )
            System.out.println("passed test 8, toString method.");
        else
            System.out.println("failed test 8, toString method.");
        
        //test 9, upperTriangular
        data1 = new int[][] {{1, 2, 3, 0}, {0, 3, 2, 3}, {0, 0, 4, -1}, {0, 0, 0, 12}};
        mat1 = new MathMatrix(data1);
        if( mat1.isUpperTriangular())
            System.out.println("Passed test 9, upperTriangular method.");
        else
            System.out.println("Failed test 9, upperTriangular method.");
        
        //test 10, upperTriangular
        data1 = new int[][] {{1, 2, 3, 0}, {0, 3, 2, 3}, {0, 0, 4, -1}, {1, 2, 3, 4}};
        mat1 = new MathMatrix(data1);
        if( !mat1.isUpperTriangular())
            System.out.println("Passed test 10, upperTriangular method.");
        else
            System.out.println("Failed test 10, upperTriangular method.");   
        
        
        // CS314 Students. When ready delete the above tests 
        // and add your 24 tests here.
        

    }

    private static void printTestResult(int[][] data1, int[][] data2, int testNum, String testingWhat) {
        System.out.print( "Test number " + testNum + " tests the " + testingWhat +". The test ");
        String result = equals(data1, data2) ? "passed" : "failed";
        System.out.println( result );
    }

    // pre: m != null, m is at least 1 by 1 in size
    private static int[][] get2DArray(MathMatrix m) {
        //check precondition
        assert ( m != null ) && ( m.numRows() > 0 ) && ( m.numCols()> 0 )
                : "Violation of precondition: get2DArray";

        int[][] result = new int[m.numRows()][m.numCols()];
        for(int r = 0; r < result.length; r++)
        {   for(int c = 0; c < result[0].length; c++)
            {   result[r][c] = m.getVal(r,c);
            }
        }
        return result;
    }

    // pre: data1 != null, data2 != null, data1 and data2 are at least 1 by 1 matrices
    //      data1 and data2 are rectangular matrices
    // post: return true if data1 and data2 are the same size and all elements are
    //      the same
    private static boolean equals(int[][] data1, int[][] data2) {
       //check precondition
        assert ( data1 != null ) && ( data1.length > 0 )
               && ( data1[0].length > 0 ) && rectangularMatrix( data1 )
               &&  ( data2 != null ) && ( data2.length > 0 )
               && ( data2[0].length > 0 ) && rectangularMatrix( data2 )
                : "Violation of precondition: get2DArray";

        boolean result = (data1.length == data2.length) && (data1[0].length == data2[0].length);
        int row = 0;
        int col;
        while( result && row < data1.length ) {
            col = 0;
            while( result && col < data1[0].length ) {
               result = ( data1[row][col] == data2[row][col] );
                col++;
            }
            row++;
        }

        return result;
    }


    // private method to ensure mat is rectangular
    // pre: mat != null, mat is at least 1 by 1
    private static boolean rectangularMatrix( int[][] mat ) {
       //check preconditions
        assert (mat != null) && (mat.length > 0) && (mat[0].length > 0)
               : "Violation of precondition : rectangularMatrix";

        boolean isRectangular = true;
        int row = 1;
        final int COLUMNS = mat[0].length;

        while( isRectangular && row < mat.length ){
            isRectangular = ( mat[row].length == COLUMNS );
            row++;
        }

        return isRectangular;
    }
}

