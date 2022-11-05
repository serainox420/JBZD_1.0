.class public Lcom/inmobi/monetization/IMInterstitial;
.super Ljava/lang/Object;
.source "IMInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/IMInterstitial$State;
    }
.end annotation


# instance fields
.field a:Lcom/inmobi/monetization/internal/InterstitialAd;

.field b:Z

.field c:Lcom/inmobi/monetization/internal/IMAdListener;

.field private d:Lcom/inmobi/monetization/IMInterstitialListener;

.field private e:Lcom/inmobi/monetization/IMIncentivisedListener;

.field private f:J

.field private g:Landroid/app/Activity;

.field private h:Lcom/inmobi/monetization/IMInterstitial$State;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->f:J

    .line 56
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Z

    .line 295
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMInterstitial$1;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 85
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:Landroid/app/Activity;

    .line 86
    iput-wide p2, p0, Lcom/inmobi/monetization/IMInterstitial;->f:J

    .line 87
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->f:J

    .line 56
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Z

    .line 295
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMInterstitial$1;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 72
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:Landroid/app/Activity;

    .line 73
    iput-object p2, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Lcom/inmobi/monetization/IMInterstitialListener;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 101
    new-instance v0, Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/inmobi/monetization/IMInterstitial;->f:J

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/InterstitialAd;-><init>(Landroid/app/Activity;J)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd;->setAdListener(Lcom/inmobi/monetization/internal/IMAdListener;)V

    .line 105
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/internal/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    goto :goto_0
.end method

.method private a(ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/inmobi/monetization/internal/AdErrorCode;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Lcom/inmobi/monetization/IMInterstitialListener;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/monetization/IMInterstitial$2;-><init>(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/monetization/IMInterstitial;->a(ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMIncentivisedListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Z

    .line 174
    return-void
.end method

.method public getState()Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object v0
.end method

.method public loadInterstitial()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    .line 118
    const-string v1, "Ad download in progress. Your request cannot be processed at this time. Try again later."

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    .line 119
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Ad download in progress. Your request cannot be processed at this time. Try again later."

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Lcom/inmobi/monetization/IMInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 145
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->ACTIVE:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_1

    .line 126
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    .line 127
    const-string v1, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    .line 128
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Lcom/inmobi/monetization/IMInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0

    .line 133
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 134
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->loadAd()V

    goto :goto_0

    .line 139
    :cond_2
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    .line 140
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Lcom/inmobi/monetization/IMInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/InterstitialAd;->setAppId(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setIMIncentivisedListener(Lcom/inmobi/monetization/IMIncentivisedListener;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMIncentivisedListener;

    .line 246
    return-void
.end method

.method public setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Lcom/inmobi/monetization/IMInterstitialListener;

    .line 167
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/InterstitialAd;->setKeywords(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 281
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Key or Value cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    :cond_3
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Key or Value cannot be empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 291
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->setRequestParams(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/InterstitialAd;->setRequestParams(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/InterstitialAd;->setSlotId(J)V

    .line 211
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->show()V

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial ad is not in the \'READY\' state. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/InterstitialAd;->show(J)V

    .line 238
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->stopLoading()V

    .line 159
    :cond_0
    return-void
.end method
