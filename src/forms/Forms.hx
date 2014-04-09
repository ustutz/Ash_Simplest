package forms;
import ash.core.Engine;
import ash.tick.FrameTickProvider;
import flash.display.DisplayObjectContainer;
import forms.EntityCreator;
import forms.GameConfig;
import forms.systems.GameManager;
import forms.systems.MovementSystem;
import forms.systems.RenderSystem;
import forms.systems.SystemPriorities;

/**
 * ...
 * @author Urs Stutz
 */
class Forms
{
	var container:DisplayObjectContainer;
	var engine:Engine;
	var creator:EntityCreator;
	var config:GameConfig;
	var tickProvider:FrameTickProvider;

	public function new(container:DisplayObjectContainer, width:Float, height:Float) 
	{
		this.container = container;
		prepare(width, height);
	}
	
	public function prepare(width:Float, height:Float) 
	{
		engine = new Engine();
		creator = new EntityCreator(engine);
		config = new GameConfig();
		config.width = width;
		config.height = height;
		
		engine.addSystem(new GameManager( creator, config ), SystemPriorities.preUpdate);
		engine.addSystem(new MovementSystem( config ), SystemPriorities.update);
		engine.addSystem(new RenderSystem( container ), SystemPriorities.render);
	}
	
	public function start() 
	{
		tickProvider = new FrameTickProvider( container );
		tickProvider.add(engine.update);
		tickProvider.start();
		
	}
}