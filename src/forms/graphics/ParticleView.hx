package forms.graphics;
import flash.display.Shape;

/**
 * ...
 * @author Urs Stutz
 */
class ParticleView extends Shape
{

	public function new(width:Float) 
	{
		super();
		
		var height = width;
		
		graphics.beginFill(0xFFFFFF);
		graphics.moveTo(-width / 2, -height / 2);
		graphics.lineTo(width / 2, -height / 2);
		graphics.lineTo(width / 2, height / 2);
		graphics.lineTo( -width / 2, height / 2);
		graphics.endFill();
	}
	
}