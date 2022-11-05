.class Lcom/openx/model/network/AdLoadHelper$processAdDataListener;
.super Ljava/lang/Object;
.source "AdLoadHelper.java"

# interfaces
.implements Lcom/openx/core/network/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/network/AdLoadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "processAdDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/network/AdLoadHelper;


# direct methods
.method private constructor <init>(Lcom/openx/model/network/AdLoadHelper;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/model/network/AdLoadHelper;Lcom/openx/model/network/AdLoadHelper$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;-><init>(Lcom/openx/model/network/AdLoadHelper;)V

    return-void
.end method


# virtual methods
.method public processError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-direct {v0, p1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    invoke-static {v1}, Lcom/openx/model/network/AdLoadHelper;->access$100(Lcom/openx/model/network/AdLoadHelper;)Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    invoke-static {v1}, Lcom/openx/model/network/AdLoadHelper;->access$100(Lcom/openx/model/network/AdLoadHelper;)Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    .line 101
    :cond_0
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-direct {v0, p1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    invoke-static {v1}, Lcom/openx/model/network/AdLoadHelper;->access$100(Lcom/openx/model/network/AdLoadHelper;)Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    invoke-static {v1}, Lcom/openx/model/network/AdLoadHelper;->access$100(Lcom/openx/model/network/AdLoadHelper;)Lcom/openx/model/network/AdModelLoadedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/openx/model/network/AdModelLoadedListener;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    .line 81
    :cond_0
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openx/model/network/AdLoadHelper;->access$200(Lcom/openx/model/network/AdLoadHelper;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/openx/model/network/AdLoadHelper$processAdDataListener;->this$0:Lcom/openx/model/network/AdLoadHelper;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openx/model/network/AdLoadHelper;->access$300(Lcom/openx/model/network/AdLoadHelper;Ljava/lang/String;)V

    .line 89
    return-void
.end method
