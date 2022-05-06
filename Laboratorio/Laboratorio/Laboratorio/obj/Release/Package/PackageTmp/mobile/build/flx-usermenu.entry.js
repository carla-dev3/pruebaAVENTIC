import { r as registerInstance, j as h } from './index-5503da0a.js';
import './ionic-global-86c7eac7.js';
import { a as storage } from './webapi-dc144dc6.js';
import { u as util, m as msg } from './messages-bded0bf9.js';
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

const flxUsermenuCss = ".user-container{width:100%;margin:0px}.user-header{height:100px;margin-bottom:120px;display:flex;flex-direction:column;justify-content:center;align-items:center;background-image:linear-gradient(to bottom right, var(--ion-color-primary), var(--ion-color-header))}.profile{display:flex;flex-direction:column;align-items:center;margin-top:130px}.avatarImg{width:80px;height:80px;border-radius:50%;margin-bottom:16px}.complete-name{font-size:30px;font-weight:bold}.options{display:flex;flex-direction:column;justify-content:center;align-items:center}.option{padding-left:10%;padding-right:10%;box-shadow:0px 8px 15px rgba(0, 0, 0, 0.2);outline:none;border:none;border-radius:10px;width:80%;height:45px;margin-bottom:15px;background-color:var(--ion-color-header);color:var(--ion-color-tint)}";

const FlxUserMenu = class {
    constructor(hostRef) {
        registerInstance(this, hostRef);
        this.advOpt = false;
    }
    componentWillLoad() {
        this.getProfileInfo();
    }
    async getProfileInfo() {
        this.profile = await storage.get('confToken');
        this.profile = this.profile.profile[0];
        if (this.profile.userName)
            this.profileName = this.profile.userName;
        else
            this.profileName = this.profile.name + " " + (this.profile.surname ? this.profile.surname : '');
        this.avatar = this.profile.avatar;
    }
    render() {
        return [
            h("ion-header", null, h("ion-toolbar", { color: "header", class: "ion-text-center" }, h("ion-buttons", { slot: "start" }, h("ion-menu-button", { id: "home", color: "outstanding" })), h("ion-buttons", { slot: "end" }, h("ion-button", { id: "exit", color: "outstanding", onClick: () => { nav.goLogin(); } }, h("ion-icon", { slot: "icon-only", name: "exit" }))), h("ion-title", null, h("span", null, util.translate('usermenu.title'))))),
            h("ion-content", { color: "light" }, h("div", { class: 'user-container' }, h("span", { class: 'user-header' }, h("div", { class: 'profile' }, h("img", { class: 'avatarImg', src: this.avatar }), h("div", { class: 'complete-name' }, this.profileName))), h("span", { class: 'options' }, h("button", { class: 'option', onClick: () => msg.changePassword(true) }, util.translate('usermenu.changePass')), h("button", { class: 'option', onClick: () => msg.confirm(util.translate('menu.logoutHeader'), util.translate('menu.logoutMessage')).then(() => nav.goLogin()) }, util.translate('menu.logout')))))
        ];
    }
};
FlxUserMenu.style = flxUsermenuCss;

export { FlxUserMenu as flx_usermenu };
