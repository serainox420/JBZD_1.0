.class public Lcom/openx/model/network/AdLoadHelper;
.super Ljava/lang/Object;
.source "AdLoadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/network/AdLoadHelper$1;,
        Lcom/openx/model/network/AdLoadHelper$processAdDataListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adLoadHelperChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

.field private adModelListener:Lcom/openx/model/network/AdModelLoadedListener;

.field private transient mAdGroup:Lcom/openx/model/AdGroup;

.field private mIsLoaded:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/openx/model/network/AdModelLoadedListener;Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "AdLoadHelper"

    iput-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/openx/model/network/AdLoadHelper;->url:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/openx/model/network/AdLoadHelper;->adModelListener:Lcom/openx/model/network/AdModelLoadedListener;

    .line 40
    iput-object p3, p0, Lcom/openx/model/network/AdLoadHelper;->adLoadHelperChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/openx/model/network/AdLoadHelper;)Lcom/openx/model/network/AdModelLoadedListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->adModelListener:Lcom/openx/model/network/AdModelLoadedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/model/network/AdLoadHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/openx/model/network/AdLoadHelper;->constructAdGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/openx/model/network/AdLoadHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/openx/model/network/AdLoadHelper;->loadAdCallback(Ljava/lang/String;)V

    return-void
.end method

.method private constructAdGroup(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 148
    const-string v0, "AdLoadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing adGroup from result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->adLoadHelperChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->adLoadHelperChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    const-string v1, "apihtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Lcom/openx/model/AdGroup;

    invoke-direct {v1}, Lcom/openx/model/AdGroup;-><init>()V

    .line 155
    new-instance v0, Lcom/openx/model/Ad;

    invoke-direct {v0}, Lcom/openx/model/Ad;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/openx/model/Ad;->setHTML(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/openx/model/AdCreative;

    invoke-direct {v2}, Lcom/openx/model/AdCreative;-><init>()V

    .line 159
    iget-object v3, p0, Lcom/openx/model/network/AdLoadHelper;->adLoadHelperChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v3, v3, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    invoke-virtual {v2, v3}, Lcom/openx/model/AdCreative;->setWidth(I)V

    .line 160
    iget-object v3, p0, Lcom/openx/model/network/AdLoadHelper;->adLoadHelperChainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v3, v3, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-virtual {v2, v3}, Lcom/openx/model/AdCreative;->setHeight(I)V

    .line 162
    invoke-virtual {v1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 164
    iput-object v1, p0, Lcom/openx/model/network/AdLoadHelper;->mAdGroup:Lcom/openx/model/AdGroup;

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/openx/model/AdGroup;

    invoke-direct {v0}, Lcom/openx/model/AdGroup;-><init>()V

    .line 171
    invoke-virtual {v0, p1}, Lcom/openx/model/AdGroup;->parse(Ljava/lang/String;)V

    .line 172
    iput-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->mAdGroup:Lcom/openx/model/AdGroup;

    goto :goto_0
.end method

.method private loadAdCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/openx/model/network/AdLoadHelper;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/network/AdLoadHelper;->setIsLoaded(Z)V

    .line 116
    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->adModelListener:Lcom/openx/model/network/AdModelLoadedListener;

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "AdLoadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Load request got result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AdGroupHasParseError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/network/AdLoadHelper;->mAdGroup:Lcom/openx/model/AdGroup;

    invoke-virtual {v2}, Lcom/openx/model/AdGroup;->hasParseError()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->mAdGroup:Lcom/openx/model/AdGroup;

    invoke-virtual {v0}, Lcom/openx/model/AdGroup;->hasParseError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_0
    new-instance v0, Lcom/openx/errors/ServerWrongResponse;

    invoke-direct {v0}, Lcom/openx/errors/ServerWrongResponse;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/openx/model/network/AdLoadHelper;->adModelListener:Lcom/openx/model/network/AdModelLoadedListener;

    invoke-interface {v1, v0}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const-string v0, "AdLoadHelper"

    const-string v1, "adModelLoadAdSuccess"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper;->adModelListener:Lcom/openx/model/network/AdModelLoadedListener;

    iget-object v1, p0, Lcom/openx/model/network/AdLoadHelper;->mAdGroup:Lcom/openx/model/AdGroup;

    invoke-interface {v0, v1}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V

    goto :goto_0
.end method

.method private setIsLoaded(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/openx/model/network/AdLoadHelper;->mIsLoaded:Z

    .line 108
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/openx/model/network/AdLoadHelper;->mIsLoaded:Z

    return v0
.end method

.method public sendAdRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    new-instance v0, Lcom/openx/core/network/PostNetworkTask;

    new-instance v1, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;-><init>(Lcom/openx/model/network/AdLoadHelper;Lcom/openx/model/network/AdLoadHelper$1;)V

    invoke-direct {v0, v1}, Lcom/openx/core/network/PostNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 48
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 54
    iget-object v2, p0, Lcom/openx/model/network/AdLoadHelper;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/openx/model/network/AdLoadHelper;->url:Ljava/lang/String;

    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 59
    aget-object v3, v2, v5

    iput-object v3, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 60
    aget-object v2, v2, v6

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    .line 64
    :cond_0
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 66
    new-array v2, v6, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/openx/core/network/PostNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method
