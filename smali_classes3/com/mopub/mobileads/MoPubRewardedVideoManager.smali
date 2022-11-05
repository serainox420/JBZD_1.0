.class public Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$a;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x1

.field private static a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/mopub/mobileads/AdRequestStatusMapping;

.field private final f:Lcom/mopub/mobileads/c;

.field private g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->c:Ljava/lang/ref/WeakReference;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/mopub/mobileads/c;

    invoke-direct {v0}, Lcom/mopub/mobileads/c;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b:Landroid/os/Handler;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->h:Ljava/util/Set;

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->h:Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->i:Ljava/util/Map;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->j:Landroid/os/Handler;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->k:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-direct {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 124
    return-void
.end method

.method static a(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    :goto_1
    move-object p1, p0

    goto :goto_0

    :cond_1
    move-object p0, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    return-object v0
.end method

.method static synthetic a()Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private a(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/mopub/mobileads/AdRequestStatusMapping;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_4

    .line 345
    :cond_0
    const/16 v0, 0x7530

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v3

    .line 350
    if-nez v3, :cond_1

    .line 351
    const-string v0, "Couldn\'t create custom event, class name was null."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 425
    :goto_1
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/c;->a(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->d()V

    .line 366
    :cond_2
    :try_start_0
    const-class v0, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    invoke-static {v3, v0}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    .line 372
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 373
    const-string v1, "com_mopub_ad_unit_id"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "Rewarded-Video-Currency-Name"

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "Rewarded-Video-Currency-Value-String"

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "mopub-intent-ad-report"

    new-instance v5, Lcom/mopub/common/AdReport;

    iget-object v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v6

    invoke-direct {v5, p2, v6, p1}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "broadcastIdentifier"

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "Rewarded-Video-Customer-Id"

    iget-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v5}, Lcom/mopub/mobileads/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p2, v5, v6}, Lcom/mopub/mobileads/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCompletionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/mopub/mobileads/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 391
    if-nez v1, :cond_3

    .line 392
    const-string v0, "Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded videos."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/AdRequestStatusMapping;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Couldn\'t create custom event with class name %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_1

    .line 402
    :cond_3
    :try_start_1
    new-instance v5, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;

    invoke-direct {v5, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/mobileads/CustomEventRewardedVideo;)V

    .line 411
    iget-object v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->j:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->k:Ljava/util/Map;

    invoke-interface {v2, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->a(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 417
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->a()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;

    move-result-object v1

    .line 419
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->c()Ljava/lang/String;

    move-result-object v2

    .line 420
    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v4, p2, v0, v1, v2}, Lcom/mopub/mobileads/c;->a(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_4
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private a(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 429
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 430
    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 431
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;->a:[I

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 439
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 442
    :cond_0
    :goto_0
    instance-of v1, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz v1, :cond_1

    .line 443
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 445
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 446
    return-void

    .line 434
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 680
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->c(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 277
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    .line 299
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Did not queue rewarded video request for ad unit %s. A request is already pending."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    sget-object v2, Lcom/mopub/common/AdFormat;->REWARDED_VIDEO:Lcom/mopub/common/AdFormat;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v4, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    new-instance v5, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v5, v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 296
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 298
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;)Z
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    return-object v0
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 686
    const-string v0, "MoPub rewarded video was not initialized. You must call MoPub.initializeRewardedVideo() before loading or attempting to play video ads."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->a(Ljava/lang/String;)V

    .line 452
    if-eqz v0, :cond_1

    .line 453
    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 555
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 556
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 557
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 560
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 461
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 524
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    .line 527
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 530
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->i(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 584
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 585
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 588
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->j(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 614
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 615
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 616
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    .line 618
    :cond_0
    return-void
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    move-object v0, v1

    .line 166
    :goto_0
    return-object v0

    .line 159
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 166
    goto :goto_0
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 181
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    move-object v0, v1

    .line 199
    :goto_0
    return-object v0

    .line 186
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 188
    if-nez v0, :cond_1

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public static hasVideo(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/c;->a(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;

    move-result-object v0

    .line 304
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    .line 307
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2

    .prologue
    .line 127
    const-class v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit v1

    return-void

    .line 130
    :cond_0
    :try_start_1
    const-string v0, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 227
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    .line 274
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Did not queue rewarded video request for ad unit %s. The video is already showing."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Did not queue rewarded video request for ad unit %s. This ad unit already finished loading and is ready to show."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 258
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 260
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->i:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    if-nez p1, :cond_4

    move-object v0, v1

    .line 263
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/c;->e(Ljava/lang/String;)V

    .line 267
    :cond_3
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->d:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    .line 268
    invoke-virtual {v0, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    if-nez p1, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object v0, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    goto :goto_1

    .line 268
    :cond_5
    iget-object v0, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mLocation:Landroid/location/Location;

    goto :goto_3
.end method

.method public static onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 581
    :goto_0
    return-void

    .line 574
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 610
    :goto_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/c;->d(Ljava/lang/String;)V

    .line 611
    return-void

    .line 603
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 623
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 625
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;-><init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 663
    :goto_0
    return-void

    .line 653
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method public static onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public static onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 552
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;

    invoke-direct {v1, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    .line 520
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->g:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    goto :goto_0
.end method

.method public static showVideo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 312
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_1

    .line 313
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/c;->a(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;

    move-result-object v0

    .line 314
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v3, p0}, Lcom/mopub/mobileads/c;->b(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/c;->a(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V

    .line 318
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->f:Lcom/mopub/mobileads/c;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/c;->d(Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->e:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->c(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->f()V

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    goto :goto_0
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->c:Ljava/lang/ref/WeakReference;

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b()V

    goto :goto_0
.end method
