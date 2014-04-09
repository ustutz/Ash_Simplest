package forms.components;

import flash.geom.Point;
import flash.geom.Vector3D;

class Position
{
    public var position:Vector3D;
    public var rotation:Float;

    public function new(position:Vector3D, rotation:Float)
    {
        this.position = position;
        this.rotation = rotation;
    }
}
