import { _ as __extends } from './webapi-dc144dc6.js';
import { c as cordova$1, e as Injectable, I as IonicNativePlugin, b as cordovaPropertyGet, d as cordovaPropertySet, O as Observable, m as msg, u as util } from './messages-bded0bf9.js';
import { j as jquery } from './jquery-ad132f97.js';

var LocationAccuracy = /** @class */ (function (_super) {
    __extends(LocationAccuracy, _super);
    function LocationAccuracy() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.REQUEST_PRIORITY_NO_POWER = 0;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.REQUEST_PRIORITY_LOW_POWER = 1;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.REQUEST_PRIORITY_BALANCED_POWER_ACCURACY = 2;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.REQUEST_PRIORITY_HIGH_ACCURACY = 3;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.SUCCESS_SETTINGS_SATISFIED = 0;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.SUCCESS_USER_AGREED = 1;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_ALREADY_REQUESTING = -1;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_INVALID_ACTION = 0;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_INVALID_ACCURACY = 1;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_EXCEPTION = 1;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_CANNOT_CHANGE_ACCURACY = 3;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_USER_DISAGREED = 4;
        /**
         * Convenience constant
         * @type {number}
         */
        _this.ERROR_GOOGLE_API_CONNECTION_FAILED = 4;
        return _this;
    }
    LocationAccuracy.prototype.canRequest = function () { return cordova$1(this, "canRequest", {}, arguments); };
    LocationAccuracy.prototype.isRequesting = function () { return cordova$1(this, "isRequesting", {}, arguments); };
    LocationAccuracy.prototype.request = function (accuracy) { return cordova$1(this, "request", { "callbackOrder": "reverse" }, arguments); };
    LocationAccuracy.pluginName = "LocationAccuracy";
    LocationAccuracy.plugin = "cordova-plugin-request-location-accuracy";
    LocationAccuracy.pluginRef = "cordova.plugins.locationAccuracy";
    LocationAccuracy.repo = "https://github.com/dpa99c/cordova-plugin-request-location-accuracy";
    LocationAccuracy.platforms = ["Android", "iOS"];
    LocationAccuracy.decorators = [
        { type: Injectable }
    ];
    return LocationAccuracy;
}(IonicNativePlugin));

