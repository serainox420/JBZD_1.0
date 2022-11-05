.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$1;,
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

.field private b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

.field private c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field private d:Landroid/app/Activity;

.field private volatile e:Lcom/mopub/mobileads/MoPubInterstitial$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Landroid/app/Activity;

    .line 71
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object p1
.end method

.method private a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$a;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V

    .line 226
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 227
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 228
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 229
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->b()V

    .line 265
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 106
    sget-object v3, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result v2

    aget v2, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 217
    :goto_0
    monitor-exit p0

    return v0

    .line 108
    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 128
    goto :goto_0

    .line 111
    :pswitch_1
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V

    .line 112
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 113
    if-eqz p2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v0, "No interstitial loading or loaded."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :pswitch_3
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    goto :goto_0

    .line 131
    :pswitch_4
    sget-object v2, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    move v0, v1

    .line 156
    goto :goto_0

    .line 136
    :pswitch_5
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V

    .line 137
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    goto :goto_0

    .line 140
    :pswitch_6
    if-nez p2, :cond_1

    .line 142
    const-string v0, "Already loading an interstitial."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 147
    :pswitch_7
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    goto :goto_0

    .line 150
    :pswitch_8
    const-string v0, "Interstitial is not ready to be shown yet."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_9
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    goto :goto_0

    .line 159
    :pswitch_a
    sget-object v2, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    move v0, v1

    .line 185
    goto :goto_0

    .line 161
    :pswitch_b
    if-eqz p2, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V

    .line 164
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :pswitch_c
    const-string v0, "Interstitial already loaded. Not loading another."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_3
    move v0, v1

    .line 175
    goto/16 :goto_0

    .line 178
    :pswitch_d
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()V

    .line 179
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    goto/16 :goto_0

    .line 182
    :pswitch_e
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    goto/16 :goto_0

    .line 188
    :pswitch_f
    sget-object v2, Lcom/mopub/mobileads/MoPubInterstitial$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    move v0, v1

    .line 210
    goto/16 :goto_0

    .line 190
    :pswitch_10
    if-eqz p2, :cond_4

    .line 191
    const-string v0, "Cannot force refresh while showing an interstitial."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 195
    :cond_4
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V

    .line 196
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    goto/16 :goto_0

    .line 199
    :pswitch_11
    if-nez p2, :cond_5

    .line 200
    const-string v0, "Interstitial already showing. Not loading another."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    .line 202
    goto/16 :goto_0

    .line 204
    :pswitch_12
    const-string v0, "Already showing an interstitial. Cannot show it again."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 205
    goto/16 :goto_0

    .line 207
    :pswitch_13
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    goto/16 :goto_0

    .line 214
    :pswitch_14
    const-string v0, "MoPubInterstitial destroyed. Ignoring all requests."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 215
    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_14
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 131
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 159
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
    .end packed-switch

    .line 188
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    .line 297
    return-void
.end method

.method public forceRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 240
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    .line 241
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    .line 242
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getTesting()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->e:Lcom/mopub/mobileads/MoPubInterstitial$a;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    .line 233
    return-void
.end method

.method public onCustomEventInterstitialClicked()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b()V

    .line 375
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialDismissed()V
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    .line 388
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    goto :goto_0
.end method

.method public onCustomEventInterstitialLoaded()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    .line 338
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialShown()V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a()V

    .line 362
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 301
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
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
    .line 317
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setLocalExtras(Ljava/util/Map;)V

    .line 318
    return-void
.end method

.method public setTesting(Z)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setTesting(Z)V

    .line 310
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    move-result v0

    return v0
.end method
