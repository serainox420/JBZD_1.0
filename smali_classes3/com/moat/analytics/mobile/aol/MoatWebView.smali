.class Lcom/moat/analytics/mobile/aol/MoatWebView;
.super Ljava/lang/Object;
.source "MoatWebView.java"


# static fields
.field private static final MAX_ITERATIONS:I = 0xc8

.field private static final MAX_JS_URL_LENGTH:I = 0x7d0

.field private static final MMAK_CONTAINER:Ljava/lang/String; = "mianahwvc"

.field private static final TAG:Ljava/lang/String; = "MoatWebView"

.field private static final WV_HTML:Ljava/lang/String; = "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"


# instance fields
.field protected final activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private didShutdown:Z

.field private final dispatchQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field private final partnerCode:Ljava/lang/String;

.field private targetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final trackerName:Ljava/lang/String;

.field protected viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

.field private webView:Landroid/webkit/WebView;

.field private webViewReady:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/ActivityState;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->partnerCode:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 80
    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    .line 82
    const-string v0, "_moatTracker%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->trackerName:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    .line 85
    iput-boolean v6, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webViewReady:Z

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p3}, Lcom/moat/analytics/mobile/aol/ActivityState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->context:Ljava/lang/ref/WeakReference;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/moat/analytics/mobile/aol/MoatWebView;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webViewReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/moat/analytics/mobile/aol/MoatWebView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webViewReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/moat/analytics/mobile/aol/MoatWebView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->targetView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/moat/analytics/mobile/aol/MoatWebView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->targetView:Ljava/lang/ref/WeakReference;

    .line 150
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    invoke-interface {v0, p1}, Lcom/moat/analytics/mobile/aol/ViewTracker;->changeTargetView(Landroid/view/View;)V

    .line 153
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->didShutdown:Z

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/ViewTracker;->stopTracking()V

    .line 226
    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 231
    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    .line 233
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->didShutdown:Z

    .line 235
    :cond_2
    return-void
.end method

.method public dispatchJSCall(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-boolean v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webViewReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "javascript:%s.dispatchEvent(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->trackerName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method flushDispatchQueue()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    const/16 v9, 0xc8

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_2

    .line 177
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v2, v1

    .line 178
    :goto_0
    if-ge v2, v5, :cond_0

    .line 179
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0xc8

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    add-int/lit16 v0, v0, 0xc8

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    .line 184
    :goto_1
    if-ge v0, v2, :cond_1

    .line 185
    iget-object v5, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 192
    :goto_3
    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v0, v9, :cond_6

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 194
    const-string v5, "javascript:%s.dispatchMany([%s])"

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    .line 197
    :goto_4
    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-ge v0, v9, :cond_3

    .line 198
    add-int/lit8 v4, v0, 0x1

    .line 199
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_4

    move v0, v4

    .line 211
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->trackerName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p0, v2}, Lcom/moat/analytics/mobile/aol/MoatWebView;->setWebViewUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 204
    :cond_4
    iget-object v7, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 205
    if-eqz v2, :cond_5

    move v2, v1

    .line 209
    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    .line 210
    goto :goto_4

    .line 208
    :cond_5
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 215
    return-void
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "MoatWebView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void
.end method

.method setWebViewUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public startTracking(Landroid/view/View;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->targetView:Ljava/lang/ref/WeakReference;

    .line 95
    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    .line 97
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 100
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 102
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 105
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 108
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 109
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 111
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 112
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/aol/MoatWebView$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/aol/MoatWebView$1;-><init>(Lcom/moat/analytics/mobile/aol/MoatWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 133
    const-string v1, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mianahwvc"

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    const-string v4, "mianahwvc"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->trackerName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->partnerCode:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/16 v0, 0x8

    aput-object p5, v2, v0

    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView;->webView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method
