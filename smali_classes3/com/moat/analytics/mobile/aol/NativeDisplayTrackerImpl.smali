.class Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;
.super Ljava/lang/Object;
.source "NativeDisplayTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;
    }
.end annotation


# static fields
.field private static final MOAT_IN_APP_NATIVE_AD_HEADLESS_WEB_VIEW_CONTAINER:Ljava/lang/String; = "mianahwvc"

.field private static final TAG:Ljava/lang/String; = "MoatNativeDispTracker"


# instance fields
.field private didShutdown:Z

.field private moat:Landroid/webkit/WebView;

.field private final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field private final partnerCode:Ljava/lang/String;

.field private viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p4}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "MoatNativeDispTracker"

    const-string v1, "Initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->partnerCode:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    .line 57
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 61
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 62
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 63
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 64
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 65
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 66
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 69
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 70
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 72
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 73
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 76
    :cond_2
    iput-object p4, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 77
    new-instance v0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    .line 78
    iput-boolean v6, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->didShutdown:Z

    .line 79
    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "MoatNativeDispTracker"

    const-string v1, "id = %s, message = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void
.end method

.method private static nativeTrackingHtml(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n    <meta charset=\"UTF-8\">\n    <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n<div id=\"mianahwvc\" style=\"width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px;height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px;\">\n    <script src=\"https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/moatad.js#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" type=\"text/javascript\"></script>\n</div>\n</body>\n</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shutDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->didShutdown:Z

    if-nez v0, :cond_0

    .line 146
    const-string v0, "Shutting down."

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->logMessage(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/ViewTracker;->stopTracking()V

    .line 148
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 150
    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    .line 151
    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->didShutdown:Z

    .line 154
    :cond_0
    return-void
.end method

.method private static toAdIdParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 108
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move v1, v0

    .line 109
    :goto_0
    if-ge v1, v5, :cond_1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moatClientLevel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    :goto_1
    if-ge v0, v5, :cond_3

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moatClientSlicer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 123
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 130
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public stopTracking()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "Called stopTracking."

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->logMessage(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->shutDown()V

    .line 142
    return-void
.end method

.method public track(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 85
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    const-string v1, "adIdMap is null or empty. Shutting down."

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->logMessage(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->shutDown()V

    .line 104
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/aol/ViewTracker;->track()Z

    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/aol/ViewTracker;->getAdViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 94
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 95
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->toAdIdParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed ad ids = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->logMessage(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->partnerCode:Ljava/lang/String;

    invoke-static {v2, v1, v4, v3}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->nativeTrackingHtml(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->moat:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to start tracking ad was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "successful."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 103
    :cond_3
    const-string v1, "un"

    goto :goto_2
.end method
