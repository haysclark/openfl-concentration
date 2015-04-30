package;

import openfl.display.Sprite;
import openfl.display.Tilesheet;
import com.marshgames.openfltexturepacker.TexturePackerImport;

class Main extends Sprite {
	
	public function new () {
		super ();
		draw();
	}

	function draw() {

		var frames:Array<TexturePackerFrame> = TexturePackerImport.parseJson(
			openfl.Assets.getText("assets/images.json")
		);

		var tilesheet:Tilesheet = new Tilesheet(
		    openfl.Assets.getBitmapData("assets/images.png")
		);

		var idMap:Map<String, Int> = TexturePackerImport.addToTilesheet(tilesheet, frames);
		tilesheet.drawTiles(this.graphics, [10, 10, idMap["bookshelf_64px.png"]]);
		
	}
}