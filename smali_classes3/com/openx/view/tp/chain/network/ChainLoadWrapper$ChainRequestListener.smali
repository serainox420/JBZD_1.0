.class Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;
.super Ljava/lang/Object;
.source "ChainLoadWrapper.java"

# interfaces
.implements Lcom/openx/core/network/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/tp/chain/network/ChainLoadWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;


# direct methods
.method private constructor <init>(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;Lcom/openx/view/tp/chain/network/ChainLoadWrapper$1;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;-><init>(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)V

    return-void
.end method


# virtual methods
.method public processError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-direct {v0, p1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    invoke-static {v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->access$300(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    invoke-static {v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->access$300(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadFail(Lcom/openx/errors/AdError;)V

    .line 101
    :cond_0
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-direct {v0, p1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    invoke-static {v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->access$300(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    invoke-static {v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->access$300(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;)Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadFail(Lcom/openx/errors/AdError;)V

    .line 112
    :cond_0
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->access$100(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper$ChainRequestListener;->this$0:Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->access$200(Lcom/openx/view/tp/chain/network/ChainLoadWrapper;Ljava/lang/String;)V

    .line 90
    return-void
.end method
