.class public Lcom/openx/view/tp/chain/network/ChainLoadWrapper;
.super Ljava/lang/Object;
.source "ChainLoadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/tp/chain/network/ChainLoadWrapper$1;,
        Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;
    }
.end annotation


# static fields
.field public static parseError:Z


# instance fields
.field private chainLoadListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

.field private transient mAdGroup:Lcom/openx/view/tp/chain/parser/ChainResponse;

.field private mIsLoaded:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/openx/view/tp/chain/network/SDKChainLoadListener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->url:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->chainLoadListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    .line 25
    return-void
.end method

.method static synthetic access$100(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->constructChainResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->loadChainCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)Lcom/openx/view/tp/chain/network/SDKChainLoadListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->chainLoadListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    return-object v0
.end method

.method private constructChainResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/openx/view/tp/chain/parser/ChainResponse;

    invoke-direct {v0, p1}, Lcom/openx/view/tp/chain/parser/ChainResponse;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->setChainResponse(Lcom/openx/view/tp/chain/parser/ChainResponse;)V

    .line 156
    return-void
.end method

.method private getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->mAdGroup:Lcom/openx/view/tp/chain/parser/ChainResponse;

    return-object v0
.end method

.method private loadChainCallback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->setIsLoaded(Z)V

    .line 122
    iget-object v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->chainLoadListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    if-eqz v0, :cond_1

    .line 125
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    if-eqz v0, :cond_2

    .line 127
    :cond_0
    new-instance v0, Lcom/openx/errors/ServerWrongResponse;

    invoke-direct {v0}, Lcom/openx/errors/ServerWrongResponse;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->chainLoadListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-interface {v1, v0}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadFail(Lcom/openx/errors/AdError;)V

    .line 136
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    .line 148
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->chainLoadListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-direct {p0}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->getChainResponse()Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadSuccess(Lcom/openx/view/tp/chain/parser/ChainResponse;)V

    goto :goto_0
.end method

.method private setChainResponse(Lcom/openx/view/tp/chain/parser/ChainResponse;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->mAdGroup:Lcom/openx/view/tp/chain/parser/ChainResponse;

    .line 30
    return-void
.end method

.method private setIsLoaded(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->mIsLoaded:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->mIsLoaded:Z

    return v0
.end method

.method public sendChainLoadRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    new-instance v0, Lcom/openx/core/network/PostNetworkTask;

    new-instance v1, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;-><init>(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;Lcom/openx/view/tp/chain/network/ChainLoadWrapper$1;)V

    invoke-direct {v0, v1}, Lcom/openx/core/network/PostNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 59
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->url:Ljava/lang/String;

    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 67
    aget-object v3, v2, v5

    iput-object v3, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 68
    aget-object v2, v2, v6

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    .line 72
    :cond_0
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 79
    new-array v2, v6, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/openx/core/network/PostNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method
