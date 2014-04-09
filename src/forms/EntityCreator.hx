package forms;
import ash.core.Engine;
import ash.core.Entity;
import ash.tools.ComponentPool;
import flash.geom.Vector3D;
import forms.components.Display;
import forms.components.Motion;
import forms.components.Particle;
import forms.components.Position;
import forms.graphics.ParticleView;

/**
 * ...
 * @author Urs Stutz
 */
class EntityCreator
{
	var engine:Engine;

	public function new(engine:Engine) 
	{
		this.engine = engine;
	}
	
	public function destroyEntity(entity:Entity):Void 
	{
		engine.removeEntity(entity);
	}
	
	public function createParticle(x:Float, y:Float, width:Float):Entity
	{
		var particle:Entity = new Entity()
		.add(ComponentPool.get(Particle))
		.add(new Position(new Vector3D( x, y ), 0))
		.add(new Motion(new Vector3D(Math.random()*200-100, Math.random()*200-100), 0, 0))
		.add(new Display( new ParticleView ( width )));
		engine.addEntity(particle);
		return particle;
	}
}