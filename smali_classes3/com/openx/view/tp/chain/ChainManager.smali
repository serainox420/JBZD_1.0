.class public Lcom/openx/view/tp/chain/ChainManager;
.super Ljava/lang/Object;
.source "ChainManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChainManager"

.field public static testDeviceIds:[Ljava/lang/String;


# instance fields
.field private final MAX_TIMEOUT:J

.field private final MIN_TIMEOUT:J

.field private final RTYPE_CLICK:Ljava/lang/String;

.field private final RTYPE_DEFAULT:Ljava/lang/String;

.field private final RTYPE_IMPRESSION:Ljava/lang/String;

.field private final RTYPE_REQUEST:Ljava/lang/String;

.field private adContainer:Landroid/view/ViewGroup;

.field private adEventsListener:Lcom/openx/view/AdEventsListener;

.field private adType:Lcom/openx/model/AdType;

.field private adapterManager:Lcom/openx/view/tp/adapters/AdapterManager;

.field public chainIndex:I

.field private chainResponse:Lcom/openx/view/tp/chain/parser/ChainResponse;

.field private clickTracked:Z

.field private context:Landroid/content/Context;

.field private currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

.field private currentChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

.field private lastAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

.field private lastLoadAttempt:J

.field private sdk:Lcom/openx/view/tp/chain/SDK;

.field public sdkAdEventsListener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

.field private stopped:Z

.field private timeout:J

.field private timeoutHandler:Landroid/os/Handler;

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/openx/view/AdEventsListener;Lcom/openx/model/AdType;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x2710

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ri"

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->RTYPE_IMPRESSION:Ljava/lang/String;

    .line 33
    const-string v0, "rc"

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->RTYPE_CLICK:Ljava/lang/String;

    .line 34
    const-string v0, "rr"

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->RTYPE_REQUEST:Ljava/lang/String;

    .line 35
    const-string v0, "rdf"

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->RTYPE_DEFAULT:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    .line 40
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->MAX_TIMEOUT:J

    .line 41
    iput-wide v2, p0, Lcom/openx/view/tp/chain/ChainManager;->MIN_TIMEOUT:J

    .line 43
    iput-wide v2, p0, Lcom/openx/view/tp/chain/ChainManager;->timeout:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastLoadAttempt:J

    .line 64
    iput-object p1, p0, Lcom/openx/view/tp/chain/ChainManager;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    .line 66
    iput-object p3, p0, Lcom/openx/view/tp/chain/ChainManager;->adEventsListener:Lcom/openx/view/AdEventsListener;

    .line 67
    iput-object p4, p0, Lcom/openx/view/tp/chain/ChainManager;->adType:Lcom/openx/model/AdType;

    .line 69
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/tp/chain/ChainManager;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/openx/view/tp/chain/ChainManager;->stopped:Z

    return v0
.end method

.method static synthetic access$002(Lcom/openx/view/tp/chain/ChainManager;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/openx/view/tp/chain/ChainManager;->stopped:Z

    return p1
.end method

.method static synthetic access$100(Lcom/openx/view/tp/chain/ChainManager;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastLoadAttempt:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/openx/view/tp/chain/ChainManager;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/openx/view/tp/chain/ChainManager;->lastLoadAttempt:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/openx/view/tp/chain/ChainManager;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeout:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/chain/parser/ChainResponse;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/adapters/AdapterBase;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/view/tp/chain/ChainManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/view/tp/chain/ChainManager;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/openx/view/tp/chain/ChainManager;->clickTracked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/openx/view/tp/chain/ChainManager;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/openx/view/tp/chain/ChainManager;->clickTracked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/model/AdType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adType:Lcom/openx/model/AdType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/openx/view/tp/chain/ChainManager;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/openx/view/tp/chain/ChainManager;->showBanner(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/openx/view/tp/chain/ChainManager;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private checkForTimeouts()V
    .locals 4

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/tp/chain/ChainManager;->stopped:Z

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastLoadAttempt:J

    .line 481
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    const-string v0, "ChainManager"

    const-string v1, "removing callbacks: checking for timeout "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    return-void
.end method

.method private destroyTPViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 340
    :cond_0
    return-void
.end method

.method private getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->chainResponse:Lcom/openx/view/tp/chain/parser/ChainResponse;

    return-object v0
.end method

.method private getSDK(Ljava/lang/String;)Lcom/openx/view/tp/chain/SDK;
    .locals 2

    .prologue
    .line 412
    if-eqz p1, :cond_5

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mopub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    .line 433
    :goto_0
    return-object v0

    .line 417
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "millennialmedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adcolony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->AdColony:Lcom/openx/view/tp/chain/SDK;

    goto :goto_0

    .line 426
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    goto :goto_0

    .line 429
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inmobi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    goto :goto_0

    .line 433
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 87
    new-instance v0, Lcom/openx/view/tp/chain/ChainManager$1;

    invoke-direct {v0, p0}, Lcom/openx/view/tp/chain/ChainManager$1;-><init>(Lcom/openx/view/tp/chain/ChainManager;)V

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutRunnable:Ljava/lang/Runnable;

    .line 117
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->setSDKAdEventsListener()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/openx/view/tp/adapters/AdapterManager;

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/openx/view/tp/chain/ChainManager;->sdkAdEventsListener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    iget-object v4, p0, Lcom/openx/view/tp/chain/ChainManager;->adType:Lcom/openx/model/AdType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/openx/view/tp/adapters/AdapterManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/openx/view/tp/chain/SDKAdEventsListener;Lcom/openx/model/AdType;)V

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adapterManager:Lcom/openx/view/tp/adapters/AdapterManager;

    .line 123
    return-void
.end method

.method private setSDKAdEventsListener()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/openx/view/tp/chain/ChainManager$2;

    invoke-direct {v0, p0}, Lcom/openx/view/tp/chain/ChainManager$2;-><init>(Lcom/openx/view/tp/chain/ChainManager;)V

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->sdkAdEventsListener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    .line 247
    return-void
.end method

.method private showBanner(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 269
    :goto_0
    const-string v0, "ri"

    invoke-virtual {p0, v0}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/openx/view/tp/chain/ChainManager;->destroyAdViews()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 290
    :cond_1
    return-void

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 267
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 455
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/tp/chain/ChainManager;->clickTracked:Z

    .line 456
    invoke-virtual {p0}, Lcom/openx/view/tp/chain/ChainManager;->stopTimeout()V

    .line 458
    return-void
.end method

.method public destroyAdViews()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 309
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 318
    invoke-direct {p0, v2}, Lcom/openx/view/tp/chain/ChainManager;->destroyTPViews(Landroid/view/View;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    const-string v0, "ChainManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT BEFORE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 329
    :cond_1
    const-string v0, "ChainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUNT AFTER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public loadThirdPartyAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 3

    .prologue
    .line 346
    iput-object p1, p0, Lcom/openx/view/tp/chain/ChainManager;->currentChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    .line 348
    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->networkUid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/openx/view/tp/chain/ChainManager;->getSDK(Ljava/lang/String;)Lcom/openx/view/tp/chain/SDK;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    .line 364
    :cond_0
    :goto_0
    const-string v0, "ChainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadThirdPartyAd....INDEX is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the sdk is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget v0, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    .line 368
    const-string v0, "rr"

    invoke-virtual {p0, v0}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    .line 370
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->adapterManager:Lcom/openx/view/tp/adapters/AdapterManager;

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    invoke-virtual {v0, v1, p1}, Lcom/openx/view/tp/adapters/AdapterManager;->loadAdSDK(Lcom/openx/view/tp/chain/SDK;Lcom/openx/view/tp/chain/parser/ChainItem;)Lcom/openx/view/tp/adapters/AdapterBase;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    .line 372
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdColony:Lcom/openx/view/tp/chain/SDK;

    if-ne v0, v1, :cond_5

    .line 378
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeout:J

    .line 385
    :goto_1
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->checkForTimeouts()V

    .line 407
    :cond_1
    :goto_2
    return-void

    .line 353
    :cond_2
    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/openx/view/tp/chain/parser/ChainItem;->getHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 355
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    goto :goto_0

    .line 358
    :cond_4
    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    const-string v1, "apihtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->mediationUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->AdNetwork:Lcom/openx/view/tp/chain/SDK;

    iput-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    goto/16 :goto_0

    .line 382
    :cond_5
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeout:J

    goto :goto_1

    .line 390
    :cond_6
    const-string v0, "SDK_NOT_EXIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->sdk:Lcom/openx/view/tp/chain/SDK;

    invoke-virtual {v2}, Lcom/openx/view/tp/chain/SDK;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "send rdf: not exists..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "rdf"

    invoke-virtual {p0, v0}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/openx/view/tp/chain/ChainManager;->getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-virtual {p0, v0}, Lcom/openx/view/tp/chain/ChainManager;->loadThirdPartyAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V

    goto/16 :goto_2
.end method

.method public record(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Lcom/openx/core/network/GetNetworkTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openx/core/network/GetNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 297
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager;->currentChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget-object v2, v2, Lcom/openx/view/tp/chain/parser/ChainItem;->transactionUrl:Ljava/lang/String;

    const-string v3, "{rtype}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 300
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 302
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/openx/core/network/GetNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 304
    return-void
.end method

.method public setChainResponse(Lcom/openx/view/tp/chain/parser/ChainResponse;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/openx/view/tp/chain/ChainManager;->chainResponse:Lcom/openx/view/tp/chain/parser/ChainResponse;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    .line 77
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 440
    const-string v0, "ri"

    invoke-virtual {p0, v0}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->currentAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 444
    return-void
.end method

.method public stopTimeout()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/tp/chain/ChainManager;->lastLoadAttempt:J

    .line 469
    const-string v0, "ChainManager"

    const-string v1, "removing callbacks 1111 : cleanup"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    return-void
.end method
