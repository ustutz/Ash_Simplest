package ;

import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.Lib;
import forms.Forms;

/**
 * ...
 * @author Urs Stutz
 */

class Main 
{
	
	static function main() 
	{
		var stage = Lib.current.stage;
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
		// entry point
        var forms = new Forms( Lib.current, stage.stageWidth, stage.stageHeight );
        forms.start();
	}
	
}