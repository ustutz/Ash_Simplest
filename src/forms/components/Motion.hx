package forms.components;

import flash.geom.Point;
import flash.geom.Vector3D;

class Motion
{
    public var velocity:Vector3D;
    public var angularVelocity:Float;
    public var damping:Float;

    public function new(velocity:Vector3D, angularVelocity:Float, damping:Float)
    {
        this.velocity = velocity;
        this.angularVelocity = angularVelocity;
        this.damping = damping;
    }
}
