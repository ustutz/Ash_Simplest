package forms.systems;
import ash.core.Engine;
import ash.core.NodeList.NodeList;
import ash.core.System;
import forms.EntityCreator;
import forms.GameConfig;
import forms.nodes.ParticleNode;

/**
 * ...
 * @author Urs Stutz
 */
class GameManager extends System
{
	private var creator:EntityCreator;
	private var config:GameConfig;
    
	private var particles:NodeList<ParticleNode>;

	public function new(creator:EntityCreator, config:GameConfig) 
	{
		super();
		this.creator = creator;
		this.config = config;
	}
	
	override public function addToEngine(engine:Engine):Void 
	{
		particles = engine.getNodeList(ParticleNode);
	}
	
	override public function update(time:Float):Void 
	{
		if (particles.empty)
		{
			createParticles(10);
		}
	}
	
	private function createParticles(particleNumber:Int):Void
	{
		for (i in 0...particleNumber)
		{
			creator.createParticle(Math.random() * config.width, Math.random() * config.height, 10);
		}
	}
	
	override public function removeFromEngine(engine:Engine):Void 
	{
		particles = null;
	}
}