
import Alpine from "alpinejs";
import page_data from "./js/page-data";

window.Alpine = Alpine;

/*---- Add AlpineJS extensions here ----*/
Alpine.data('page_data', page_data);

Alpine.start();
