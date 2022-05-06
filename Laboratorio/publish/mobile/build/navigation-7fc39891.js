import { m as msg, C as ConftokenProvider } from './messages-bded0bf9.js';
import { j as jquery } from './jquery-ad132f97.js';
import './index-30d1ca42.js';
import { m as modalController } from './overlays-d898bbae.js';

var nav;
(function (nav) {
    function goBack(current) {
        if (current && jquery(current).closest('ion-modal').length > 0) {
            closeModal(current);
        }
        else {
            let router = document.querySelector('ion-router');
            router.back();
        }
    }
    nav.goBack = goBack;
    function closeModal(current, data) {
        if (current) {
            if (jquery(current).closest('ion-modal').length > 0) {
                jquery(current).closest('ion-modal')[0].dismiss(data);
            }
        }
        else {
            if (jquery('ion-modal').length > 0) {
                jquery('ion-modal')[0].dismiss(data);
            }
        }
    }
    nav.closeModal = closeModal;
    function goHome() {
        _nav('/home', 'root');
    }
    nav.goHome = goHome;
    function goSync() {
        _nav('/sync', 'root');
    }
    nav.goSync = goSync;
    function goLogin() {
        _nav('/login', 'root');
    }
    nav.goLogin = goLogin;
    function goList(object, pagename, filter, defaults) {
        goPage('list', object, pagename, filter, defaults, 'forward');
    }
    nav.goList = goList;
    function goEdit(object, pagename, filter, defaults) {
        goPage('edit', object, pagename, filter, defaults, 'forward');
    }
    nav.goEdit = goEdit;
    function goView(object, pagename, filter, defaults) {
        goPage('view', object, pagename, filter, defaults, 'forward');
    }
    nav.goView = goView;
    function goInsert(object, pagename, defaults) {
        goPage('edit', object, pagename, null, defaults, 'forward');
    }
    nav.goInsert = goInsert;
    function goGallery(object, objectid, defaults) {
        goPageGallDoc('gallery', object, objectid, defaults, 'forward');
    }
    nav.goGallery = goGallery;
    function goDocuments(object, objectid, defaults) {
        goPageGallDoc('documents', object, objectid, defaults, 'forward');
    }
    nav.goDocuments = goDocuments;
    function transferList(object, pagename, filter, defaults) {
        goPage('list', object, pagename, filter, defaults, 'back');
    }
    nav.transferList = transferList;
    function transferEdit(object, pagename, filter, defaults) {
        goPage('edit', object, pagename, filter, defaults, 'back');
    }
    nav.transferEdit = transferEdit;
    function transferView(object, pagename, filter, defaults) {
        goPage('view', object, pagename, filter, defaults, 'back');
    }
    nav.transferView = transferView;
    function transferInsert(object, pagename, defaults) {
        goPage('edit', object, pagename, null, defaults, 'back');
    }
    nav.transferInsert = transferInsert;
    function transferGallery(object, objectid, defaults) {
        goPageGallDoc('gallery', object, objectid, defaults, 'back');
    }
    nav.transferGallery = transferGallery;
    function transferDocuments(object, objectid) {
        _nav('/documents/' + object + '/' + encodeURIComponent(objectid), 'back');
    }
    nav.transferDocuments = transferDocuments;
    function modalList(object, pagename, filter, defaults) {
        return modalPage('list', object, pagename, filter, defaults);
    }
    nav.modalList = modalList;
    function modalEdit(object, pagename, filter, defaults) {
        return modalPage('edit', object, pagename, filter, defaults);
    }
    nav.modalEdit = modalEdit;
    function modalView(object, pagename, filter, defaults) {
        return modalPage('view', object, pagename, filter, defaults);
    }
    nav.modalView = modalView;
    function modalInsert(object, pagename, defaults) {
        return modalPage('edit', object, pagename, null, defaults);
    }
    nav.modalInsert = modalInsert;
    async function modalPage(type, object, pagename, filter, defaults) {
        if (defaults) {
            if (typeof defaults == 'object') {
                defaults = JSON.stringify(defaults);
                while (defaults.indexOf('"') > -1) {
                    defaults = defaults.replace('"', "'");
                }
            }
        }
        if (opener) {
            opener = jquery(opener).closest('flx-view, flx-edit, flx-list, flx-home')[0];
        }
        const modal = await modalController.create({
            component: 'flx-' + type,
            componentProps: {
                object: object,
                pageName: pagename,
                filter: filter,
                defaults: defaults
            },
        });
        modal.present();
        return modal.onDidDismiss();
    }
    function goPage(type, object, pagename, filter, defaults, direction) {
        var esc = encodeURIComponent;
        let url = '/' + type + '/' + object;
        if (pagename) {
            url += '/page/' + esc(pagename);
        }
        if (filter) {
            url += '/filter/' + esc(filter);
        }
        if (defaults) {
            if (typeof defaults == 'object') {
                defaults = JSON.stringify(defaults);
                while (defaults.indexOf('"') > -1) {
                    defaults = defaults.replace('"', "'");
                }
            }
            url += '/defaults/' + esc(defaults);
        }
        _nav(url, direction);
    }
    nav.goPage = goPage;
    function goPageGallDoc(type, object, objectid, defaults, direction) {
        var esc = encodeURIComponent;
        let url = '/' + type + '/' + object + '/' + esc(objectid);
        if (defaults) {
            if (typeof defaults == 'object') {
                defaults = JSON.stringify(defaults);
                while (defaults.indexOf('"') > -1) {
                    defaults = defaults.replace('"', "'");
                }
            }
            url += '/defaults/' + esc(defaults);
        }
        _nav(url, direction);
    }
    nav.goPageGallDoc = goPageGallDoc;
    function currentUrl() {
        let router = document.querySelector('ion-router');
        let url = router.baseURI.substring(router.baseURI.indexOf('#'));
        if (url.startsWith('#')) {
            url = url.substr(1);
        }
        return url;
    }
    nav.currentUrl = currentUrl;
    async function _nav(url, direction) {
        if (currentUrl() == url) {
            //refresh current url
            debugger;
        }
        else {
            let router = document.querySelector('ion-router');
            let rnd = moment().format('HHmmss');
            let success = await router.push(url + '/rnd/' + rnd, direction);
            if (!success) {
                console.log('Page not found');
            }
        }
    }
    nav._nav = _nav;
    async function _goMenu(menu) {
        switch (menu.typeId) {
            case 'object':
                goPage(menu.pageTypeId, menu.objectName, menu.pageName, menu.objectWhere, null, 'forward');
                break;
            case 'page':
                let c = await ConftokenProvider.config();
                let obj = c.objectConfig[menu.objectName];
                let found = false;
                if (obj) {
                    for (let i = 0; i < obj.pages.length; i++) {
                        if (obj.pages[i].pageName == menu.pageName) {
                            found = true;
                            goPage(obj.pages[i].typeId, menu.objectName, menu.pageName, menu.objectWhere, null, 'forward');
                        }
                    }
                }
                if (!found) {
                    msg.danger('Page not found');
                }
                break;
            case 'external_page':
                navOnline.goExternalURL(menu.url);
                break;
            case 'online_page':
                navOnline.goPage(menu.pageTypeId, menu.onlineObject, null, null, menu.objectWhere);
                break;
            default:
                msg.danger('Feature not implemented');
        }
    }
    nav._goMenu = _goMenu;
})(nav || (nav = {}));
var navOnline;
(function (navOnline) {
    function goHome() {
        goPage(null, null);
    }
    navOnline.goHome = goHome;
    function goList(objectName, navigateFun = 'openpage', defaults, objectWhere, filterValues) {
        goPage('list', objectName, navigateFun, defaults, objectWhere, filterValues);
    }
    navOnline.goList = goList;
    function goEdit(objectName, objectWhere, navigateFun = 'openpage', defaults, filterValues) {
        goPage('edit', objectName, navigateFun, defaults, objectWhere, filterValues);
    }
    navOnline.goEdit = goEdit;
    function goView(objectName, objectWhere, navigateFun = 'openpage', defaults, filterValues) {
        goPage('view', objectName, navigateFun, defaults, objectWhere, filterValues);
    }
    navOnline.goView = goView;
    function goInsert(objectName, navigateFun = 'openpage', defaults, filterValues) {
        goPage('edit', objectName, navigateFun, defaults, null, filterValues);
    }
    navOnline.goInsert = goInsert;
    function goReport(reportName, objectName, objectWhere) {
        navURL('/online/report/' + btoa('ObjectName=' + objectName + '&ObjectWhere=' + objectWhere + '&ReportName=' + reportName));
    }
    navOnline.goReport = goReport;
    async function goPage(pageTypeId, objectName, navigateFun = 'openpage', defaults, objectWhere, filterValues) {
        if (pageTypeId) {
            if (!navigateFun)
                navigateFun = 'openpage';
        }
        var esc = encodeURIComponent;
        let url = '/online/';
        if (defaults)
            url += '/defaults/' + esc(defaults);
        if (filterValues)
            url += '/filterValues/' + esc(filterValues);
        if (navigateFun)
            url += '/navigateFun/' + esc(navigateFun);
        if (objectName)
            url += '/objectName/' + esc(objectName);
        if (objectWhere)
            url += '/objectWhere/' + esc(objectWhere);
        if (pageTypeId)
            url += '/pageTypeId/' + esc(pageTypeId);
        navURL(url);
    }
    navOnline.goPage = goPage;
    async function goExternalURL(url) {
        let router = document.querySelector('ion-router');
        let rnd = moment().format('HHmmss');
        let success = await router.push('/online/externalUrl/' + btoa(url) + '/rnd/' + rnd, 'root');
        if (!success)
            console.log('Page not found');
    }
    navOnline.goExternalURL = goExternalURL;
    async function navURL(url) {
        let router = document.querySelector('ion-router');
        let rnd = moment().format('HHmmss');
        let success = await router.push(url + '/rnd/' + rnd, 'root');
        if (!success)
            console.log('Page not found');
    }
})(navOnline || (navOnline = {}));

export { nav as n };