var Diagnostic = /** @class */ (function (_super) {
    __extends(Diagnostic, _super);
    function Diagnostic() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.permission = {
            READ_CALENDAR: 'READ_CALENDAR',
            WRITE_CALENDAR: 'WRITE_CALENDAR',
            CAMERA: 'CAMERA',
            READ_CONTACTS: 'READ_CONTACTS',
            WRITE_CONTACTS: 'WRITE_CONTACTS',
            GET_ACCOUNTS: 'GET_ACCOUNTS',
            ACCESS_FINE_LOCATION: 'ACCESS_FINE_LOCATION',
            ACCESS_COARSE_LOCATION: 'ACCESS_COARSE_LOCATION',
            RECORD_AUDIO: 'RECORD_AUDIO',
            READ_PHONE_STATE: 'READ_PHONE_STATE',
            CALL_PHONE: 'CALL_PHONE',
            ADD_VOICEMAIL: 'ADD_VOICEMAIL',
            USE_SIP: 'USE_SIP',
            PROCESS_OUTGOING_CALLS: 'PROCESS_OUTGOING_CALLS',
            READ_CALL_LOG: 'READ_CALL_LOG',
            WRITE_CALL_LOG: 'WRITE_CALL_LOG',
            SEND_SMS: 'SEND_SMS',
            RECEIVE_SMS: 'RECEIVE_SMS',
            READ_SMS: 'READ_SMS',
            RECEIVE_WAP_PUSH: 'RECEIVE_WAP_PUSH',
            RECEIVE_MMS: 'RECEIVE_MMS',
            WRITE_EXTERNAL_STORAGE: 'WRITE_EXTERNAL_STORAGE',
            READ_EXTERNAL_STORAGE: 'READ_EXTERNAL_STORAGE',
            BODY_SENSORS: 'BODY_SENSORS',
        };
        _this.locationAuthorizationMode = {
            ALWAYS: 'always',
            WHEN_IN_USE: 'when_in_use',
        };
        _this.permissionGroups = {
            CALENDAR: ['READ_CALENDAR', 'WRITE_CALENDAR'],
            CAMERA: ['CAMERA'],
            CONTACTS: ['READ_CONTACTS', 'WRITE_CONTACTS', 'GET_ACCOUNTS'],
            LOCATION: ['ACCESS_FINE_LOCATION', 'ACCESS_COARSE_LOCATION'],
            MICROPHONE: ['RECORD_AUDIO'],
            PHONE: [
                'READ_PHONE_STATE',
                'CALL_PHONE',
                'ADD_VOICEMAIL',
                'USE_SIP',
                'PROCESS_OUTGOING_CALLS',
                'READ_CALL_LOG',
                'WRITE_CALL_LOG',
            ],
            SENSORS: ['BODY_SENSORS'],
            SMS: ['SEND_SMS', 'RECEIVE_SMS', 'READ_SMS', 'RECEIVE_WAP_PUSH', 'RECEIVE_MMS'],
            STORAGE: ['READ_EXTERNAL_STORAGE', 'WRITE_EXTERNAL_STORAGE'],
        };
        _this.locationMode = {
            HIGH_ACCURACY: 'high_accuracy',
            DEVICE_ONLY: 'device_only',
            BATTERY_SAVING: 'battery_saving',
            LOCATION_OFF: 'location_off',
        };
        _this.bluetoothState = {
            UNKNOWN: 'unknown',
            RESETTING: 'resetting',
            UNSUPPORTED: 'unsupported',
            UNAUTHORIZED: 'unauthorized',
            POWERED_OFF: 'powered_off',
            POWERED_ON: 'powered_on',
            POWERING_OFF: 'powering_off',
            POWERING_ON: 'powering_on',
        };
        return _this;
    }
    Diagnostic.prototype.isLocationAvailable = function () { return cordova$1(this, "isLocationAvailable", {}, arguments); };
    Diagnostic.prototype.isWifiAvailable = function () { return cordova$1(this, "isWifiAvailable", {}, arguments); };
    Diagnostic.prototype.isCameraAvailable = function (externalStorage) { return cordova$1(this, "isCameraAvailable", { "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.isBluetoothAvailable = function () { return cordova$1(this, "isBluetoothAvailable", {}, arguments); };
    Diagnostic.prototype.switchToLocationSettings = function () { return cordova$1(this, "switchToLocationSettings", { "sync": true, "platforms": ["Android", "Windows 10", "iOS"] }, arguments); };
    Diagnostic.prototype.switchToMobileDataSettings = function () { return cordova$1(this, "switchToMobileDataSettings", { "sync": true, "platforms": ["Android", "Windows 10"] }, arguments); };
    Diagnostic.prototype.switchToBluetoothSettings = function () { return cordova$1(this, "switchToBluetoothSettings", { "sync": true, "platforms": ["Android", "Windows 10"] }, arguments); };
    Diagnostic.prototype.switchToWifiSettings = function () { return cordova$1(this, "switchToWifiSettings", { "sync": true, "platforms": ["Android", "Windows 10"] }, arguments); };
    Diagnostic.prototype.isWifiEnabled = function () { return cordova$1(this, "isWifiEnabled", { "platforms": ["Android", "Windows 10"] }, arguments); };
    Diagnostic.prototype.setWifiState = function (state) { return cordova$1(this, "setWifiState", { "callbackOrder": "reverse", "platforms": ["Android", "Windows 10"] }, arguments); };
    Diagnostic.prototype.setBluetoothState = function (state) { return cordova$1(this, "setBluetoothState", { "callbackOrder": "reverse", "platforms": ["Android", "Windows 10"] }, arguments); };
    Diagnostic.prototype.isLocationEnabled = function () { return cordova$1(this, "isLocationEnabled", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.isLocationAuthorized = function () { return cordova$1(this, "isLocationAuthorized", {}, arguments); };
    Diagnostic.prototype.getLocationAuthorizationStatus = function () { return cordova$1(this, "getLocationAuthorizationStatus", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.requestLocationAuthorization = function (mode) { return cordova$1(this, "requestLocationAuthorization", { "platforms": ["Android", "iOS"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.isCameraPresent = function () { return cordova$1(this, "isCameraPresent", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.isCameraAuthorized = function (externalStorage) { return cordova$1(this, "isCameraAuthorized", { "platforms": ["Android", "iOS"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.getCameraAuthorizationStatus = function (externalStorage) { return cordova$1(this, "getCameraAuthorizationStatus", { "platforms": ["Android", "iOS"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.requestCameraAuthorization = function (externalStorage) { return cordova$1(this, "requestCameraAuthorization", { "platforms": ["Android", "iOS"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.isMicrophoneAuthorized = function () { return cordova$1(this, "isMicrophoneAuthorized", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.getMicrophoneAuthorizationStatus = function () { return cordova$1(this, "getMicrophoneAuthorizationStatus", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.requestMicrophoneAuthorization = function () { return cordova$1(this, "requestMicrophoneAuthorization", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.isContactsAuthorized = function () { return cordova$1(this, "isContactsAuthorized", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.getContactsAuthorizationStatus = function () { return cordova$1(this, "getContactsAuthorizationStatus", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.requestContactsAuthorization = function () { return cordova$1(this, "requestContactsAuthorization", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.isCalendarAuthorized = function () { return cordova$1(this, "isCalendarAuthorized", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.getCalendarAuthorizationStatus = function () { return cordova$1(this, "getCalendarAuthorizationStatus", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.requestCalendarAuthorization = function () { return cordova$1(this, "requestCalendarAuthorization", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.switchToSettings = function () { return cordova$1(this, "switchToSettings", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.getBluetoothState = function () { return cordova$1(this, "getBluetoothState", { "platforms": ["Android", "iOS"] }, arguments); };
    Diagnostic.prototype.registerBluetoothStateChangeHandler = function (handler) { return cordova$1(this, "registerBluetoothStateChangeHandler", { "platforms": ["Android", "iOS"], "sync": true }, arguments); };
    Diagnostic.prototype.registerLocationStateChangeHandler = function (handler) { return cordova$1(this, "registerLocationStateChangeHandler", { "platforms": ["Android", "iOS"], "sync": true }, arguments); };
    Diagnostic.prototype.isGpsLocationAvailable = function () { return cordova$1(this, "isGpsLocationAvailable", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isGpsLocationEnabled = function () { return cordova$1(this, "isGpsLocationEnabled", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isNetworkLocationAvailable = function () { return cordova$1(this, "isNetworkLocationAvailable", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isNetworkLocationEnabled = function () { return cordova$1(this, "isNetworkLocationEnabled", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.getLocationMode = function () { return cordova$1(this, "getLocationMode", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.getPermissionAuthorizationStatus = function (permission) { return cordova$1(this, "getPermissionAuthorizationStatus", { "platforms": ["Android"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.getPermissionsAuthorizationStatus = function (permissions) { return cordova$1(this, "getPermissionsAuthorizationStatus", { "platforms": ["Android"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.requestRuntimePermission = function (permission) { return cordova$1(this, "requestRuntimePermission", { "platforms": ["Android"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.requestRuntimePermissions = function (permissions) { return cordova$1(this, "requestRuntimePermissions", { "platforms": ["Android"], "callbackOrder": "reverse" }, arguments); };
    Diagnostic.prototype.isRequestingPermission = function () { return cordova$1(this, "isRequestingPermission", { "sync": true }, arguments); };
    Diagnostic.prototype.registerPermissionRequestCompleteHandler = function (handler) { return cordova$1(this, "registerPermissionRequestCompleteHandler", { "sync": true }, arguments); };
    Diagnostic.prototype.isBluetoothEnabled = function () { return cordova$1(this, "isBluetoothEnabled", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.hasBluetoothSupport = function () { return cordova$1(this, "hasBluetoothSupport", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.hasBluetoothLESupport = function () { return cordova$1(this, "hasBluetoothLESupport", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.hasBluetoothLEPeripheralSupport = function () { return cordova$1(this, "hasBluetoothLEPeripheralSupport", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isExternalStorageAuthorized = function () { return cordova$1(this, "isExternalStorageAuthorized", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.getExternalStorageAuthorizationStatus = function () { return cordova$1(this, "getExternalStorageAuthorizationStatus", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.requestExternalStorageAuthorization = function () { return cordova$1(this, "requestExternalStorageAuthorization", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.getExternalSdCardDetails = function () { return cordova$1(this, "getExternalSdCardDetails", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.switchToWirelessSettings = function () { return cordova$1(this, "switchToWirelessSettings", { "platforms": ["Android"], "sync": true }, arguments); };
    Diagnostic.prototype.switchToNFCSettings = function () { return cordova$1(this, "switchToNFCSettings", { "platforms": ["Android"], "sync": true }, arguments); };
    Diagnostic.prototype.isNFCPresent = function () { return cordova$1(this, "isNFCPresent", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isNFCEnabled = function () { return cordova$1(this, "isNFCEnabled", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isNFCAvailable = function () { return cordova$1(this, "isNFCAvailable", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.registerNFCStateChangeHandler = function (handler) { return cordova$1(this, "registerNFCStateChangeHandler", { "platforms": ["Android"], "sync": true }, arguments); };
    Diagnostic.prototype.isDataRoamingEnabled = function () { return cordova$1(this, "isDataRoamingEnabled", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isADBModeEnabled = function () { return cordova$1(this, "isADBModeEnabled", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isDeviceRooted = function () { return cordova$1(this, "isDeviceRooted", { "platforms": ["Android"] }, arguments); };
    Diagnostic.prototype.isCameraRollAuthorized = function () { return cordova$1(this, "isCameraRollAuthorized", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getCameraRollAuthorizationStatus = function () { return cordova$1(this, "getCameraRollAuthorizationStatus", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.requestCameraRollAuthorization = function () { return cordova$1(this, "requestCameraRollAuthorization", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.isRemoteNotificationsEnabled = function () { return cordova$1(this, "isRemoteNotificationsEnabled", { "platforms": ["iOS", "Android"] }, arguments); };
    Diagnostic.prototype.isRegisteredForRemoteNotifications = function () { return cordova$1(this, "isRegisteredForRemoteNotifications", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getRemoteNotificationsAuthorizationStatus = function () { return cordova$1(this, "getRemoteNotificationsAuthorizationStatus", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.requestRemoteNotificationsAuthorization = function (types, omitRegistration) { return cordova$1(this, "requestRemoteNotificationsAuthorization", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getRemoteNotificationTypes = function () { return cordova$1(this, "getRemoteNotificationTypes", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.isRemindersAuthorized = function () { return cordova$1(this, "isRemindersAuthorized", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getRemindersAuthorizationStatus = function () { return cordova$1(this, "getRemindersAuthorizationStatus", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.requestRemindersAuthorization = function () { return cordova$1(this, "requestRemindersAuthorization", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.isBackgroundRefreshAuthorized = function () { return cordova$1(this, "isBackgroundRefreshAuthorized", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getBackgroundRefreshStatus = function () { return cordova$1(this, "getBackgroundRefreshStatus", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.requestBluetoothAuthorization = function () { return cordova$1(this, "requestBluetoothAuthorization", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.isMotionAvailable = function () { return cordova$1(this, "isMotionAvailable", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.isMotionRequestOutcomeAvailable = function () { return cordova$1(this, "isMotionRequestOutcomeAvailable", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.requestMotionAuthorization = function () { return cordova$1(this, "requestMotionAuthorization", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getMotionAuthorizationStatus = function () { return cordova$1(this, "getMotionAuthorizationStatus", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.getLocationAccuracyAuthorization = function () { return cordova$1(this, "getLocationAccuracyAuthorization", { "platform": ["iOS"] }, arguments); };
    Diagnostic.prototype.requestTemporaryFullAccuracyAuthorization = function (purpose) { return cordova$1(this, "requestTemporaryFullAccuracyAuthorization", { "platforms": ["iOS"] }, arguments); };
    Diagnostic.prototype.registerLocationAccuracyAuthorizationChangeHandler = function (handler) { return cordova$1(this, "registerLocationAccuracyAuthorizationChangeHandler", { "platforms": ["iOS"], "sync": true }, arguments); };
    Object.defineProperty(Diagnostic.prototype, "permissionStatus", {
        get: function () { return cordovaPropertyGet(this, "permissionStatus"); },
        set: function (value) { cordovaPropertySet(this, "permissionStatus", value); },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Diagnostic.prototype, "NFCState", {
        get: function () { return cordovaPropertyGet(this, "NFCState"); },
        set: function (value) { cordovaPropertySet(this, "NFCState", value); },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Diagnostic.prototype, "motionStatus", {
        get: function () { return cordovaPropertyGet(this, "motionStatus"); },
        set: function (value) { cordovaPropertySet(this, "motionStatus", value); },
        enumerable: false,
        configurable: true
    });
    Diagnostic.pluginName = "Diagnostic";
    Diagnostic.plugin = "cordova.plugins.diagnostic";
    Diagnostic.pluginRef = "cordova.plugins.diagnostic";
    Diagnostic.repo = "https://github.com/dpa99c/cordova-diagnostic-plugin";
    Diagnostic.platforms = ["Android", "iOS", "Windows"];
    Diagnostic.decorators = [
        { type: Injectable }
    ];
    return Diagnostic;
}(IonicNativePlugin));

var OpenNativeSettings = /** @class */ (function (_super) {
    __extends(OpenNativeSettings, _super);
    function OpenNativeSettings() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    OpenNativeSettings.prototype.open = function (setting) { return cordova$1(this, "open", {}, arguments); };
    OpenNativeSettings.pluginName = "OpenNativeSettings";
    OpenNativeSettings.plugin = "cordova-open-native-settings";
    OpenNativeSettings.pluginRef = "cordova.plugins.settings";
    OpenNativeSettings.repo = "https://github.com/guyromb/Cordova-open-native-settings";
    OpenNativeSettings.platforms = ["Android", "iOS"];
    OpenNativeSettings.decorators = [
        { type: Injectable }
    ];
    return OpenNativeSettings;
}(IonicNativePlugin));

var Geolocation = /** @class */ (function (_super) {
    __extends(Geolocation, _super);
    function Geolocation() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Geolocation.prototype.getCurrentPosition = function (options) { return cordova$1(this, "getCurrentPosition", { "callbackOrder": "reverse" }, arguments); };
    /**
     * Watch the current device's position.  Clear the watch by unsubscribing from
     * Observable changes.
     *
     * ```typescript
     * const subscription = this.geolocation.watchPosition()
     *                               .filter((p) => p.coords !== undefined) //Filter Out Errors
     *                               .subscribe(position => {
     *   console.log(position.coords.longitude + ' ' + position.coords.latitude);
     * });
     *
     * // To stop notifications
     * subscription.unsubscribe();
     * ```
     *
     * @param {GeolocationOptions} options  The [geolocation options](https://developer.mozilla.org/en-US/docs/Web/API/PositionOptions).
     * @returns {Observable<Geoposition | PositionError>} Returns an Observable that notifies with the [position](https://developer.mozilla.org/en-US/docs/Web/API/Position) of the device, or errors.
     */
    Geolocation.prototype.watchPosition = function (options) {
        return new Observable(function (observer) {
            var watchId = navigator.geolocation.watchPosition(observer.next.bind(observer), observer.next.bind(observer), options);
            return function () { return navigator.geolocation.clearWatch(watchId); };
        });
    };
    Geolocation.pluginName = "Geolocation";
    Geolocation.plugin = "cordova-plugin-geolocation";
    Geolocation.pluginRef = "navigator.geolocation";
    Geolocation.repo = "https://github.com/apache/cordova-plugin-geolocation";
    Geolocation.install = "ionic cordova plugin add cordova-plugin-geolocation --variable GEOLOCATION_USAGE_DESCRIPTION=\"To locate you\"";
    Geolocation.installVariables = ["GEOLOCATION_USAGE_DESCRIPTION"];
    Geolocation.platforms = ["Amazon Fire OS", "Android", "Browser", "iOS", "Windows"];
    Geolocation.decorators = [
        { type: Injectable }
    ];
    return Geolocation;
}(IonicNativePlugin));

var gps;
(function (gps) {
    let locationAccuracy = new LocationAccuracy;
    let diagnostic = new Diagnostic;
    /*    alert('position.coords.latitude: '          + position.coords.latitude          + '\n' +
                'position.coords.longitude: '         + position.coords.longitude         + '\n' +
                'position.coords.altitude: '          + position.coords.altitude          + '\n' +
                'position.coords.accuracy: '          + position.coords.accuracy          + '\n' +
                'position.coords.altitudeAccuracy: ' + position.coords.altitudeAccuracy  + '\n' +
                'position.coords.heading: '           + position.coords.heading           + '\n' +
                'position.coords.speed: '             + position.coords.speed             + '\n' +
                'position.timestamp: '         + position.timestamp                + '\n');
    */
    async function getCoords(geoTimeout = 10000, maximumAge = 10) {
        const geolocation = new Geolocation;
        return new Promise(async (resolve, reject) => {
            var geoOpt = { maximumAge: maximumAge, timeout: geoTimeout, enableHighAccuracy: true };
            let id = geolocation.watchPosition(geoOpt)
                .subscribe((pos) => {
                id.unsubscribe();
                if (pos.constructor.name === 'Geoposition' || pos.constructor.name === 'GeolocationPosition' || pos.constructor.name === 'Position')
                    resolve(pos);
                else {
                    getCoordsError(pos);
                    reject(pos);
                }
            });
        });
    }
    gps.getCoords = getCoords;
    function getCoordsError(error) {
        if (error.code == 1) {
            msg.danger(util.translate('exceptions.gpsAccess'));
        }
        else if (error.code == 3) {
            msg.danger(util.translate('exceptions.gpstimeout'));
        }
        else {
            alert('code: ' + error.code + '\n' +
                'message: ' + error.message + '\n');
        }
    }
    function checkAndAskGPSPermissions() {
        diagnostic.isLocationAuthorized().then(async (result) => {
            if (await gpsOff()) {
                try {
                    await locationAccuracy.request(locationAccuracy.REQUEST_PRIORITY_HIGH_ACCURACY);
                }
                catch (err) { }
            }
            if (!result)
                await diagnostic.requestLocationAuthorization();
        }, err => { msg.showError('Error requesting location permissions: ' + err); });
    }
    gps.checkAndAskGPSPermissions = checkAndAskGPSPermissions;
    function checkGPSPermission() {
        diagnostic.isLocationAuthorized().then(result => {
            if (result)
                activationMsg(true);
            else
                activationMsg(false);
        }, err => { msg.showError('Error requesting location permissions: ' + err); });
    }
    gps.checkGPSPermission = checkGPSPermission;
    function requestGPSPermission(actMsg) {
        diagnostic.requestLocationAuthorization().then((result) => {
            if (result === 'DENIED_ALWAYS') {
                let openNativeSettings = new OpenNativeSettings;
                openNativeSettings.open('location').then(async () => {
                    if (await diagnostic.isLocationAuthorized())
                        askToTurnOnGPS(actMsg);
                });
            }
            else if (result !== 'DENIED_ONCE')
                askToTurnOnGPS(actMsg);
        }, err => { if (err.code !== 4)
            msg.showError('Error requesting location permissions: ' + err.message); });
    }
    function askToTurnOnGPS(actMsg) {
        locationAccuracy.request(locationAccuracy.REQUEST_PRIORITY_HIGH_ACCURACY).then(() => { actMsg.dismiss(); }, err => { if (err.code !== 4)
            msg.showError('Error requesting location permissions: ' + err.message); });
    }
    async function activationMsg(permission) {
        if (await gpsOff() || !permission) {
            const actMsg = document.createElement('ion-alert');
            actMsg.header = util.translate("gps.activationMsg");
            actMsg.backdropDismiss = false;
            actMsg.buttons = [
                {
                    text: util.translate('Activate'),
                    handler: () => {
                        if (permission)
                            askToTurnOnGPS(actMsg);
                        else
                            requestGPSPermission(actMsg);
                        return false;
                    }
                }
            ];
            document.body.appendChild(actMsg);
            actMsg.present();
        }
    }
    async function gpsOff() {
        if (cordova.platformId === 'ios') {
            return await locationAccuracy.canRequest();
        }
        else {
            let mode = await diagnostic.getLocationMode();
            if (mode === diagnostic.locationMode.LOCATION_OFF)
                return true;
            else
                return false;
        }
    }
})(gps || (gps = {}));

var parser;
(function (parser) {
    var culture = 'es-es';
    async function recursiveCompile(json, template, conf, contextFunctions, lastTemplate, AddTimeZone = false) {
        let reg = /{{([^{}]+)}}/g;
        let hasMoreMatches = template.match(reg);
        culture = conf.user.currentUserCultureId;
        let retString = template;
        if (json) {
            retString = await parser.compile(json, retString, conf.resources, contextFunctions, AddTimeZone);
        }
        ;
        if (conf && conf.user) {
            retString = await parser.compile(conf.user, retString, conf.resources, contextFunctions, AddTimeZone);
        }
        ;
        if ((!lastTemplate || retString != lastTemplate) && hasMoreMatches != null) {
            retString = await parser.recursiveCompile(json, retString, conf, contextFunctions, retString, AddTimeZone);
        }
        return retString;
    }
    parser.recursiveCompile = recursiveCompile;
    async function compile(json, template, files, contextFunctions, AddTimeZone = false) {
        let reg = /{{([^{}]+)}}/g;
        let matches = template.match(reg);
        let retString = template;
        let defDateFormat = 'LL';
        if (matches != null) {
            json = lowerKeys(json);
            let contextVars = lowerKeys(this);
            for (let i = 0; i < matches.length; i++) {
                var skipReplace = false;
                let marker = matches[i];
                let rValue = '';
                let isFunction = false;
                if (marker.indexOf('(') != -1) {
                    try {
                        let fFunc = marker.substring(2, marker.length - 2).trim();
                        let fName = fFunc.substring(0, fFunc.indexOf('(')).trim();
                        if (contextFunctions && typeof contextFunctions[fName] === 'function' || typeof execDynamicCode.call(this, fName) === 'function') {
                            isFunction = true;
                        }
                    }
                    catch (e) {
                    }
                }
                if (isFunction) {
                    //Es una funcion javascript.
                    let fFunc = marker.substring(2, marker.length - 2).trim();
                    let fName = fFunc.substring(0, fFunc.indexOf('(')).trim();
                    let fParams = this.splitParams(fFunc.substring(fFunc.indexOf('(') + 1, fFunc.lastIndexOf(')')).trim());
                    for (let j = 0; j < fParams.length; j++) {
                        let jKey = fParams[j].toLowerCase().trim();
                        if ((jKey.startsWith("'") && jKey.endsWith("'")) || (jKey.startsWith('"') && jKey.endsWith('"'))) {
                            fParams[j] = jKey.slice(1, -1);
                        }
                        else if (jKey.startsWith("[") && jKey.endsWith("]")) {
                            fParams[j] = eval(jKey);
                        }
                        else if ((json && (typeof json[jKey] != 'undefined')) || (contextVars && (typeof contextVars[jKey] != 'undefined') && (contextVars[jKey] != null)) || jKey === 'json' || jKey === 'template' || jKey === 'contextfunctions') {
                            let value;
                            if (json && (typeof json[jKey] != 'undefined')) {
                                value = parser.getValue(json[jKey]);
                            }
                            else if (jKey === 'json') {
                                value = json;
                            }
                            else if (jKey === 'template') {
                                value = template;
                            }
                            else if (jKey === 'contextfunctions') {
                                value = contextFunctions;
                            }
                            else {
                                value = contextVars[jKey];
                            }
                            fParams[j] = value;
                        }
                    }
                    try {
                        if (contextFunctions && typeof contextFunctions[fName] != 'undefined') {
                            rValue = contextFunctions[fName].apply(contextFunctions, fParams);
                        }
                        else {
                            let found = false;
                            let fClass = fName.split('.');
                            switch (fClass.length) {
                                case 1:
                                    found = true;
                                    rValue = window[fClass[0]](...fParams);
                                    break;
                                case 2:
                                    found = true;
                                    rValue = window[fClass[0]][fClass[1]](...fParams);
                                    break;
                                case 3:
                                    found = true;
                                    rValue = window[fClass[0]][fClass[1]][fClass[2]](...fParams);
                                    break;
                                case 4:
                                    found = true;
                                    rValue = window[fClass[0]][fClass[1]][fClass[2]][fClass[3]](...fParams);
                                    break;
                                case 5:
                                    found = true;
                                    rValue = window[fClass[0]][fClass[1]][fClass[2]][fClass[3]][fClass[4]](...fParams);
                                    break;
                                case 6:
                                    found = true;
                                    rValue = window[fClass[0]][fClass[1]][fClass[2]][fClass[3]][fClass[4]][fClass[5]](...fParams);
                                    break;
                            }
                            if (!found) {
                                rValue = execDynamicCode.call(this, fName).apply(null, fParams);
                            }
                        }
                        if (rValue instanceof Promise) {
                            rValue = await Promise.resolve(rValue);
                        }
                    }
                    catch (ex) {
                        rValue = ex.message;
                    }
                }
                else if (marker.indexOf('|') != -1) {
                    //Lleva algún tipo de formato.
                    let auxMarker = marker.substring(2, marker.length - 2).trim();
                    let jKeyUp = auxMarker.split('|')[0];
                    let propFormat = auxMarker.split('|')[1];
                    let jKey = jKeyUp.toLowerCase();
                    if (propFormat.toLowerCase() == 'file') {
                        let found = false;
                        for (let i = 0; i < files.length; i++) {
                            if (files[i].FileName.toLowerCase() == jKeyUp.toLowerCase()) {
                                found = true;
                                rValue = 'data:' + files[i].MimeType + ';base64,' + files[i].B64;
                                break;
                            }
                        }
                        if (!found) {
                            rValue = jKeyUp;
                        }
                    }
                    else {
                        if ((json && typeof json[jKey] != 'undefined') || (contextVars && typeof contextVars[jKey] != 'undefined') || (contextFunctions && typeof contextFunctions[jKeyUp] != 'undefined') || (jKey == 'currentdatetime') || (jKey == 'currentdate') || (jKey == 'currenttime') || (jKey == 'currenttime') || (jKey == 'newguid')) {
                            if (jKey == 'currentdatetime' || jKey == 'currentdate' || jKey == 'currenttime') {
                                rValue = moment().toDate();
                            }
                            else if (jKey == 'newguid') {
                                rValue = util.GUID();
                            }
                            else if (json && typeof json[jKey] != 'undefined') {
                                rValue = parser.getValue(json[jKey], 'Value');
                            }
                            else if (contextVars && typeof contextVars[jKey] != 'undefined') {
                                rValue = contextVars[jKey];
                            }
                            else if (contextFunctions && typeof contextFunctions[jKeyUp] != 'undefined') {
                                rValue = contextFunctions[jKeyUp];
                            }
                            let typeF = propFormat.toLowerCase();
                            let strFormat = '';
                            if (typeF.indexOf(':') != -1) {
                                typeF = propFormat.substring(propFormat.indexOf(':'), 0).toLowerCase();
                                strFormat = propFormat.substring(propFormat.indexOf(':') + 1);
                            }
                            if (typeF == 'date') {
                                /*{{datevalue|date:LLL}*/
                                if (strFormat == '') {
                                    strFormat = defDateFormat;
                                }
                                if (strFormat == 'W') {
                                    if (AddTimeZone) {
                                        rValue = moment(rValue).locale(culture).format();
                                    }
                                    else {
                                        rValue = moment.utc(rValue).locale(culture).format();
                                    }
                                }
                                else {
                                    if (rValue && rValue != '' && moment.utc(rValue).isValid()) {
                                        if (AddTimeZone) {
                                            rValue = moment(rValue).locale(culture).format(strFormat);
                                        }
                                        else {
                                            rValue = moment.utc(rValue).locale(culture).format(strFormat);
                                        }
                                    }
                                    else {
                                        rValue = '';
                                    }
                                }
                            }
                            else if (typeF == 'fromnow') { /*{{datevalue|fromnow:LLL}*/
                                if (rValue && rValue != '' && moment.utc(rValue).isValid()) {
                                    if (AddTimeZone) {
                                        rValue = moment(rValue).locale(culture).fromNow();
                                    }
                                    else {
                                        rValue = moment(moment.utc(rValue).format().split('+')[0]).locale(culture).fromNow();
                                    }
                                }
                            }
                            else if (typeF == 'tonow') { /*{{datevalue|tonow:LLL}*/
                                if (rValue && rValue != '' && moment.utc(rValue).isValid()) {
                                    if (AddTimeZone) {
                                        rValue = moment(rValue).locale(culture).toNow();
                                    }
                                    else {
                                        rValue = moment(moment.utc(rValue).format().split('+')[0]).locale(culture).toNow();
                                    }
                                }
                            }
                            else if (typeF == 'decimal') { /*{{value|decimal:3}*/
                                if (rValue && rValue != '' && jquery.isNumeric(rValue)) {
                                    if (strFormat && strFormat != '') {
                                        if (culture == 'es-ES') {
                                            rValue = parseFloat(parseFloat(rValue).toFixed(strFormat)).toLocaleString('ca-ES', { minimumFractionDigits: strFormat });
                                        }
                                        else {
                                            rValue = parseFloat(parseFloat(rValue).toFixed(strFormat)).toLocaleString(culture, { minimumFractionDigits: strFormat });
                                        }
                                    }
                                    else {
                                        if (culture == 'es-ES') {
                                            rValue = parseFloat(rValue).toLocaleString('ca-ES');
                                        }
                                        else {
                                            rValue = parseFloat(rValue).toLocaleString(culture);
                                        }
                                    }
                                }
                            }
                            else if (typeF == 'switch') { /*{{value|switch:[true:icon-check,false:icon-noncheck,null:icon-cancel,else:]}*/
                                let found = false;
                                if (rValue == null) {
                                    rValue = 'null';
                                }
                                //Convert expresion into object
                                let valuesTemp = strFormat.toString().trim();
                                valuesTemp = valuesTemp.substring(1, valuesTemp.length - 1);
                                valuesTemp = valuesTemp.split(',');
                                let values = new Object();
                                for (let z = 0; z < valuesTemp.length; z++) {
                                    let arrKey = valuesTemp[z].split(':')[0].toString().trim();
                                    let arrValue = valuesTemp[z].split(':')[1].toString().trim();
                                    values[arrKey] = arrValue;
                                }
                                for (let switchvalue in values) {
                                    if (switchvalue.toLowerCase() == rValue.toString().toLowerCase()) {
                                        rValue = values[switchvalue];
                                        found = true;
                                        break;
                                    }
                                }
                                if (!found && typeof values['else'] != 'undefined') {
                                    rValue = values['else'];
                                    if (rValue == 'null') {
                                        rValue = '';
                                    }
                                }
                            }
                            else if (typeF == 'string') { /*{{str|string:lower}*/ /*{{str|string:upper}*/ /*{{str|string:255}*/
                                if (rValue && rValue != '') {
                                    if (strFormat.toLowerCase() == 'lower') {
                                        rValue = rValue.toLowerCase();
                                    }
                                    else if (strFormat.toLowerCase() == 'upper') {
                                        rValue = rValue.toUpperCase();
                                    }
                                    else if (jquery.isNumeric(strFormat) && (rValue.length > parseFloat(strFormat))) {
                                        rValue = rValue.substring(0, parseFloat(strFormat)) + '...';
                                    }
                                    rValue = parser.replaceAll(rValue, '\n', '<br>');
                                }
                                else {
                                    rValue = '';
                                }
                            }
                            else if (typeF == 'isnull') { /*{{str|isnull:value}*/
                                let arrFormat = strFormat.split(',');
                                if (rValue == null || rValue === '' || rValue == 'null') {
                                    rValue = arrFormat[0];
                                }
                                else if (arrFormat.length > 1) {
                                    rValue = strFormat.substring(strFormat.indexOf(',') + 1);
                                }
                            }
                            else if (typeF == 'bool') { /*{{value|bool:'true value','false 0 empty or null value'}*/
                                let arrFormat = strFormat.split(',');
                                if (typeof rValue == 'undefined' || rValue == null || !rValue || rValue == '' || rValue == '0' || rValue.toString().toLowerCase() == 'false' || rValue.toString().toLowerCase() == 'null') {
                                    if (arrFormat.length > 1) {
                                        rValue = arrFormat[1];
                                    }
                                    else {
                                        rValue = '';
                                    }
                                }
                                else {
                                    rValue = arrFormat[0];
                                }
                            }
                            else if (typeF == 'value') {
                                if (rValue == null) {
                                    rValue = '';
                                }
                            }
                            else if (typeF == 'html' || typeF == 'htmlattr') {
                                rValue = escapeHtmlString(rValue, typeF == 'htmlattr');
                            }
                            else if (typeF == 'js') {
                                rValue = escapeJsString(rValue);
                            }
                            else if (typeF == 'sql') {
                                rValue = escapeSqltring(rValue);
                            }
                        }
                        else {
                            skipReplace = true;
                        }
                    }
                }
                else {
                    //Es un marcador simple.
                    let jKeyUp = marker.substring(2, marker.length - 2).trim();
                    let jKey = jKeyUp.toLowerCase();
                    if ((json && typeof json[jKey.toLowerCase()] != 'undefined') || (contextVars && typeof contextVars[jKey.toLowerCase()] != 'undefined') || (contextFunctions && typeof contextFunctions[jKeyUp] != 'undefined') || (jKey == 'currentdatetime') || (jKey == 'currentdate') || (jKey == 'currentlocation') || (jKey == 'currentaltitude') || (jKey == 'currentlongitude') || (jKey == 'currentlatitude') || (jKey == 'currenttime') || (jKey == 'newguid')) {
                        if (jKey == 'currentdatetime') {
                            rValue = util.currentDateTime();
                        }
                        else if (jKey == 'currentdate') {
                            rValue = util.currentDate();
                        }
                        else if (jKey == 'currenttime') {
                            rValue = util.currentTime();
                        }
                        else if (jKey == 'newguid') {
                            rValue = util.GUID();
                        }
                        else if (jKey == 'currentlocation') {
                            let pos = await gps.getCoords();
                            rValue = pos.coords.latitude + ', ' + pos.coords.longitude;
                        }
                        else if (jKey == 'currentaltitude') {
                            let pos = await gps.getCoords();
                            rValue = pos.coords.altitude;
                        }
                        else if (jKey == 'currentlongitude') {
                            let pos = await gps.getCoords();
                            rValue = pos.coords.longitude;
                        }
                        else if (jKey == 'currentlatitude') {
                            let pos = await gps.getCoords();
                            rValue = pos.coords.latitude;
                        }
                        else if (json && typeof json[jKey] != 'undefined' && json[jKey] != null) {
                            rValue = parser.getValue(json[jKey]);
                        }
                        else if (contextVars && typeof contextVars[jKey] != 'undefined') {
                            rValue = contextVars[jKey];
                        }
                        else if (contextFunctions && typeof contextFunctions[jKeyUp] != 'undefined') {
                            rValue = contextFunctions[jKeyUp];
                        }
                    }
                    else {
                        skipReplace = true;
                    }
                    if (typeof rValue == 'string' && rValue.indexOf('/Date') != -1) {
                        rValue = moment(rValue).locale(culture).format(defDateFormat);
                    }
                    else if (typeof rValue == 'object' && rValue != null && rValue.Hours) {
                        rValue = moment(rValue).utc().format('LTS');
                    }
                    if (rValue == null) {
                        rValue = '';
                    }
                }
                if (!skipReplace) {
                    retString = parser.replaceAll(retString, marker, rValue);
                }
            }
        }
        return retString;
    }
    parser.compile = compile;
    function findTemplate(obj, typeId, pageName) {
        if (obj) {
            for (let i = 0; i < obj.pages.length; i++) {
                if (pageName) {
                    if (obj.pages[i].pageName.toLowerCase() == pageName.toLowerCase()) {
                        if (!obj.pages[i].SQLSentence) {
                            obj.pages[i].SQLSentence = 'select * from ' + obj.tableName + ' where `' + obj.tableName + '`.`_isDeleted`=0';
                        }
                        return obj.pages[i];
                    }
                }
                else {
                    if (obj.pages[i].typeId.toLowerCase() == typeId.toLowerCase() && obj.pages[i].isDefault == true) {
                        if (!obj.pages[i].SQLSentence) {
                            obj.pages[i].SQLSentence = 'select * from ' + obj.tableName + ' where `' + obj.tableName + '`.`_isDeleted`=0';
                        }
                        return obj.pages[i];
                    }
                }
            }
        }
        return null;
    }
    parser.findTemplate = findTemplate;
    function getValue(val, prop) {
        if (val == null) {
            return null;
        }
        let type = typeof val;
        type = type.toLocaleLowerCase();
        if (type == 'object') {
            if (prop) {
                return val[prop];
            }
            else {
                return val.Text;
            }
        }
        else {
            return val;
        }
    }
    parser.getValue = getValue;
    function replaceAll(str, find, replace) {
        if (!str || find == replace) {
            return str;
        }
        const escapeRegExp = (string) => {
            return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
        };
        return str.toString().replace(new RegExp(escapeRegExp(find), 'ig'), replace);
    }
    parser.replaceAll = replaceAll;
    function formatDate(value) {
        return value;
    }
    parser.formatDate = formatDate;
    function formatNumber(value) {
        return value;
    }
    parser.formatNumber = formatNumber;
    function formatDecimal(value) {
        return value;
    }
    parser.formatDecimal = formatDecimal;
    /**
    * Returns an escaped JS string
    * @method escapeJsString
    * @param {string} str - String
*/
    function escapeJsString(str) {
        if (str) {
            str = replaceAll(str, '\\', '\\\\');
            str = replaceAll(str, '\'', '\\\'');
            str = replaceAll(str, "\"", '&quot;');
        }
        return str;
    }
    parser.escapeJsString = escapeJsString;
    /**
 * Returns an escaped SQL string
 * @method escapeSqlString
 * @param {string} str - String
 */
    function escapeSqltring(str) {
        if (str) {
            str = replaceAll(str, "'", "''");
        }
        return str;
    }
    parser.escapeSqltring = escapeSqltring;
    function splitParams(pStr) {
        let params = [];
        let newParam = '';
        let arrOpened = false;
        for (let i = 0; i < pStr.length; i++) {
            if (pStr[i] == ',' && !arrOpened) {
                params.push(newParam);
                newParam = '';
            }
            else {
                if (pStr[i] == '[') {
                    arrOpened = true;
                }
                if (pStr[i] == ']') {
                    arrOpened = false;
                }
                newParam += pStr[i];
            }
        }
        if (newParam) {
            params.push(newParam);
        }
        return params;
    }
    parser.splitParams = splitParams;
    /**
    * Returns an escapep HTML string
    * @method escapeHtmlString
    * @param {string} str - String
    * @param {boolean} attr - Determine if the line breaks are substituted
    */
    function escapeHtmlString(str, attr) {
        if (str) {
            str = replaceAll(str, '&', '&amp;');
            str = replaceAll(str, '<', '&lt;');
            str = replaceAll(str, '>', '&gt;');
            str = replaceAll(str, '"', '&quot');
            str = replaceAll(str, "'", '&#39;');
            str = replaceAll(str, ',', '&#44;');
            str = replaceAll(str, ':', '&#58;');
            str = replaceAll(str, '|', '&#124;');
            if (attr) {
                str = replaceAll(str, '\\', '\\\\');
                str = replaceAll(str, '\n', '');
                str = replaceAll(str, '\r', '');
                str = replaceAll(str, '&#39;', '\\\'');
            }
        }
        return str;
    }
    parser.escapeHtmlString = escapeHtmlString;
    /**
    * Transform object keys into lower case.
    * @param {object} obj - Object to transform.
    * @param {string} [recursive=false] - Set recursive mode on/off.
    * @method lowerKeys
    * @return {object} transformed object.
    */
    function lowerKeys(obj, recursive = false) {
        if (obj) {
            var key, keys = Object.keys(obj);
            var n = keys.length;
            var newobj = {};
            for (var i = 0; i < n; i++) {
                key = keys[i];
                if (recursive && (typeof obj[key] === "object") && (obj[key] !== null) && (key.toLowerCase() !== 'objectdefaults')) {
                    newobj[key.toLowerCase()] = lowerKeys(obj[key], recursive);
                }
                else {
                    newobj[key.toLowerCase()] = obj[key];
                }
            }
            return newobj;
        }
        else {
            return null;
        }
    }
    parser.lowerKeys = lowerKeys;
    /**
    * Evaluates JavaScript code and executes it.
    * @param {string} dynamicCode - Dynamic Code.
    * @method execDynamicCode
    * @return {any}
    */
    function execDynamicCode(dynamicCode) {
        return eval(dynamicCode);
        /*jQuery.globalEval*/
    }
    parser.execDynamicCode = execDynamicCode;
    /**
        * Sorts an object's array by specified properties.
        * @param {object} obj - Object to order.
        * @param {string} property - Order property
        * @param {string} [property2] - Second order property
        * @method sortObject
        * @return {any[]} Ordered object.
        */
    function sortObject(obj, property, property2) {
        var sortable = [];
        var key;
        for (key in obj) {
            sortable.push(obj[key]);
        }
        sortable.sort(function (a, b) {
            var o1 = a[property];
            var o2 = b[property];
            if (o1 < o2)
                return -1;
            if (o1 > o2)
                return 1;
            if (property2) {
                var p1 = a[property2];
                var p2 = b[property2];
                if (p1 < p2)
                    return -1;
                if (p1 > p2)
                    return 1;
            }
            return 0;
        });
        return sortable;
    }
    parser.sortObject = sortObject;
})(parser || (parser = {}));

export { gps as g, parser as p };
