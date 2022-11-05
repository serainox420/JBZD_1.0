.class public Lcom/openx/model/AdModel;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/AdModel$1;,
        Lcom/openx/model/AdModel$GenerateURLCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private availableTPJars:Ljava/lang/String;

.field private chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

.field private transient mAdCallParams:Lcom/openx/model/adParams/AdCallParameters;

.field private mAuid:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mIsGroupIds:Z

.field private transient mModelEventsListener:Lcom/openx/model/network/AdModelLoadedListener;

.field private nativeAppendedParams:Ljava/lang/String;

.field private ssmHeight:I

.field private ssmWidth:I

.field private urlGenerator:Lcom/openx/model/adParams/URLGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/openx/model/AdModel;->nativeAppendedParams:Ljava/lang/String;

    .line 211
    return-void
.end method

.method static synthetic access$100(Lcom/openx/model/AdModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/openx/model/AdModel;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method private getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/openx/model/AdModel;->mModelEventsListener:Lcom/openx/model/network/AdModelLoadedListener;

    return-object v0
.end method

.method private processDataRequest(Lcom/openx/common/deviceData/listeners/NetworkListener;)V
    .locals 4

    .prologue
    .line 67
    invoke-interface {p1}, Lcom/openx/common/deviceData/listeners/NetworkListener;->getConnectionType()Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    move-result-object v0

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->OFFLINE:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    if-eq v0, v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/openx/model/AdModel;->getChainItem()Lcom/openx/view/tp/chain/parser/ChainItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/openx/model/AdModel;->getChainItem()Lcom/openx/view/tp/chain/parser/ChainItem;

    move-result-object v0

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    const-string v1, "apihtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdDomain()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Lcom/openx/model/network/AdLoadHelper;

    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/openx/model/AdModel;->getChainItem()Lcom/openx/view/tp/chain/parser/ChainItem;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/openx/model/network/AdLoadHelper;-><init>(Ljava/lang/String;Lcom/openx/model/network/AdModelLoadedListener;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 91
    invoke-virtual {v1}, Lcom/openx/model/network/AdLoadHelper;->sendAdRequest()V

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    new-instance v0, Lcom/openx/model/adParams/URLGenerator;

    new-instance v1, Lcom/openx/model/AdModel$GenerateURLCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/openx/model/AdModel$GenerateURLCallback;-><init>(Lcom/openx/model/AdModel;Lcom/openx/model/AdModel$1;)V

    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/openx/model/adParams/URLGenerator;-><init>(Lcom/openx/core/network/GenerateURLListener;Lcom/openx/core/network/BaseResponseHandler;)V

    iput-object v0, p0, Lcom/openx/model/AdModel;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    .line 80
    iget-object v0, p0, Lcom/openx/model/AdModel;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    invoke-virtual {p0}, Lcom/openx/model/AdModel;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/URLGenerator;->setURLParams(Lcom/openx/model/adParams/AdCallParameters;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/openx/model/AdModel;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    iget-object v2, p0, Lcom/openx/model/AdModel;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    invoke-virtual {v2}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/adParams/AdCallParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/openx/model/adParams/URLGenerator;->getURL(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Lcom/openx/errors/UnknownError;

    const-string v1, "URL was not created"

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    goto :goto_1

    .line 102
    :cond_3
    new-instance v0, Lcom/openx/errors/DeviceIsOffline;

    invoke-direct {v0}, Lcom/openx/errors/DeviceIsOffline;-><init>()V

    .line 104
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    goto :goto_1
.end method


# virtual methods
.method public getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/openx/model/AdModel;->mAdCallParams:Lcom/openx/model/adParams/AdCallParameters;

    return-object v0
.end method

.method public getAdUnitID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/openx/model/AdModel;->mAuid:Ljava/lang/String;

    return-object v0
.end method

.method public getChainItem()Lcom/openx/view/tp/chain/parser/ChainItem;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/openx/model/AdModel;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    return-object v0
.end method

.method public getSSMAdHeight()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/openx/model/AdModel;->ssmHeight:I

    return v0
.end method

.method public getSSMAdWidth()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/openx/model/AdModel;->ssmWidth:I

    return v0
.end method

.method public isGroupIds()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/openx/model/AdModel;->mIsGroupIds:Z

    return v0
.end method

.method public processData()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getNetworkManager()Lcom/openx/common/deviceData/listeners/NetworkListener;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v1

    .line 47
    const-string v2, "android.permission.INTERNET"

    invoke-interface {v1, v2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/openx/model/AdModel;->processDataRequest(Lcom/openx/common/deviceData/listeners/NetworkListener;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Lcom/openx/errors/PermissionDeniedForApplication;

    const-string v1, "android.permission.INTERNET"

    invoke-direct {v0, v1}, Lcom/openx/errors/PermissionDeniedForApplication;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/openx/model/AdModel;->getAdModelCallbackListener()Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method public setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/openx/model/AdModel;->mAdCallParams:Lcom/openx/model/adParams/AdCallParameters;

    .line 149
    return-void
.end method

.method public setAdDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/openx/model/AdModel;->mDomain:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setAdModelCallbackListener(Lcom/openx/model/network/AdModelLoadedListener;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/openx/model/AdModel;->mModelEventsListener:Lcom/openx/model/network/AdModelLoadedListener;

    .line 144
    return-void
.end method

.method public setAdUnitID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/openx/model/AdModel;->mAuid:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setAvailableTpList(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/openx/model/AdModel;->availableTPJars:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setChainItem(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/openx/model/AdModel;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    .line 154
    return-void
.end method

.method public setIsGroupIds(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/openx/model/AdModel;->mIsGroupIds:Z

    .line 184
    return-void
.end method

.method public setNativeAppendedParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/openx/model/AdModel;->nativeAppendedParams:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSSMAdHeight(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/openx/model/AdModel;->ssmHeight:I

    .line 174
    return-void
.end method

.method public setSSMAdWidth(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/openx/model/AdModel;->ssmWidth:I

    .line 164
    return-void
.end method

.method public trackAdModelEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/openx/core/network/GetNetworkTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openx/core/network/GetNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 122
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 124
    iput-object p2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 128
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/openx/core/network/GetNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method
