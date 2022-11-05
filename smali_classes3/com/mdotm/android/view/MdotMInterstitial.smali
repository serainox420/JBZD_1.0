.class public Lcom/mdotm/android/view/MdotMInterstitial;
.super Ljava/lang/Object;
.source "MdotMInterstitial.java"

# interfaces
.implements Lcom/mdotm/android/listener/InterstitialActionListener;
.implements Lcom/mdotm/android/listener/MdotMNetworkListener;


# static fields
.field private static isRewarded:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private htmlVastResponse:Ljava/lang/String;

.field private interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field public isInterstitialReady:Z

.field private listenerId:J

.field public mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

.field private mContext:Landroid/app/Activity;

.field private reward:Ljava/lang/String;

.field private vastAdResponse:Lcom/mdotm/android/vast/VastAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/view/MdotMInterstitial;->isRewarded:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 40
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->htmlVastResponse:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 45
    iput-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 50
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMInterstitial;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public static getRewarded()Z
    .locals 1

    .prologue
    .line 351
    sget-boolean v0, Lcom/mdotm/android/view/MdotMInterstitial;->isRewarded:Z

    return v0
.end method


# virtual methods
.method public finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 205
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interstitial response"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interstitial response2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 214
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onReceiveInterstitialAd()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto :goto_0
.end method

.method public finishedNativeParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 3

    .prologue
    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "finished Native Parsing "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0, v2}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onReceiveNativeAd(Ljava/util/ArrayList;)V

    .line 389
    :cond_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finishedAdParsing"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 269
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finishedAdParsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v3

    .line 272
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v0

    move v2, v0

    .line 274
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 290
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v2, v0, :cond_4

    .line 291
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 292
    iput-boolean v5, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 293
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onReceiveInterstitialAd()V

    .line 344
    :cond_0
    :goto_1
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 276
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/LinearAd;

    .line 277
    invoke-virtual {v0}, Lcom/mdotm/android/vast/LinearAd;->getAdResource()Lcom/mdotm/android/vast/AdResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/AdResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 278
    add-int/lit8 v2, v2, 0x1

    .line 274
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/Companion;

    .line 284
    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getHTMLResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->htmlVastResponse:Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Vast ad for HTML parsing"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/mdotm/android/view/MdotMInterstitial;->htmlVastResponse:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto :goto_1

    .line 303
    :cond_5
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getError()Ljava/util/ArrayList;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v0

    .line 305
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    goto/16 :goto_1

    .line 306
    :cond_7
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    .line 307
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    .line 306
    invoke-virtual {v3, v0, v4}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "fire error code"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 320
    :cond_8
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    .line 323
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/mdotm/android/view/MdotMInterstitial$1;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/view/MdotMInterstitial$1;-><init>(Lcom/mdotm/android/view/MdotMInterstitial;Lcom/mdotm/android/vast/VastAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public loadInterstitial(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    sput-boolean v4, Lcom/mdotm/android/view/MdotMInterstitial;->isRewarded:Z

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listener id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 70
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/mdotm/android/utils/MdotMUtils;->setInterstitialActionListener(JLcom/mdotm/android/listener/InterstitialActionListener;)V

    .line 73
    iput-boolean v4, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 75
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    .line 75
    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils;->getDisplaySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setAdSize(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 78
    const-string v0, "inter caling load"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 83
    return-void
.end method

.method public loadPendingCompanion()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->activity:Landroid/app/Activity;

    const-class v2, Lcom/mdotm/android/view/MdotMActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    const-string v1, "response"

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pending companion"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public loadRewardedVideo(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mdotm/android/view/MdotMInterstitial;->isRewarded:Z

    .line 88
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->reward:Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listener id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 93
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/mdotm/android/utils/MdotMUtils;->setInterstitialActionListener(JLcom/mdotm/android/listener/InterstitialActionListener;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 98
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    .line 98
    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils;->getDisplaySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setAdSize(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 101
    const-string v0, "inter caling load"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 106
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 257
    const-string v0, "Adclicked"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onInterstitialAdClick()V

    .line 261
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onInterstitialDismiss()V

    .line 230
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 231
    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    .line 230
    invoke-virtual {v0, v2, v3}, Lcom/mdotm/android/utils/MdotMUtils;->removeInterstitialActionListener(J)V

    .line 234
    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveInterstitialAd()V

    .line 252
    :cond_0
    return-void
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onLeaveApplicationFromInterstitial()V

    .line 243
    :cond_0
    return-void
.end method

.method public onRewardedVideoComplete(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 360
    const-string v0, "call reward complete listners"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial;->activity:Landroid/app/Activity;

    .line 117
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->willShowInterstitial()V

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 127
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    .line 129
    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 130
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v2, "response"

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->vastAdResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    const-string v2, "isRewarded"

    sget-boolean v3, Lcom/mdotm/android/view/MdotMInterstitial;->isRewarded:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const-string v2, "reward"

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->reward:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :goto_0
    const-string v2, "InterstitialActionListenerId"

    iget-wide v4, p0, Lcom/mdotm/android/view/MdotMInterstitial;->listenerId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->didShowInterstitial()V

    .line 153
    :cond_2
    iput-boolean v6, p0, Lcom/mdotm/android/view/MdotMInterstitial;->isInterstitialReady:Z

    .line 157
    :goto_1
    return-void

    .line 138
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mdotm/android/view/MdotMActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v2, "response"

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    const-string v2, "reward"

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->reward:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interst"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMInterstitial;->interstitialResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_4
    const-string v0, "Interstitial is not ready"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
