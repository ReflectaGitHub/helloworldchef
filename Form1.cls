 
 /*------------------------------------------------------------------------
    File        : Form1
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : 
    Created     : 
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Form1 INHERITS Form: 
	
	DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.
		
	CONSTRUCTOR PUBLIC Form1 (  ):

        InitializeComponent().
        THIS-OBJECT:ComponentsCollection:Add(THIS-OBJECT:components).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

	END CONSTRUCTOR.

	/*------------------------------------------------------------------------------
	 Purpose:
	 Notes:
	------------------------------------------------------------------------------*/
	@VisualDesigner.
	METHOD PRIVATE VOID Form1_Load( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
		/*HI jskdjksds*/
		RETURN.

	END METHOD.

	METHOD PRIVATE VOID InitializeComponent(  ):
		
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:SuspendLayout().
        /*  */
        /* Form1 */
        /*  */
        THIS-OBJECT:ClientSize = NEW System.Drawing.Size(292, 266).
        THIS-OBJECT:Name = "Form1".
        THIS-OBJECT:Text = "Form1".
        THIS-OBJECT:Load:Subscribe(THIS-OBJECT:Form1_Load).
        THIS-OBJECT:ResumeLayout(FALSE).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.
	END METHOD.

	DESTRUCTOR PUBLIC Form1 ( ):

	END DESTRUCTOR.

END CLASS.