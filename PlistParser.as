 package {
	import flash.display.Sprite;
	import net.tautausan.plist.*;
	import flash.events.*;
	import flash.net.*;
	
	public class PlistParser extends Sprite
	{
		static public var PLIST:String="./sample.plist";
		
		public function PlistParser()
		{
			init();
		}
		
		public function init():void
			{
				var loader:URLLoader=new URLLoader(new URLRequest(PLIST));
				loader.addEventListener(Event.COMPLETE, onComplete);
			}
			
			private function onComplete(e:Event):void
			{
				var plist:Plist10=new Plist10();
				plist.parse(e.target.data);
				
			}

	}
}
