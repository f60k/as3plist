 package {
	import flash.display.Sprite;
	import net.tautausan.plist.*;
	import flash.events.*;
	import flash.net.*;
	
	public class PlistParserBin extends Sprite
	{
		static public var PLIST:String="./sample_bin.plist";
		
		public function PlistParserBin()
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
				plist.parse(Bin2Xml.getXML(e.target.data));
				
			}

	}
}
