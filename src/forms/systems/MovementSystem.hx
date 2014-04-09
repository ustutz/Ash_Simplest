package forms.systems;
import ash.tools.ListIteratingSystem;
import flash.geom.Vector3D;
import forms.components.Motion;
import forms.components.Position;
import forms.GameConfig;
import forms.nodes.MovementNode;

/**
 * ...
 * @author Urs Stutz
 */
class MovementSystem extends ListIteratingSystem<MovementNode>
{
	var config:GameConfig;

	public function new(config:GameConfig) 
	{
		this.config = config;
		super(MovementNode, updateNode);
	}
	
	private function updateNode(node:MovementNode, time:Float):Void
	{
		var position:Position = node.position;
		var motion:Motion = node.motion;
		
		position.position.x += motion.velocity.x * time;
		position.position.y += motion.velocity.y * time;
		
		if (position.position.x < 0)
		{
			position.position.x += config.width;
		}
		if (position.position.x > config.width)
		{
			position.position.x -= config.width;
		}
		if (position.position.y < 0)
		{
			position.position.y += config.height;
		}
		if (position.position.y > config.height)
		{
			position.position.y -= config.height;
		}
	}
}