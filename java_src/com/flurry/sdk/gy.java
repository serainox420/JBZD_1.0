package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.share.internal.ShareConstants;
import com.flurry.android.AdCreative;
import com.flurry.sdk.gz;
import com.flurry.sdk.ha;
import com.flurry.sdk.ks;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* loaded from: classes2.dex */
public class gy extends gz implements DialogInterface.OnKeyListener {
    private boolean A;
    private gz.a B;

    /* renamed from: a  reason: collision with root package name */
    String f2761a;
    kh<ha> b;
    private final String c;
    private gm d;
    private boolean e;
    private hk f;
    private int g;
    private boolean h;
    private WebViewClient i;
    private WebChromeClient j;
    private hp k;
    private View l;
    private int m;
    private WebChromeClient.CustomViewCallback n;
    private Dialog o;
    private FrameLayout p;
    private int q;
    private Dialog r;
    private FrameLayout s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private AlertDialog y;
    private cm z;

    /* renamed from: com.flurry.sdk.gy$8  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2772a = new int[ha.a.a().length];

        static {
            try {
                f2772a[ha.a.f2785a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2772a[ha.a.b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2772a[ha.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2772a[ha.a.c - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2772a[ha.a.e - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @Override // com.flurry.sdk.gz
    public boolean onBackKey() {
        a(bc.EV_AD_WILL_CLOSE, Collections.emptyMap(), getAdController(), 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public hp getWebViewFactory() {
        if (this.k == null) {
            this.k = new hp();
            km.e("WebViewFactory:", "Created new WebViewFactory: " + this.k);
            return this.k;
        }
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends WebViewClient {
        private b() {
        }

        /* synthetic */ b(gy gyVar, byte b) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onLoadResource(WebView webView, String str) {
            km.a(3, gy.this.c, "onLoadResource: url = " + str);
            super.onLoadResource(webView, str);
            if (str != null && webView != null && webView == gy.this.f) {
                if (!str.equalsIgnoreCase(gy.this.f.getUrl())) {
                    gy.this.b();
                }
                if (!gy.this.u && Uri.parse(str).getLastPathSegment() != null) {
                    if (gy.this.v) {
                        gy.this.u = true;
                        gy.this.getWebViewFactory().c().b();
                        if (gy.this.t) {
                            gy.this.getWebViewFactory().c().d();
                        }
                    } else if (gy.this.t && gy.this.d() && gy.this.getCurrentBinding() == 2 && !gy.this.A) {
                        gy.this.getWebViewFactory().b();
                    }
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            km.a(3, gy.this.c, "onPageStarted: url = " + str);
            if (str != null && webView != null && webView == gy.this.f) {
                gy.this.c();
                gy.this.getWebViewFactory().c().c();
                gy.this.t = false;
                gy.this.u = false;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            km.a(3, gy.this.c, "onPageFinished: url = " + str + " adcontroller index: " + gy.this.getAdController().b.e);
            if (str != null && webView != null && webView == gy.this.f) {
                gy.this.b();
                gy.p(gy.this);
                gy.this.dismissProgressDialog();
                if (!gy.this.a(gy.this.f) && (gy.this.getCurrentBinding() == 2 || gy.this.getCurrentBinding() == 1)) {
                    km.a(3, gy.this.c, "adding WebView to AdUnityView");
                    if (((ViewGroup) webView.getParent()) == null) {
                        gy.this.addView(gy.this.f);
                        gy.this.getWebViewFactory().c().d();
                    }
                }
                gy.this.t = true;
                if (gy.this.v) {
                    if (gy.this.u) {
                        gy.this.getWebViewFactory().c().d();
                    }
                } else if (gy.this.u) {
                    bc a2 = com.flurry.sdk.b.a("mraidAdNotSupported");
                    hk c = gy.this.getWebViewFactory().c();
                    if (a2.equals(bc.EV_MRAID_NOT_SUPPORTED)) {
                        c.loadUrl("javascript:if(window.mraid && typeof window.mraid.disable === 'function'){window.mraid.disable();}");
                    }
                    gy.this.a(a2, new HashMap(), gy.this.getAdController(), 0);
                    if (gy.this.d() && gy.this.getCurrentBinding() == 2 && !gy.this.A) {
                        gy.this.getWebViewFactory().b();
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x016a  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String str2;
            Uri parse;
            boolean z;
            km.a(3, gy.this.c, "shouldOverrideUrlLoading: url = " + str);
            if (str == null || webView == null || webView != gy.this.f) {
                return false;
            }
            String c = mc.c(gy.this.f.getUrl());
            if (!TextUtils.isEmpty(c) && str.startsWith(c)) {
                str2 = str.substring(c.length());
                Uri parse2 = Uri.parse(str2);
                if (parse2.isHierarchical() && !TextUtils.isEmpty(parse2.getScheme()) && !TextUtils.isEmpty(parse2.getAuthority())) {
                    km.a(3, gy.this.c, "shouldOverrideUrlLoading: target url = " + str2);
                    parse = Uri.parse(str2);
                    km.a(3, gy.this.c, "shouldOverrideUrlLoading: getScheme = " + parse.getScheme());
                    if (!"flurry".equals(parse.getScheme())) {
                        String queryParameter = parse.getQueryParameter("event");
                        km.a(3, gy.this.c, "event is " + queryParameter);
                        if (TextUtils.isEmpty(queryParameter)) {
                            return true;
                        }
                        bc a2 = com.flurry.sdk.b.a(queryParameter);
                        if (a2.equals(bc.EV_AD_LISTENER_ADDED)) {
                            gy.this.w = true;
                            if (gy.this.d()) {
                                gy.r(gy.this);
                                gy.s(gy.this);
                            }
                        }
                        hk c2 = gy.this.getWebViewFactory().c();
                        if (a2.equals(bc.EV_AD_LISTENER_ADDED)) {
                            if (!(c2.getContext() instanceof Activity)) {
                                km.a(3, c2.d, "no activity present");
                            } else {
                                Activity activity = (Activity) c2.getContext();
                                if (c2.a()) {
                                    fe.b(activity, fe.a());
                                }
                            }
                        }
                        gy gyVar = gy.this;
                        if (a2.equals(bc.EV_MRAID_CLOSE_BUTTON_VISIBLE)) {
                            String queryParameter2 = parse.getQueryParameter("useCustomClose");
                            if (!TextUtils.isEmpty(queryParameter2) && queryParameter2.equals("true")) {
                                gyVar.setMraidButtonVisibility(false);
                            } else {
                                gyVar.setMraidButtonVisibility(true);
                            }
                        }
                        Map<String, String> h = ly.h(parse.getEncodedQuery());
                        h.put("requiresCallComplete", "true");
                        gy.this.a(a2, h, gy.this.getAdController(), 0);
                        return true;
                    }
                    gy.this.a(bc.EV_CLICKED, Collections.emptyMap(), gy.this.getAdController(), 0);
                    if (!gy.this.getAdController().e()) {
                        km.a(3, gy.this.c, "shouldOverrideUrlLoading: doGenericLaunch ");
                        i.a();
                        i.c().a(gy.this.getContext(), str2, true, gy.this.getAdObject(), true);
                        return true;
                    }
                    if (mc.d(str2)) {
                        km.a(3, gy.this.c, "shouldOverrideUrlLoading: isMarketUrl ");
                        z = fo.a(gy.this.getContext(), str2);
                    } else {
                        z = false;
                    }
                    if (!z && mc.f(str2)) {
                        km.a(3, gy.this.c, "shouldOverrideUrlLoading: isGooglePlayUrl ");
                        z = fo.b(gy.this.getContext(), str2);
                    }
                    if (!z) {
                        km.a(3, gy.this.c, "shouldOverrideUrlLoading: loadUrl doGenericLaunch ");
                        i.a();
                        i.c().a(gy.this.getContext(), str2, true, gy.this.getAdObject(), true);
                        return true;
                    }
                    gy.this.a(bc.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), gy.this.getAdController(), 0);
                    return true;
                }
            }
            str2 = str;
            parse = Uri.parse(str2);
            km.a(3, gy.this.c, "shouldOverrideUrlLoading: getScheme = " + parse.getScheme());
            if (!"flurry".equals(parse.getScheme())) {
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            km.a(3, gy.this.c, "onReceivedError: url = " + str2);
            gy.this.dismissProgressDialog();
            Uri parse = Uri.parse(str2);
            if ("market".equals(parse.getScheme())) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                gy.this.getContext().startActivity(intent);
                gy.a(gy.this);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", Integer.toString(bb.kAdDisplayError.z));
            hashMap.put("webViewErrorCode", Integer.toString(i));
            hashMap.put("failingUrl", str2);
            gy.this.a(bc.EV_RENDER_FAILED, hashMap, gy.this.getAdController(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class a extends WebChromeClient {
        private a() {
        }

        /* synthetic */ a(gy gyVar, byte b) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            km.a(3, gy.this.c, "onShowCustomView(7)");
            if (!(gy.this.getContext() instanceof Activity)) {
                km.a(3, gy.this.c, "no activity present");
            } else {
                onShowCustomView(view, ((Activity) gy.this.getContext()).getRequestedOrientation(), customViewCallback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
            km.a(3, gy.this.c, "onShowCustomView(14)");
            if (!(gy.this.getContext() instanceof Activity)) {
                km.a(3, gy.this.c, "no activity present");
                return;
            }
            final Activity activity = (Activity) gy.this.getContext();
            if (gy.this.l == null || gy.this.j == null) {
                gy.this.l = view;
                gy.this.m = activity.getRequestedOrientation();
                gy.this.n = customViewCallback;
                gy.this.p = new FrameLayout(activity);
                gy.this.p.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                gy.this.p.addView(gy.this.l, new FrameLayout.LayoutParams(-1, -1, 17));
                ((ViewGroup) activity.getWindow().getDecorView()).addView(gy.this.p, -1, -1);
                if (gy.this.o == null) {
                    gy.this.o = new Dialog(activity) { // from class: com.flurry.sdk.gy.a.1
                        @Override // android.app.Dialog, android.view.Window.Callback
                        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
                            return activity.dispatchTouchEvent(motionEvent);
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
                            return activity.dispatchTrackballEvent(motionEvent);
                        }
                    };
                    gy.this.o.getWindow().setType(1000);
                    gy.this.o.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.flurry.sdk.gy.a.2
                        @Override // android.content.DialogInterface.OnShowListener
                        public final void onShow(DialogInterface dialogInterface) {
                            if (gy.this.r != null) {
                                gy.this.r.hide();
                            }
                        }
                    });
                    gy.this.o.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.flurry.sdk.gy.a.3
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            km.a(3, gy.this.c, "customViewFullScreenDialog.onDismiss()");
                            if (gy.this.l != null && gy.this.j != null) {
                                gy.this.j.onHideCustomView();
                            }
                        }
                    });
                    gy.this.o.setCancelable(true);
                    gy.this.o.show();
                }
                fe.b(activity, i);
                return;
            }
            gy.this.j.onHideCustomView();
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            km.a(3, gy.this.c, "onHideCustomView()");
            if (!(gy.this.getContext() instanceof Activity)) {
                km.a(3, gy.this.c, "no activity present");
                return;
            }
            Activity activity = (Activity) gy.this.getContext();
            if (gy.this.l != null) {
                if (gy.this.r != null) {
                    gy.this.r.show();
                }
                ((ViewGroup) activity.getWindow().getDecorView()).removeView(gy.this.p);
                gy.this.p.removeView(gy.this.l);
                if (gy.this.o != null && gy.this.o.isShowing()) {
                    gy.this.o.hide();
                    gy.this.o.setOnDismissListener(null);
                    gy.this.o.dismiss();
                }
                gy.this.o = null;
                if (gy.this.f != null) {
                    gy.this.f.stopLoading();
                }
                fe.a(activity, gy.this.m);
                gy.this.n.onCustomViewHidden();
                gy.this.n = null;
                gy.this.p = null;
                gy.this.l = null;
            }
        }
    }

    private synchronized void setFlurryJsEnvInitialized(boolean z) {
        this.h = z;
    }

    private synchronized boolean a() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        if (!a()) {
            km.a(3, this.c, "initializeFlurryJsEnv");
            if (this.f != null) {
                this.f.loadUrl("javascript:(function() {var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code='var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text('\"'+esc(tree[i])+'\"')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,0,'+start+\",\"+end+',\"'+tags+'\")){_.rs(c,p,function(c,p,_){'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();}})();");
            }
            setFlurryJsEnvInitialized(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        setFlurryJsEnvInitialized(false);
    }

    public gy(Context context, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
        this.c = gy.class.getSimpleName();
        this.x = false;
        this.f2761a = null;
        this.b = new kh<ha>() { // from class: com.flurry.sdk.gy.1
            @Override // com.flurry.sdk.kh
            public final /* synthetic */ void a(ha haVar) {
                final ha haVar2 = haVar;
                jy.a().a(new Runnable() { // from class: com.flurry.sdk.gy.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (AnonymousClass8.f2772a[haVar2.f2784a - 1]) {
                            case 1:
                                gy.a(gy.this, haVar2);
                                return;
                            case 2:
                                gy.a(gy.this);
                                return;
                            case 3:
                                gy.a(gy.this, haVar2.b);
                                return;
                            case 4:
                                gy.b(gy.this, haVar2.b);
                                return;
                            case 5:
                                gy.this.c(haVar2.b.c.f2471a.ag);
                                return;
                            default:
                                return;
                        }
                    }
                });
            }
        };
        this.B = new gz.a() { // from class: com.flurry.sdk.gy.4
            @Override // com.flurry.sdk.gz.a
            public final void a() {
                if (gy.this.getCurrentBinding() == 3 && gy.this.d != null) {
                    if (gy.this.isViewAttachedToActivity() && gy.this.a((View) gy.this.d)) {
                        gy.this.removeView(gy.this.d);
                    }
                    gy.this.d.cleanupLayout();
                    gy.this.d = null;
                }
            }

            @Override // com.flurry.sdk.gz.a
            public final void b() {
                if (gy.this.getCurrentBinding() == 3 && gy.this.d != null) {
                    if (gy.this.isViewAttachedToActivity() && gy.this.a((View) gy.this.d)) {
                        gy.this.removeView(gy.this.d);
                    }
                    gy.this.d.cleanupLayout();
                    gy.this.d = null;
                }
            }

            @Override // com.flurry.sdk.gz.a
            public final void c() {
                if (gy.this.getCurrentBinding() == 3 && gy.this.d != null) {
                    gy.this.d.cleanupLayout();
                    gy.this.d = null;
                }
            }
        };
        setClickable(true);
        if (getContext() instanceof Activity) {
            this.g = ((Activity) getContext()).getRequestedOrientation();
        }
        if (getAdUnit() != null) {
            this.v = getAdUnit().u;
        } else {
            km.a(3, this.c, "adunit is Null");
        }
    }

    @Override // com.flurry.sdk.gz
    public void cleanupLayout() {
        if (this.d != null) {
            this.d.cleanupLayout();
            this.d = null;
        }
        ki.a().a(this.b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gz
    public void onViewLoadTimeout() {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Integer.toString(bb.kNoNetworkConnectivity.z));
        ff.a(bc.EV_AD_WILL_CLOSE, hashMap, getContext(), getAdObject(), getAdController(), 0);
    }

    @Override // com.flurry.sdk.gz
    @SuppressLint({"InlinedApi"})
    public void initLayout() {
        String str;
        km.a(3, this.c, "initLayout: ad creative layout: {width = " + getCurrentAdFrame().d.f2515a + ", height = " + getCurrentAdFrame().d.b + ", adFrameIndex = " + getAdController().b.e + ", context = " + getContext() + "}");
        cleanupLayout();
        ki.a().a("com.flurry.android.impl.ads.views.AdViewEvent", this.b);
        Context context = getContext();
        removeAllViews();
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestLayout();
        switch (getCurrentBinding()) {
            case 1:
                if (this.f == null) {
                    getWebViewFactory().a();
                    hp webViewFactory = getWebViewFactory();
                    getAdObject();
                    webViewFactory.a(context, getCurrentAdFrame());
                    this.f = getWebViewFactory().c();
                    this.f.getSettings().setJavaScriptEnabled(true);
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f.getSettings().setMixedContentMode(0);
                    }
                    this.f.setVerticalScrollBarEnabled(false);
                    this.f.setHorizontalScrollBarEnabled(false);
                    this.f.setBackgroundColor(0);
                    this.f.clearCache(false);
                    this.j = new a(this, (byte) 0);
                    this.f.setWebChromeClient(this.j);
                    this.i = new b(this, (byte) 0);
                    this.f.setWebViewClient(this.i);
                }
                if (this.f2761a != null) {
                    b(this.f2761a);
                } else if (getAdFrameIndex() == 0 && (str = getAdController().b.i) != null) {
                    String c = mc.c(getCurrentDisplay());
                    this.f.loadDataWithBaseURL(c, str, "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, c);
                    if (getAdController().a(bc.EV_RENDERED.ag)) {
                        a(bc.EV_RENDERED, Collections.emptyMap(), getAdController(), 0);
                        getAdController().b(bc.EV_RENDERED.ag);
                    }
                    if (this.u) {
                        c("adLoadComplete");
                    }
                } else {
                    b(getCurrentDisplay());
                }
                this.f.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                dismissProgressDialog();
                if (d()) {
                    showProgressDialog();
                }
                e();
                return;
            case 2:
                fr b2 = getAdController().b(getAdFrameIndex());
                if (b2 != null) {
                    a(b2.a(), go.f2734a);
                    return;
                }
                if (this.f == null) {
                    getWebViewFactory().a();
                    hp webViewFactory2 = getWebViewFactory();
                    getAdObject();
                    webViewFactory2.a(context, getCurrentAdFrame());
                    this.f = getWebViewFactory().c();
                    this.f.getSettings().setJavaScriptEnabled(true);
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f.getSettings().setMixedContentMode(0);
                    }
                    this.f.getSettings().setLoadWithOverviewMode(true);
                    this.f.setVerticalScrollBarEnabled(false);
                    this.f.setHorizontalScrollBarEnabled(false);
                    this.f.setBackgroundColor(0);
                    this.f.clearCache(false);
                    this.j = new a(this, (byte) 0);
                    this.f.setWebChromeClient(this.j);
                    this.i = new b(this, (byte) 0);
                    this.f.setWebViewClient(this.i);
                }
                this.f.loadDataWithBaseURL("base://url/", getCurrentDisplay(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, "base://url/");
                if (getAdController().a(bc.EV_RENDERED.ag)) {
                    a(bc.EV_RENDERED, Collections.emptyMap(), getAdController(), 0);
                    getAdController().b(bc.EV_RENDERED.ag);
                }
                if (this.u) {
                    c("adLoadComplete");
                }
                this.f.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                dismissProgressDialog();
                if (d()) {
                    showProgressDialog();
                }
                e();
                return;
            case 3:
                a(getCurrentDisplay(), go.c);
                return;
            default:
                HashMap hashMap = new HashMap();
                hashMap.put("errorCode", Integer.toString(bb.kInvalidAdUnit.z));
                a(bc.EV_RENDER_FAILED, hashMap, getAdController(), 0);
                return;
        }
    }

    private void a(String str, int i) {
        if (str != null) {
            Context context = getContext();
            if (this.d == null) {
                this.d = gn.a(context, i, getAdObject(), this.B);
                this.d.setVideoUri(a(str));
                this.d.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.d.initLayout();
            }
            addView(this.d);
        }
    }

    private Uri a(String str) {
        Uri uri = null;
        try {
            km.a(3, this.c, "Precaching: Getting video from cache: " + str);
            ab abVar = i.a().i;
            File b2 = ab.b(getAdObject(), str);
            if (b2 != null) {
                uri = Uri.parse("file://" + b2.getAbsolutePath());
            }
        } catch (Exception e) {
            km.a(3, this.c, "Precaching: Error accessing cached file.", e);
        }
        if (uri == null) {
            km.a(3, this.c, "Precaching: Error using cached file. Loading with url: " + str);
            return Uri.parse(str);
        }
        return uri;
    }

    private void b(final String str) {
        ks ksVar = new ks();
        ksVar.f = str;
        ksVar.w = 10000;
        ksVar.d = new lh();
        ksVar.f2978a = new ks.a<Void, String>() { // from class: com.flurry.sdk.gy.5
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<Void, String> ksVar2, String str2) {
                final String str3 = str2;
                km.a(3, gy.this.c, "Prerender: HTTP status code is:" + ksVar2.p + " for url: " + str);
                if (ksVar2.c()) {
                    final String c = mc.c(str);
                    if (gy.this.getAdController().a(bc.EV_RENDERED.ag)) {
                        gy.this.a(bc.EV_RENDERED, Collections.emptyMap(), gy.this.getAdController(), 0);
                        gy.this.getAdController().b(bc.EV_RENDERED.ag);
                    }
                    jy.a().a(new ma() { // from class: com.flurry.sdk.gy.5.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            if (gy.this.f != null) {
                                gy.this.f.loadDataWithBaseURL(c, str3, "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, c);
                            }
                        }
                    });
                    return;
                }
                jy.a().a(new ma() { // from class: com.flurry.sdk.gy.5.2
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        HashMap hashMap = new HashMap();
                        hashMap.put("errorCode", Integer.toString(bb.kPrerenderDownloadFailed.z));
                        gy.this.a(bc.EV_RENDER_FAILED, hashMap, gy.this.getAdController(), 0);
                    }
                });
            }
        };
        jw.a().a((Object) this, (gy) ksVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f != null) {
            km.a(3, this.c, "Callcomplete " + str);
            this.f.loadUrl("javascript:flurryadapter.callComplete('" + str + "');");
        }
    }

    private void a(int i, int i2) {
        if (!(getContext() instanceof Activity)) {
            km.a(3, this.c, "no activity present");
            return;
        }
        Activity activity = (Activity) getContext();
        i.a().b.b(getContext());
        i.a().c.b(getContext());
        if (this.r != null) {
            km.a(3, this.c, "collapse(" + i + "," + i2 + ")");
            if (this.r != null && this.r.isShowing()) {
                this.r.hide();
                this.r.setOnDismissListener(null);
                this.r.dismiss();
            }
            this.r = null;
            fe.a(activity, this.q);
            if (this.s != null) {
                if (this.f != null && -1 != this.s.indexOfChild(this.f)) {
                    this.s.removeView(this.f);
                }
                this.s = null;
            }
            if (this.f != null && this.f.getParent() == null) {
                addView(this.f);
            }
        }
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public void onActivityResume() {
        ki.a().a("com.flurry.android.impl.ads.views.AdViewEvent", this.b);
        if (this.f != null && Build.VERSION.SDK_INT >= 11) {
            this.e = true;
            this.f.onResume();
        }
        if (this.d != null) {
            this.d.onActivityResume();
        }
        if (this.d != null) {
            this.e = true;
        }
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public void onActivityPause() {
        if (this.f != null && Build.VERSION.SDK_INT >= 11) {
            this.f.onPause();
        }
        if (this.d != null) {
            this.d.onActivityPause();
        }
        this.e = false;
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public void onActivityStop() {
        if (this.y != null && this.y.isShowing()) {
            this.y.dismiss();
            this.y = null;
        }
        if (this.d != null) {
            this.d.onActivityStop();
        }
        dismissProgressDialog();
    }

    @Override // com.flurry.sdk.gz
    @TargetApi(11)
    public void onActivityDestroy() {
        km.a(3, this.c, "onDestroy");
        if (this.y != null && this.y.isShowing()) {
            this.y.dismiss();
            this.y = null;
        }
        dismissProgressDialog();
        if (this.d != null) {
            this.d.onActivityDestroy();
        }
        if (this.f != null) {
            if (this.j != null) {
                this.j.onHideCustomView();
            }
            if (this.r != null) {
                a(0, 0);
            }
            this.x = false;
            cleanupLayout();
            removeView(this.f);
            this.f.stopLoading();
            if (Build.VERSION.SDK_INT >= 11) {
                this.f.onPause();
            }
            this.f.destroy();
            this.f = null;
            getWebViewFactory().a();
            this.k = null;
        }
    }

    public final void a(bc bcVar, Map<String, String> map, au auVar, int i) {
        km.a(3, this.c, "fireEvent(event=" + bcVar + ",params=" + map + ")");
        ff.a(bcVar, map, getContext(), getAdObject(), auVar, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentBinding() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return getCurrentFormat().equals(AdCreative.kFormatTakeover);
    }

    private cn getCurrentAdFrame() {
        return getAdController().d();
    }

    final boolean a(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent == this;
    }

    private void e() {
        int a2;
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (d() && -1 != (a2 = fe.a(activity, getAdUnit().y))) {
                fe.b(activity, a2);
            }
        }
    }

    public void setMraidButtonVisibility(boolean z) {
        if (this.z != null) {
            if (z) {
                this.z.setVisibility(0);
            } else {
                this.z.setVisibility(4);
            }
        }
    }

    static /* synthetic */ void a(gy gyVar, ha haVar) {
        km.a(6, gyVar.c, "show Video dialog.");
        final com.flurry.sdk.a aVar = haVar.b;
        final int i = haVar.c;
        if (gyVar.y != null) {
            km.a(6, gyVar.c, "Already showing a dialog.");
        } else if (!gyVar.isViewAttachedToActivity()) {
            km.a(6, gyVar.c, "View not attached to any window.");
        } else {
            AlertDialog.Builder builder = new AlertDialog.Builder(gyVar.getContext());
            String a2 = aVar.a(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
            String a3 = aVar.a("confirmDisplay");
            String a4 = aVar.a("cancelDisplay");
            if (TextUtils.isEmpty(a2) || TextUtils.isEmpty(a3) || TextUtils.isEmpty(a4)) {
                a2 = "Are you sure?";
                a3 = "Cancel";
                a4 = "OK";
            }
            builder.setMessage(a2);
            builder.setCancelable(false);
            builder.setPositiveButton(a4, new DialogInterface.OnClickListener() { // from class: com.flurry.sdk.gy.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("sourceEvent", aVar.c.f2471a.ag);
                    gy.this.a(bc.EV_USER_CONFIRMED, hashMap, gy.this.getAdController(), i + 1);
                    if (dialogInterface != null && gy.this.isViewAttachedToActivity()) {
                        dialogInterface.dismiss();
                        if (dialogInterface == gy.this.y) {
                            gy.this.y = null;
                            km.a(3, gy.this.c, "Setting fAlertDialog to null.");
                        }
                    }
                }
            });
            builder.setNegativeButton(a3, new DialogInterface.OnClickListener() { // from class: com.flurry.sdk.gy.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("sourceEvent", aVar.c.f2471a.ag);
                    gy.this.a(bc.EV_USER_CANCELLED, hashMap, gy.this.getAdController(), i + 1);
                    if (dialogInterface != null && gy.this.isViewAttachedToActivity()) {
                        dialogInterface.dismiss();
                        if (dialogInterface == gy.this.y) {
                            gy.this.y = null;
                            km.a(3, gy.this.c, "Setting fAlertDialog to null.");
                        }
                    }
                    if (gy.this.d == null) {
                        return;
                    }
                    gy.this.d.a(gy.this.getAdController().f().f2735a);
                }
            });
            if (gyVar.d == null || !gyVar.isViewAttachedToActivity()) {
                return;
            }
            gyVar.y = builder.create();
            gyVar.y.show();
            gyVar.d.w();
        }
    }

    static /* synthetic */ void a(gy gyVar) {
        km.a(3, gyVar.c, "closing ad unity view");
        if (gyVar.d != null) {
            gyVar.d.A();
        }
        gyVar.onViewClose();
    }

    static /* synthetic */ void a(gy gyVar, com.flurry.sdk.a aVar) {
        int i = gyVar.getCurrentAdFrame().d.f2515a;
        int i2 = gyVar.getCurrentAdFrame().d.b;
        int b2 = lw.b(i);
        int b3 = lw.b(i2);
        if (gyVar.f2761a != null) {
            gyVar.f2761a = null;
            gyVar.initLayout();
        }
        r rVar = aVar.c.d;
        if (!(rVar instanceof s) || ((s) rVar).u() == null) {
            return;
        }
        gyVar.a(b2, b3);
    }

    static /* synthetic */ void b(gy gyVar, com.flurry.sdk.a aVar) {
        int i = lw.b().x;
        int i2 = lw.b().y;
        km.a(3, gyVar.c, "expand to width = " + i + " height = " + i2);
        r rVar = aVar.c.d;
        au auVar = aVar.c.e;
        if ((rVar instanceof s) && ((s) rVar).u() != null) {
            gyVar.a(bc.EV_CLICKED, Collections.emptyMap(), auVar, 0);
            if (!(gyVar.getContext() instanceof Activity)) {
                km.a(3, gyVar.c, "no activity present");
            } else {
                Activity activity = (Activity) gyVar.getContext();
                if (gyVar.r == null) {
                    km.a(3, gyVar.c, "expand(" + i + "," + i2 + ")");
                    i.a().b.a(gyVar.getContext());
                    i.a().c.a(gyVar.getContext());
                    if (gyVar.f != null && -1 != gyVar.indexOfChild(gyVar.f)) {
                        gyVar.removeView(gyVar.f);
                    }
                    gyVar.q = activity.getRequestedOrientation();
                    if (gyVar.s == null) {
                        gyVar.s = new FrameLayout(activity);
                        gyVar.s.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                        if (gyVar.f != null && gyVar.f.getParent() == null) {
                            gyVar.s.addView(gyVar.f, new FrameLayout.LayoutParams(-1, -1, 17));
                        }
                    }
                    if (gyVar.r == null) {
                        gyVar.r = new Dialog(activity, 16973834);
                        fq.a(gyVar.r.getWindow());
                        gyVar.r.setContentView(gyVar.s, new ViewGroup.LayoutParams(-1, -1));
                        gyVar.r.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.flurry.sdk.gy.6
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                km.a(3, gy.this.c, "extendedWebViewDialog.onDismiss()");
                                if (gy.this.f != null) {
                                    gy.this.f.loadUrl("javascript:if(window.mraid){window.mraid.close();};");
                                }
                            }
                        });
                        gyVar.r.setCancelable(true);
                        gyVar.r.show();
                    }
                    if (gyVar.w) {
                        if (gyVar.d()) {
                            fe.a(activity, 1);
                        } else if (gyVar.getAdObject() instanceof s) {
                            fe.a(activity);
                        }
                    } else {
                        fe.b(activity, fe.a());
                    }
                }
            }
        }
        if (!aVar.c.b.containsKey("url")) {
            return;
        }
        gyVar.f2761a = aVar.c.b.get("url");
        auVar.j();
        fo.a(gyVar.getContext(), gyVar.f2761a, rVar);
    }

