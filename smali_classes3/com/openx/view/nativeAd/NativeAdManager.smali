.class public Lcom/openx/view/nativeAd/NativeAdManager;
.super Ljava/lang/Object;
.source "NativeAdManager.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/SDKInitListener;
.implements Lcom/openx/model/network/AdModelLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private adEventsListener:Lcom/openx/view/nativeAd/NativeAdEventsListener;

.field private adModel:Lcom/openx/model/AdModel;

.field private adRequest:Lcom/openx/core/network/OXAdRequest;

.field private auid:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private domain:Ljava/lang/String;

.field private hasRequestedAds:I

.field private nativeAdGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/view/nativeAd/AdNative;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdIdType:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "NativeAdManager"

    sput-object v0, Lcom/openx/view/nativeAd/NativeAdManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/nativeAd/NativeAdEventsListener;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->hasRequestedAds:I

    .line 68
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NativeAdEventsListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/openx/view/nativeAd/NativeAdManager;->domain:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/openx/view/nativeAd/NativeAdManager;->auid:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adEventsListener:Lcom/openx/view/nativeAd/NativeAdEventsListener;

    .line 78
    invoke-direct {p0}, Lcom/openx/view/nativeAd/NativeAdManager;->init()V

    .line 79
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 84
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->prepare(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private loadAdModel()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "Building AdModel"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/openx/model/OXMAdModelFactory;->getInstance()Lcom/openx/model/OXMAdModelFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/OXMAdModelFactory;->createNewModel()Lcom/openx/model/AdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    .line 122
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdDomain(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->auid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdUnitID(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/openx/model/AdModel;->setAdModelCallbackListener(Lcom/openx/model/network/AdModelLoadedListener;)V

    .line 127
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->nativeAdIdType:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    sget-object v1, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->AdUnitGroupId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setIsGroupIds(Z)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v0, v0, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    if-eqz v0, :cond_2

    .line 135
    sget-object v0, Lcom/openx/view/nativeAd/NativeAdManager;->TAG:Ljava/lang/String;

    const-string v1, "sending AdCallParameters"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v1, v1, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 149
    :cond_1
    :goto_0
    const-string v0, "Loading AdModel"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    invoke-virtual {v0}, Lcom/openx/model/AdModel;->processData()V

    .line 152
    return-void

    .line 142
    :cond_2
    sget-object v0, Lcom/openx/view/nativeAd/NativeAdManager;->TAG:Ljava/lang/String;

    const-string v1, "No AdCallParameters set by user"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adModel:Lcom/openx/model/AdModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    goto :goto_0
.end method

.method private populateNativeAdGroup(Lcom/openx/model/AdGroup;)V
    .locals 5

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->nativeAdGroup:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    .line 208
    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/AdCreative;->getMedia()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openx/model/AdTracking;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdTracking;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v4, Lcom/openx/view/nativeAd/AdNative;

    invoke-direct {v4, v2, v3, v0}, Lcom/openx/view/nativeAd/AdNative;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->domain:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/openx/view/nativeAd/AdNative;->setDomain(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->auid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/openx/view/nativeAd/AdNative;->setAuid(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->nativeAdGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method private processNativeAdGroup(Lcom/openx/model/AdGroup;)V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/openx/view/nativeAd/NativeAdManager;->populateNativeAdGroup(Lcom/openx/model/AdGroup;)V

    .line 176
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adEventsListener:Lcom/openx/view/nativeAd/NativeAdEventsListener;

    iget-object v1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->nativeAdGroup:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/openx/view/nativeAd/NativeAdEventsListener;->onNativeAdsLoaded(Ljava/util/ArrayList;)V

    .line 177
    return-void
.end method


# virtual methods
.method public adModelLoadAdFail(Lcom/openx/errors/AdError;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adEventsListener:Lcom/openx/view/nativeAd/NativeAdEventsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adEventsListener:Lcom/openx/view/nativeAd/NativeAdEventsListener;

    invoke-interface {v0, p1}, Lcom/openx/view/nativeAd/NativeAdEventsListener;->onNativeAdLoadError(Lcom/openx/errors/AdError;)V

    .line 186
    :cond_0
    return-void
.end method

.method public adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/openx/view/nativeAd/NativeAdManager;->processNativeAdGroup(Lcom/openx/model/AdGroup;)V

    .line 171
    return-void
.end method

.method public adModelNonCriticalError(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adEventsListener:Lcom/openx/view/nativeAd/NativeAdEventsListener;

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "OX_NonCriticalError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonCriticalError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public load(Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;Lcom/openx/core/network/OXAdRequest;)V
    .locals 1

    .prologue
    .line 100
    iput-object p2, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    .line 101
    iput-object p1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->nativeAdIdType:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    .line 103
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    .line 105
    iget v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->hasRequestedAds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->hasRequestedAds:I

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/openx/view/nativeAd/NativeAdManager;->loadAdModel()V

    goto :goto_0
.end method

.method public onSDKInit()V
    .locals 2

    .prologue
    .line 229
    :goto_0
    iget v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->hasRequestedAds:I

    if-lez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->nativeAdIdType:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    iget-object v1, p0, Lcom/openx/view/nativeAd/NativeAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {p0, v0, v1}, Lcom/openx/view/nativeAd/NativeAdManager;->load(Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;Lcom/openx/core/network/OXAdRequest;)V

    .line 232
    iget v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->hasRequestedAds:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/openx/view/nativeAd/NativeAdManager;->hasRequestedAds:I

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method
