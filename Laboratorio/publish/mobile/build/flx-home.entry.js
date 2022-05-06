import { r as registerInstance, j as h } from './index-5503da0a.js';
import './ionic-global-86c7eac7.js';
import { a as storage } from './webapi-dc144dc6.js';
import { f as flxSync, m as msg, u as util, C as ConftokenProvider, s as sql } from './messages-bded0bf9.js';
import { j as jquery } from './jquery-ad132f97.js';
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
import { p as parser } from './parser-fa605265.js';

const flxHomeCss = "#menuIonTitle{position:absolute;left:0;right:0;margin-left:auto;margin-right:auto;top:0;height:100%}";

const FlxHome = class {
    constructor(hostRef) {
        registerInstance(this, hostRef);
    }
    componentDidLoad() {
        jquery('#loadingSpinnerModule').css('visibility', 'hidden');
        flxSync.checkSendErrors();
    }
    async componentWillLoad() {
        if (!await this.didUserSync())
            nav.goSync();
        let data = await storage.get('confToken');
        if (data !== null && data.profile && data.profile.length !== 0 && data.profile[0].mustChangePsw) {
            msg.changePassword(!data.profile[0].mustChangePsw);
        }
        jquery('#loadingSpinnerModule').css('visibility', 'visible');
        this.title = '';
        this.body = '';
        this.header = '';
        this.footer = '';
        this.loadData().then(() => {
            if (this.page && this.page.JSAfterLoad) {
                util.execDynamicCode(this.page.JSAfterLoad);
            }
        });
        jquery(window).off('popstate.home').on('popstate.home', () => {
            if (document.location.href.toLowerCase().indexOf('/home') > 0) {
                this.loadData();
            }
        });
    }
    async refresh(ev) {
        return this.loadData().then(() => {
            if (ev) {
                ev.target.complete();
            }
            if (this.page && this.page.JSAfterLoad) {
                util.execDynamicCode(this.page.JSAfterLoad);
            }
        });
    }
    loadData() {
        return ConftokenProvider.config().then(async (cnf) => {
            this.title = '';
            this.body = '';
            this.header = '';
            this.footer = '';
            if (cnf && cnf.homePage) {
                this.page = cnf.homePage;
                if (this.page.SQLSentence) {
                    let sentence = this.page.SQLSentence;
                    sentence = sql.addOrderBy(sentence, this.page.SQLOrderBy);
                    sql.getTable(sentence).then(async (table) => {
                        if (table && table.rows && table.rows.length > 0) {
                            this.title = await parser.recursiveCompile(sql.getRow(table, 0), this.page.title, cnf, this);
                        }
                        this.body = await this.getRows(this.page, table, null, this, cnf);
                    });
                }
                else {
                    this.title = await parser.recursiveCompile(null, this.page.title, cnf, this);
                    if (this.page.header) {
                        this.header = await parser.recursiveCompile(null, this.page.header, cnf, this);
                    }
                    if (this.page.body) {
                        this.body = await parser.recursiveCompile(null, this.page.body, cnf, this);
                    }
                    if (this.page.footer) {
                        this.footer = await parser.recursiveCompile(null, this.page.footer, cnf, this);
                    }
                }
            }
        });
    }
    async getRows(page, table, defaults, ctx, cnf) {
        let rendered = '';
        if (table && table.rows && table.rows.length > 0) {
            if (page.header && page.header != '') {
                this.header = await parser.recursiveCompile(sql.getRow(table, 0), page.header, cnf, ctx);
            }
            if (page.body && page.body != '') {
                for (let i = 0; i < table.rows.length; i++) {
                    rendered += await parser.recursiveCompile(sql.getRow(table, i), page.body, cnf, ctx);
                }
            }
            if (page.footer && page.footer != '') {
                this.footer = await parser.recursiveCompile(sql.getRow(table, 0), page.footer, cnf, this);
            }
        }
        else {
            if (page.empty && page.empty != '') {
                rendered = await parser.recursiveCompile(defaults, page.empty, cnf, this);
            }
            else {
                rendered = 'No data found';
            }
        }
        return rendered;
    }
    async didUserSync() {
        const token = await storage.get('confToken');
        if (token && token.lastSync)
            return true;
        return false;
    }
    render() {
        return [
            h("ion-header", null, h("ion-toolbar", { color: "header", class: "ion-text-center" }, h("ion-buttons", { slot: "start" }, h("ion-menu-button", { color: "outstanding" }), h("ion-icon", { name: "alert-circle", color: "danger", class: "stack sendError hide" })), h("ion-title", { id: "menuIonTitle" }, h("span", { id: "menuTitle" }, this.title)))),
            h("ion-header", { innerHTML: this.header }),
            h("ion-content", null, h("ion-refresher", { slot: "fixed", id: "refresher", onIonRefresh: (ev) => { this.refresh(ev); } }, h("ion-refresher-content", null)), h("div", { id: "mainBody", innerHTML: this.body })),
            h("ion-footer", { innerHTML: this.footer })
        ];
    }
};
FlxHome.style = flxHomeCss;

export { FlxHome as flx_home };
