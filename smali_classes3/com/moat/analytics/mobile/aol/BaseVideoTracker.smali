.class abstract Lcom/moat/analytics/mobile/aol/BaseVideoTracker;
.super Ljava/lang/Object;
.source "BaseVideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final AD_DURATION_KEY:Ljava/lang/String; = "duration"

.field protected static final AD_HEIGHT_KEY:Ljava/lang/String; = "height"

.field protected static final AD_WIDTH_KEY:Ljava/lang/String; = "width"

.field private static final MS_TO_COMPLETION_TOLERANCE:D = 750.0

.field private static final PC_TO_COMPLETION_TOLERANCE:D = 0.05

.field protected static final QUARTILE_EVENTS:[Lcom/moat/analytics/mobile/aol/MoatAdEventType;

.field private static final TAG:Ljava/lang/String; = "MoatVideoTracker"


# instance fields
.field protected final activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

.field protected ad:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TPlayerOrIMAAd;>;"
        }
    .end annotation
.end field

.field protected adIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field protected debug:Z

.field private didShutdown:Z

.field protected final handler:Landroid/os/Handler;

.field private moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

.field protected final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field protected final oneTimeEventsDispatched:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/aol/MoatAdEventType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected vidView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    const/4 v1, 0x0

    sget-object v2, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->QUARTILE_EVENTS:[Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 66
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    .line 68
    const-string v0, "Initializing."

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-direct {v0, p1, p3, p2}, Lcom/moat/analytics/mobile/aol/MoatWebView;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/ActivityState;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->handler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p2}, Lcom/moat/analytics/mobile/aol/ActivityState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->context:Ljava/lang/ref/WeakReference;

    .line 75
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->didShutdown:Z

    .line 76
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->debug:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/moat/analytics/mobile/aol/BaseVideoTracker;)Lcom/moat/analytics/mobile/aol/MoatWebView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/moat/analytics/mobile/aol/BaseVideoTracker;Lcom/moat/analytics/mobile/aol/MoatWebView;)Lcom/moat/analytics/mobile/aol/MoatWebView;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

    return-object p1
.end method

.method private convertOldStyleEvent(Ljava/util/Map;)Lcom/moat/analytics/mobile/aol/MoatAdEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/moat/analytics/mobile/aol/MoatAdEvent;"
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->fromString(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    move-result-object v2

    .line 162
    const-string v0, "playHead"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "playHead"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 168
    :goto_0
    const-string v0, "adVolume"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "adVolume"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 173
    :goto_1
    new-instance v3, Lcom/moat/analytics/mobile/aol/MoatAdEvent;

    invoke-direct {v3, v2, v1, v0}, Lcom/moat/analytics/mobile/aol/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-object v3

    .line 165
    :cond_0
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->TIME_UNAVAILABLE:Ljava/lang/Integer;

    move-object v1, v0

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    goto :goto_1
.end method

.method private dispatchEventUnsafe(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 194
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->formatAndCheckEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    const-string v1, "Received event: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/MoatWebView;->dispatchJSCall(Lorg/json/JSONObject;)V

    .line 200
    iget-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 201
    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->shutDown()V

    .line 207
    :cond_1
    return-void
.end method

.method private getVideoVolume(Landroid/media/AudioManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v1, "MoatVideoTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing view to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->vidView:Ljava/lang/ref/WeakReference;

    .line 139
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/aol/MoatWebView;->changeTargetView(Landroid/view/View;)V

    .line 140
    return-void

    .line 136
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)V
    .locals 1

    .prologue
    .line 186
    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->dispatchEventUnsafe(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public dispatchEvent(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->convertOldStyleEvent(Ljava/util/Map;)Lcom/moat/analytics/mobile/aol/MoatAdEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->dispatchEventUnsafe(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected formatAndCheckEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adVolume:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->getVideoVolumeOfMax()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adVolume:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 150
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adVolume:Ljava/lang/Double;

    goto :goto_0
.end method

.method protected abstract getAdData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method

.method protected getVideoVolumeOfMax()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 237
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->getVideoVolume(Landroid/media/AudioManager;)I

    move-result v1

    .line 238
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 239
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method protected isDonePlayBack()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 244
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNearCompletion(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 8

    .prologue
    .line 255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 256
    const-wide v2, 0x4087700000000000L    # 750.0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 257
    int-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->debug:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const-string v0, "MoatVideoTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->debug:Z

    .line 81
    return-void
.end method

.method protected shutDown()V
    .locals 4

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->didShutdown:Z

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;-><init>(Lcom/moat/analytics/mobile/aol/BaseVideoTracker;)V

    .line 225
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->didShutdown:Z

    .line 228
    :cond_0
    return-void
.end method

.method protected startTracking()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->getAdData()Ljava/util/Map;

    move-result-object v0

    .line 125
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 126
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 127
    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 129
    const-string v0, "Player metadata: height = %d, width = %d, duration = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->moatWebView:Lcom/moat/analytics/mobile/aol/MoatWebView;

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->vidView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->adIds:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/moat/analytics/mobile/aol/MoatWebView;->startTracking(Landroid/view/View;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 132
    return-void
.end method

.method public trackVideoAd(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TPlayerOrIMAAd;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    .line 86
    if-nez p1, :cond_0

    .line 87
    :try_start_0
    const-string v1, "trackVideoAd received null adIds object. Not tracking."

    invoke-virtual {p0, v1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    move v1, v0

    .line 90
    :cond_0
    if-nez p3, :cond_1

    .line 93
    const-string v2, "trackVideoAd received null video view instance"

    invoke-virtual {p0, v2}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 96
    const-string v1, "trackVideoAd received null ad instance. Not tracking."

    invoke-virtual {p0, v1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    move v1, v0

    .line 100
    :cond_2
    if-eqz v1, :cond_3

    .line 101
    const-string v3, "trackVideoAd tracking ids: %s | ad: %s | view: %s"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 102
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    if-eqz p3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v5

    .line 101
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->adIds:Ljava/util/Map;

    .line 107
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->ad:Ljava/lang/ref/WeakReference;

    .line 108
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->vidView:Ljava/lang/ref/WeakReference;

    .line 110
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->startTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 116
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to start tracking ad was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_5

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "successful."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 117
    return v0

    .line 104
    :cond_4
    :try_start_1
    const-string v2, "null"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 114
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 116
    :cond_5
    const-string v1, "un"

    goto :goto_2
.end method
