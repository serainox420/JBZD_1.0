.class public Lcom/mopub/mobileads/VastVideoConfig;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private p:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/mopub/mobileads/g;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field private x:Lcom/mopub/mobileads/VideoViewabilityTracker;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->w:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->q:Ljava/util/Map;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->s:Z

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILjava/lang/Integer;)V
    .locals 5

    .prologue
    .line 455
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 465
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/mopub/mobileads/VastVideoConfig$1;-><init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addAbsoluteTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "absoluteTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 121
    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "closeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "completeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "impressionTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "pauseTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "resumeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "skipTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-void
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->w:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemainingProgressTrackerCount()I
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 663
    invoke-virtual {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResumeTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkipOffsetMillis(I)Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 675
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 689
    :goto_0
    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_3

    move-object v0, v1

    .line 700
    :cond_0
    :goto_1
    return-object v0

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Strings;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 682
    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 684
    :cond_2
    const-string v1, "Invalid VAST skipoffset format: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 696
    :catch_0
    move-exception v1

    .line 697
    const-string v1, "Failed to parse skipoffset %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 693
    :cond_3
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public getSkipOffsetString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSocialActionsCompanionAds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->q:Ljava/util/Map;

    return-object v0
.end method

.method public getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 623
    if-lez p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkArgument(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 624
    int-to-float v0, p1

    int-to-float v2, p2

    div-float v4, v0, v2

    .line 625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 627
    new-instance v5, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const-string v0, ""

    invoke-direct {v5, v0, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    .line 628
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v1

    .line 629
    :goto_1
    if-ge v3, v6, :cond_0

    .line 630
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .line 631
    invoke-virtual {v0, v5}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v7

    if-lez v7, :cond_3

    .line 639
    :cond_0
    new-instance v3, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    const-string v0, ""

    invoke-direct {v3, v0, v4}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    .line 640
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 641
    :goto_2
    if-ge v1, v4, :cond_1

    .line 642
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    .line 643
    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result v5

    if-lez v5, :cond_5

    :cond_1
    move-object v0, v2

    .line 653
    :goto_3
    return-object v0

    :cond_2
    move v0, v1

    .line 623
    goto :goto_0

    .line 634
    :cond_3
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isTracked()Z

    move-result v7

    if-nez v7, :cond_4

    .line 635
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 646
    :cond_5
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->isTracked()Z

    move-result v5

    if-nez v5, :cond_6

    .line 647
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 653
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method public getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 1

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 323
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->o:Lcom/mopub/mobileads/VastCompanionAdConfig;

    :goto_0
    return-object v0

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->p:Lcom/mopub/mobileads/VastCompanionAdConfig;

    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->o:Lcom/mopub/mobileads/VastCompanionAdConfig;

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/g;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->r:Lcom/mopub/mobileads/g;

    return-object v0
.end method

.method public getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->x:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-object v0
.end method

.method public handleClickForResult(Landroid/app/Activity;II)V
    .locals 1

    .prologue
    .line 428
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->a(Landroid/content/Context;ILjava/lang/Integer;)V

    .line 429
    return-void
.end method

.method public handleClickWithoutResult(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->a(Landroid/content/Context;ILjava/lang/Integer;)V

    .line 441
    return-void
.end method

.method public handleClose(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 570
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 577
    return-void
.end method

.method public handleComplete(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 586
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 594
    return-void
.end method

.method public handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V
    .locals 3

    .prologue
    .line 605
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, p2, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 613
    return-void
.end method

.method public handleImpression(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 407
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 415
    return-void
.end method

.method public handlePause(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 544
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method public handleResume(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 527
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 535
    return-void
.end method

.method public hasCompanionAd()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->o:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->p:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomForceOrientationSet()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->z:Z

    return v0
.end method

.method public isRewardedVideo()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->s:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->v:Ljava/lang/String;

    .line 216
    :cond_0
    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->t:Ljava/lang/String;

    .line 204
    :cond_0
    return-void
.end method

.method public setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V
    .locals 1

    .prologue
    .line 219
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    if-eq p1, v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->w:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->z:Z

    .line 223
    :cond_0
    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->u:Ljava/lang/String;

    .line 210
    :cond_0
    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->m:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setDspCreativeId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setIsRewardedVideo(Z)V
    .locals 0

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->s:Z

    .line 239
    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    .line 229
    :cond_0
    return-void
.end method

.method public setSocialActionsCompanionAds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->q:Ljava/util/Map;

    .line 194
    return-void
.end method

.method public setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->o:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 188
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig;->p:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 189
    return-void
.end method

.method public setVastIconConfig(Lcom/mopub/mobileads/g;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->r:Lcom/mopub/mobileads/g;

    .line 198
    return-void
.end method

.method public setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V
    .locals 0

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->x:Lcom/mopub/mobileads/VideoViewabilityTracker;

    .line 235
    :cond_0
    return-void
.end method