    static /* synthetic */ void p(gy gyVar) {
        km.a(3, gyVar.c, "activateFlurryJsEnv");
        String currentContent = gyVar.getCurrentContent();
        if (currentContent == null || currentContent.length() <= 0 || currentContent.equals("{}")) {
            return;
        }
        String url = gyVar.f.getUrl();
        String b2 = mc.b(url);
        String a2 = mc.a(b2, url);
        if (!TextUtils.isEmpty(a2) && !a2.equals(b2)) {
            km.a(3, gyVar.c, "content before {{mustached}} tags replacement = '" + currentContent + "'");
            currentContent = currentContent.replace(b2, a2);
            km.a(3, gyVar.c, "content after {{mustached}} tags replacement = '" + currentContent + "'");
        }
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:");
        sb.append("(function(){");
        sb.append("if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code='var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text('\"'+esc(tree[i])+'\"')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,0,'+start+\",\"+end+',\"'+tags+'\")){_.rs(c,p,function(c,p,_){'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}");
        sb.append("if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}");
        sb.append("if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();} }");
        String g = ly.g(currentContent);
        sb.append("var content='");
        sb.append(g);
        sb.append("';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;");
        sb.append("})();");
        if (gyVar.f == null) {
            return;
        }
        gyVar.f.loadUrl(sb.toString());
    }

    static /* synthetic */ void r(gy gyVar) {
        gyVar.f.loadUrl("javascript:(function() { document.getElementById('flurry_interstitial_close').style.display = 'none'; })()");
    }

    static /* synthetic */ void s(gy gyVar) {
        if (!gyVar.d() || gyVar.A) {
            return;
        }
        gyVar.A = true;
        gyVar.z = new cm(gyVar.getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        gyVar.z.setDefaultLayoutParams(layoutParams);
        gyVar.z.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gy.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                gy.this.a(bc.EV_AD_WILL_CLOSE, Collections.emptyMap(), gy.this.getAdController(), 0);
            }
        });
        gyVar.setMraidButtonVisibility(true);
        gyVar.addView(gyVar.z);
    }
}
