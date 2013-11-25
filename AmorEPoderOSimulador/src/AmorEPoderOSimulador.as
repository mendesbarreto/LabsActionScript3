package
{
	import com.zaza.pos.SceneManager;
	import com.zaza.pos.scenes.Scene1;
	import com.zaza.pos.scenes.Scene10;
	import com.zaza.pos.scenes.Scene11;
	import com.zaza.pos.scenes.Scene12;
	import com.zaza.pos.scenes.Scene13;
	import com.zaza.pos.scenes.Scene14;
	import com.zaza.pos.scenes.Scene15;
	import com.zaza.pos.scenes.Scene16;
	import com.zaza.pos.scenes.Scene17;
	import com.zaza.pos.scenes.Scene18;
	import com.zaza.pos.scenes.Scene19;
	import com.zaza.pos.scenes.Scene2;
	import com.zaza.pos.scenes.Scene20;
	import com.zaza.pos.scenes.Scene21;
	import com.zaza.pos.scenes.Scene22;
	import com.zaza.pos.scenes.Scene23;
	import com.zaza.pos.scenes.Scene24;
	import com.zaza.pos.scenes.Scene25;
	import com.zaza.pos.scenes.Scene26;
	import com.zaza.pos.scenes.Scene27;
	import com.zaza.pos.scenes.Scene28;
	import com.zaza.pos.scenes.Scene29;
	import com.zaza.pos.scenes.Scene3;
	import com.zaza.pos.scenes.Scene30;
	import com.zaza.pos.scenes.Scene4;
	import com.zaza.pos.scenes.Scene5;
	import com.zaza.pos.scenes.Scene6;
	import com.zaza.pos.scenes.Scene7;
	import com.zaza.pos.scenes.Scene8;
	import com.zaza.pos.scenes.Scene9;
	import com.zaza.pos.scenes.SceneName;
	import com.zazs.pos.Background;
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	[SWF(frameRate="24", height="804", width="1072")]
	public class AmorEPoderOSimulador extends Sprite
	{
		private var background:Bitmap = new Bitmap( new Background() );
		private var sceneManager:SceneManager
		
		
		public function AmorEPoderOSimulador()
		{
			this.addChild(background);
			this.addScenes();
			
			
			this.addEventListener(Event.ADDED_TO_STAGE , initAll, false, 0, true);
		}
		
		protected function initAll(event:Event):void
		{
			this.stage.addEventListener( Event.ENTER_FRAME , onEnterFrame );
		}
		
		private function addScenes():void
		{
			sceneManager = new SceneManager(this);
			
			sceneManager.addScene( SceneName.SCREEN_1, new Scene1() );
			sceneManager.addScene( SceneName.SCREEN_2, new Scene2() );
			sceneManager.addScene( SceneName.SCREEN_3, new Scene3() );
			sceneManager.addScene( SceneName.SCREEN_4, new Scene4() );
			sceneManager.addScene( SceneName.SCREEN_5, new Scene5() );
			sceneManager.addScene( SceneName.SCREEN_6, new Scene6() );
			sceneManager.addScene( SceneName.SCREEN_7, new Scene7() );
			sceneManager.addScene( SceneName.SCREEN_8, new Scene8() );
			sceneManager.addScene( SceneName.SCREEN_9, new Scene9() );
			sceneManager.addScene( SceneName.SCREEN_10, new Scene10() );
			sceneManager.addScene( SceneName.SCREEN_11, new Scene11() );
			sceneManager.addScene( SceneName.SCREEN_12, new Scene12() );
			sceneManager.addScene( SceneName.SCREEN_13, new Scene13() );
			sceneManager.addScene( SceneName.SCREEN_14, new Scene14() );
			sceneManager.addScene( SceneName.SCREEN_15, new Scene15() );
			sceneManager.addScene( SceneName.SCREEN_16, new Scene16() );
			sceneManager.addScene( SceneName.SCREEN_17, new Scene17() );
			sceneManager.addScene( SceneName.SCREEN_18, new Scene18() );
			sceneManager.addScene( SceneName.SCREEN_19, new Scene19() );
			sceneManager.addScene( SceneName.SCREEN_20, new Scene20() );
			sceneManager.addScene( SceneName.SCREEN_21, new Scene21() );
			sceneManager.addScene( SceneName.SCREEN_22, new Scene22() );
			sceneManager.addScene( SceneName.SCREEN_23, new Scene23() );
			sceneManager.addScene( SceneName.SCREEN_24, new Scene24() );
			sceneManager.addScene( SceneName.SCREEN_25, new Scene25() );
			sceneManager.addScene( SceneName.SCREEN_26, new Scene26() );
			sceneManager.addScene( SceneName.SCREEN_27, new Scene27() );
			sceneManager.addScene( SceneName.SCREEN_28, new Scene28() );
			sceneManager.addScene( SceneName.SCREEN_29, new Scene29() );
			sceneManager.addScene( SceneName.SCREEN_30, new Scene30() );
			
			sceneManager.gotoScene( SceneName.SCREEN_1 );
		}
		
		
		public function onEnterFrame ( event:Event ):void
		{
			sceneManager.update();
		}
		
	}
}