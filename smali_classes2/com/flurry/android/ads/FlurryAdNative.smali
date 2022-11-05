.class public final Lcom/flurry/android/ads/FlurryAdNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/ads/FlurryAdNativeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/flurry/sdk/x;

.field private final d:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/android/ads/FlurryAdNativeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/flurry/android/ads/FlurryAdNative$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/ads/FlurryAdNative$1;-><init>(Lcom/flurry/android/ads/FlurryAdNative;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->d:Lcom/flurry/sdk/kh;

    .line 135
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ad space must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_3

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :goto_0
    return-void

    .line 151
    :cond_3
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/x;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 152
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeAdObject created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 1429
    iput-object v0, v1, Lcom/flurry/sdk/x;->l:Ljava/util/List;

    .line 157
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->d:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a()Lcom/flurry/android/ads/FlurryAdNativeAsset;
    .locals 8

    .prologue
    .line 532
    const/4 v2, 0x0

    .line 533
    const/4 v1, 0x0

    .line 536
    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v3

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 538
    const-string v5, "clickToCall"

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 540
    const/4 v1, 0x1

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 544
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    if-nez v0, :cond_3

    .line 548
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v2

    .line 549
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 550
    const-string v4, "callToAction"

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    :goto_2
    return-object v0

    .line 544
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 555
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ads/FlurryAdNative;)Lcom/flurry/sdk/x;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 34
    .line 5446
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    if-eqz v0, :cond_6

    .line 5451
    invoke-static {}, Lcom/flurry/sdk/fi;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5452
    if-eqz v0, :cond_0

    const-string v3, "Flurry_Mopub"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5453
    const/4 v0, 0x0

    .line 5459
    :goto_0
    if-eqz v0, :cond_2

    .line 5460
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v2

    .line 5461
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 5462
    iget-object v4, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v5, "showRating"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5463
    iget-object v0, v0, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5467
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v0

    .line 5470
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v2

    .line 5471
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 5472
    iget-object v4, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v5, "showRating"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5475
    if-nez v1, :cond_4

    iget-object v4, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v5, "appRating"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v5, "secRatingImg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v5, "secHqRatingIMg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5479
    :cond_4
    new-instance v4, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    iget-object v5, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 6171
    iget v5, v5, Lcom/flurry/sdk/o;->b:I

    .line 5479
    invoke-direct {v4, v0, v5}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    .line 5480
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5501
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5467
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 5484
    :cond_5
    :try_start_3
    new-instance v0, Lcom/flurry/sdk/hi;

    invoke-direct {v0}, Lcom/flurry/sdk/hi;-><init>()V

    .line 5485
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->g()V

    .line 5486
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 5498
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 10354
    const-string v3, "downArrowImage"

    const-string v4, "android/down_arrow3x.png"

    invoke-static {v3, v4}, Lcom/flurry/sdk/hi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v3

    .line 5498
    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 11171
    iget v4, v4, Lcom/flurry/sdk/o;->b:I

    .line 5498
    invoke-direct {v1, v3, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5499
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 11366
    const-string v3, "upArrowImage"

    const-string v4, "android/up_arrow3x.png"

    invoke-static {v3, v4}, Lcom/flurry/sdk/hi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v3

    .line 5499
    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 12171
    iget v4, v4, Lcom/flurry/sdk/o;->b:I

    .line 5499
    invoke-direct {v1, v3, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5501
    :goto_3
    monitor-exit v2

    :cond_6
    return-void

    .line 5489
    :sswitch_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 6346
    const-string v3, "downArrowImage"

    const-string v4, "android/down_arrow.png"

    invoke-static {v3, v4}, Lcom/flurry/sdk/hi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v3

    .line 5489
    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 7171
    iget v4, v4, Lcom/flurry/sdk/o;->b:I

    .line 5489
    invoke-direct {v1, v3, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5490
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 7358
    const-string v3, "upArrowImage"

    const-string v4, "android/up_arrow.png"

    invoke-static {v3, v4}, Lcom/flurry/sdk/hi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v3

    .line 5490
    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 8171
    iget v4, v4, Lcom/flurry/sdk/o;->b:I

    .line 5490
    invoke-direct {v1, v3, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5493
    :sswitch_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 8350
    const-string v3, "downArrowImage"

    const-string v4, "android/down_arrow2x.png"

    invoke-static {v3, v4}, Lcom/flurry/sdk/hi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v3

    .line 5493
    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 9171
    iget v4, v4, Lcom/flurry/sdk/o;->b:I

    .line 5493
    invoke-direct {v1, v3, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5494
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 9362
    const-string v3, "upArrowImage"

    const-string v4, "android/up_arrow2x.png"

    invoke-static {v3, v4}, Lcom/flurry/sdk/hi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v3

    .line 5494
    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 10171
    iget v4, v4, Lcom/flurry/sdk/o;->b:I

    .line 5494
    invoke-direct {v1, v3, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/sdk/de;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0

    .line 5486
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic c(Lcom/flurry/android/ads/FlurryAdNative;)Lcom/flurry/android/ads/FlurryAdNativeListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->e:Lcom/flurry/android/ads/FlurryAdNativeListener;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->d:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->e:Lcom/flurry/android/ads/FlurryAdNativeListener;

    .line 172
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeAdObject ready to destroy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->a()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 176
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeAdObject destroyed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final fetchAd()V
    .locals 3

    .prologue
    .line 248
    :try_start_0
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeAdObject ready to fetch ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdFetch"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->w()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getAdSpace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    if-nez v0, :cond_0

    .line 525
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v1, "Ad object is null"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 5186
    iget-object v0, v0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 417
    :cond_0
    :goto_0
    return-object v0

    .line 378
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    const/4 v2, 0x0

    .line 386
    :try_start_0
    const-string v0, "callToAction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/flurry/android/ads/FlurryAdNative;->a()Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_3
    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 393
    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 395
    const/4 v2, 0x1

    .line 399
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    if-nez v2, :cond_0

    :try_start_2
    const-string v2, "videoUrl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    :try_start_3
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 405
    const-string v4, "vastAd"

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 411
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    sget-object v2, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v3, "Exception: "

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 417
    goto :goto_0

    .line 399
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public final getAssetList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/ads/FlurryAdNativeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 429
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    .line 433
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :try_start_1
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getStyle()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 2554
    sget-object v2, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v3, v1, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2555
    :goto_0
    return v0

    .line 3206
    :cond_0
    iget-object v1, v1, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 5078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 5144
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v1, v1, Lcom/flurry/sdk/cs;->z:Lcom/flurry/sdk/dd;

    .line 2558
    iget v0, v1, Lcom/flurry/sdk/dd;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    sget-object v2, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v3, "Exception: "

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final isExpired()Z
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->t()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isReady()Z
    .locals 3

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->u()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVideoAd()Z
    .locals 3

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->v()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 514
    :goto_0
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeTrackingView()V
    .locals 3

    .prologue
    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->x()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setCollapsableTrackingView(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 2503
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)V

    .line 2505
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/x;->o:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setExpandableTrackingView(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 2497
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)V

    .line 2499
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/x;->n:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setListener(Lcom/flurry/android/ads/FlurryAdNativeListener;)V
    .locals 3

    .prologue
    .line 191
    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdNative;->e:Lcom/flurry/android/ads/FlurryAdNativeListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setSupportedStyles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 2429
    iput-object p1, v0, Lcom/flurry/sdk/x;->l:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setTargeting(Lcom/flurry/android/ads/FlurryAdTargeting;)V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    .line 2253
    iput-object p1, v0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setTrackingView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/x;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
