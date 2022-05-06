import { r as registerInstance } from './index-5503da0a.js';
import './ionic-global-86c7eac7.js';
import './webapi-dc144dc6.js';
import './messages-bded0bf9.js';
import './jquery-ad132f97.js';
import './utils-d1cfdf64.js';
import './index-30d1ca42.js';
import './helpers-e504fb0f.js';
import './animation-5833a6f6.js';
import './index-0a5fb5ef.js';
import './ios.transition-c95d3682.js';
import './md.transition-5ac05860.js';
import './cubic-bezier-93f47170.js';
import './index-7fe827c3.js';
import './index-b40d441b.js';
import './hardware-back-button-aacf3d12.js';
import './index-b6745b0c.js';
import './overlays-d898bbae.js';
import { n as nav } from './navigation-7fc39891.js';

const flxNavigatorCss = "flx-navbutton{}";

const FlxNavigator = class {
    constructor(hostRef) {
        registerInstance(this, hostRef);
    }
    handleClick() {
        let direction = 'forward';
        if (this.root) {
            direction = 'root';
        }
        else if (this.transfer) {
            direction = 'back';
        }
        switch (this.type.toLowerCase()) {
            case 'home':
                nav.goHome();
                break;
            case 'sync':
                nav.goHome();
                break;
            case 'login':
                nav.goHome();
                break;
            case 'back':
                nav.goHome();
                break;
            case 'insert':
                this.filter = '';
                this.type = 'edit';
            default:
                nav.goPage(this.type, this.object, this.pagename, this.filter, this.defaults, direction);
        }
    }
    render() {
        return;
    }
};
FlxNavigator.style = flxNavigatorCss;

export { FlxNavigator as flx_navbutton };
