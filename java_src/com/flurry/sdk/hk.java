package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebView;
import com.flurry.android.AdCreative;
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* loaded from: classes2.dex */
public class hk extends WebView {

    /* renamed from: a  reason: collision with root package name */
    String f2802a;
    String b;
    cn c;
    final String d;
    private cm e;
    private b f;
    private boolean g;
    private boolean h;
    private boolean i;

    /* loaded from: classes2.dex */
    public interface a {
    }

    /* loaded from: classes2.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        a f2803a;
    }

    public int getWebViewType$568abff5() {
        return hq.b;
    }

    public hk(Context context, cn cnVar) {
        super(context);
        this.g = false;
        this.f2802a = null;
        this.i = true;
        this.b = null;
        this.c = null;
        this.d = hk.class.getSimpleName();
        this.c = cnVar;
    }

    private cn getCurrentAdFrame() {
        return this.c;
    }

    private int getCurrentBinding() {
        return getCurrentAdFrame().f2511a;
    }

    private String getCurrentContent() {
        return getCurrentAdFrame().c;
    }

    private String getCurrentDisplay() {
        return getCurrentAdFrame().b;
    }

    private String getCurrentFormat() {
        return getCurrentAdFrame().d.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return getCurrentFormat().equals(AdCreative.kFormatTakeover);
    }

    public void setMraidButtonVisibility(boolean z) {
        if (this.e != null) {
            if (z) {
                this.e.setVisibility(0);
            } else {
                this.e.setVisibility(4);
            }
        }
    }

    public synchronized void setMraidJsEnvInitialized(boolean z) {
        this.h = z;
    }

    private synchronized boolean e() {
        return this.h;
    }

    public final synchronized void b() {
        if (!e()) {
            km.a(3, this.d, "initializeMraid");
            String str = "{useCustomClose:false,isModal:false,width:undefined,height:undefined,placementType:\"" + (a() ? "interstitial" : "inline") + "\"}";
            if (this != null) {
                loadUrl("javascript:(function() {var mraidCtor=function(flurryBridge,initState){var mraid={};var STATES=mraid.STATES={LOADING:\"loading\",UNKNOWN:\"unknown\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var EVENTS=mraid.EVENTS={ASSETREADY:\"assetReady\",ASSETREMOVED:\"assetRemoved\",ASSETRETIRED:\"assetRetired\",INFO:\"info\",ERROR:\"error\",ORIENTATIONCHANGE:\"orientationChange\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\"};var listeners={};var currentState=STATES.LOADING;var expandProperties={width:initState.width,height:initState.height,isModal:initState.isModal,useCustomClose:false};var collapseProperties={};var placementType=initState.placementType;var disable=false;var safeCloseEnabled=false;var closeId=\"flurry-mraid-default-close\";var imgUrl=\"https://cdn.flurry.com/sdkAssets/bttn-close-bw.png\"; mraid.flurryBridgeListenerEvent = function(cmd){  if(cmd === \"adLoadCompleted\"){ broadcastEvent(EVENTS.READY);}};var safeClose=function(){try{if(window.mraid)window.mraid.close();else if(window.flurryadapter)flurryadapter.executeCall(\"adWillClose\");else console.log(\"unable to close\")}catch(error){console.log(\"unable to close: \"+error)}};var makeDefaultClose=function(){var img=document.createElement(\"img\");img.src=imgUrl;img.id=closeId;img.style.position=\"absolute\";img.style.top=\"10px\";img.style.right=\"10px\";img.style.width=\"50px\";img.style.height=\"50px\";img.style.zIndex=1E4;return img};var updateDefaultClose=function(){if(!expandProperties.useCustomClose&&(placementType===\"interstitial\"||currentState===STATES.EXPANDED)){addDefaultClose();flurryBridge.executeCall(\"mraidCloseButtonVisible\", \"useCustomClose\", \"true\");safeCloseEnabled=true;console.log('close button added');}else {removeDefaultClose(); console.log('close button removed');}};var addDefaultClose=function(){var closeButton=document.getElementById(closeId);if(!closeButton){closeButton=makeDefaultClose();document.body.appendChild(closeButton)}};var removeDefaultClose=function(){var closeButton=document.getElementById(closeId);if(closeButton)document.body.removeChild(closeButton)};var setupDefaultCloseHandler=function(){document.body.addEventListener(\"click\",function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.id===closeId)safeClose()})};var contains=function(value,obj){for(var i in obj)if(obj[i]===value)return true;return false};var stringify=function(obj){if(typeof obj==\"object\")if(obj.push){var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(obj[p]);return\"[\"+out.join(\",\")+\"]\"}else{var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(\"'\"+p+\"':\"+obj[p]);return\"{\"+out.join(\",\")+\"}\"}else return new String(obj)};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++)args[i]=arguments[i];var event=args.shift();try{if(listeners[event])for(var j=0;j<listeners[event].length;j++)if(typeof listeners[event][j]===\"function\")listeners[event][j].apply(undefined,args);else if(typeof listeners[event][j]===\"string\"&&typeof window[listeners[event][j]]===\"function\")window[listeners[event][j]].apply(undefined,args)}catch(e){console.log(e)}};mraid.disable=function(){removeDefaultClose();disable=true};mraid.addEventListener=function(event,listener){if(disable)return;if(!event||!listener)broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\");else if(!contains(event,EVENTS))broadcastEvent(EVENTS.ERROR,\"Unknown event: \"+event,\"addEventListener\");else if(!listeners[event])listeners[event]=[listener];else listeners[event].push(listener);updateDefaultClose();flurryBridge.executeCall(\"eventListenerAdded\")};mraid.stateChange=function(newState){if(disable)return;if(currentState===newState)return;broadcastEvent(EVENTS.INFO,\"setting state to \"+stringify(newState));var oldState=currentState;currentState=newState;if(oldState===STATES.LOADING&&newState===STATES.DEFAULT){setupDefaultCloseHandler();}else if(oldState===STATES.HIDDEN||newState===STATES.HIDDEN)broadcastEvent(EVENTS.VIEWABLECHANGE);else if(oldState===STATES.DEFAULT&&newState===STATES.EXPANDED)updateDefaultClose();else if(newState===STATES.DEFAULT&&oldState===STATES.EXPANDED)updateDefaultClose();broadcastEvent(EVENTS.STATECHANGE,currentState)};mraid.close=function(){if(disable)return;var state=mraid.getState();if(state===STATES.DEFAULT){mraid.stateChange(STATES.HIDDEN);flurryBridge.executeCall(\"adWillClose\")}else if(state===STATES.EXPANDED){mraid.stateChange(STATES.DEFAULT);flurryBridge.executeCall(\"collapse\")}else console.log(\"close() called in state \"+state)};mraid.expand=function(url){if(disable)return;var state=mraid.getState();if(state!==STATES.DEFAULT){console.log(\"expand() called in state \"+state);return}if(placementType===\"interstitial\"){console.log(\"expand() called for placement type \"+placementType);return}if(url)flurryBridge.executeCall(\"open\",\"url\",url);else flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height);mraid.stateChange(STATES.EXPANDED)};mraid.setExpandProperties=function(properties){if(disable)return;if(typeof properties.width===\"number\"&&!isNaN(properties.width))expandProperties.width=properties.width;if(typeof properties.height===\"number\"&&!isNaN(properties.height))expandProperties.height=properties.height;if(typeof properties.useCustomClose===\"boolean\"){expandProperties.useCustomClose=properties.useCustomClose;updateDefaultClose()}};mraid.getExpandProperties=function(properties){if(disable)return;var ret={};ret.width=expandProperties.width;ret.height=expandProperties.height;ret.isModal=expandProperties.isModal;ret.useCustomClose=expandProperties.useCustomClose;return ret};mraid.getPlacementType=function(){return placementType};mraid.getVersion=function(){if(disable)return\"\";return\"1.0\"};mraid.getState=function(){if(disable)return\"\";return currentState};mraid.isViewable=function(){if(disable)return false;if(mraid.getState()===\"hidden\")return false;else return true};mraid.open=function(url){if(disable)return;try{flurryBridge.executeCall(\"open\",\"url\",url)}catch(e){console.log(e)}};mraid.playVideo=function(url){if(disable){return;}try{flurryBridge.executeCall(\"playVideo\",\"url\",url);}catch(e){console.log(e);}};mraid.removeEventListener=function(event,listener){if(disable)return;if(!event)broadcastEvent(\"error\",\"Must specify an event.\",\"removeEventListener\");else if(listener&&listeners[event])for(var i=0;i<listeners[event].length;i++){if(listeners[event][i]===listener)listeners[event].splice(i,1)}else if(listeners[event])listeners[event]=[]};mraid.useCustomClose=function(use){if(disable)return;if(typeof use===\"boolean\"){expandProperties.useCustomClose=use;updateDefaultClose();if (safeCloseEnabled){flurryBridge.executeCall(\"mraidCloseButtonVisible\", \"useCustomClose\", \"true\");}else{flurryBridge.executeCall(\"mraidCloseButtonVisible\", \"useCustomClose\", use);}}};return mraid};window.mraid=mraidCtor(window.flurryadapter," + str + ");})();");
            }
            setMraidJsEnvInitialized(true);
        }
    }

    public final synchronized void c() {
        setMraidJsEnvInitialized(false);
    }

    public final void d() {
        km.a(3, this.d, "activateMraid");
        if (this != null) {
            loadUrl("javascript:if(window.mraid){window.mraid.stateChange(window.mraid.STATES.DEFAULT);}");
        }
    }

    public WebView getfWebView() {
        return this;
    }

    public void setMraidListener(a aVar) {
        this.f.f2803a = aVar;
    }

    public a getMraidListener() {
        return this.f.f2803a;
    }
}
