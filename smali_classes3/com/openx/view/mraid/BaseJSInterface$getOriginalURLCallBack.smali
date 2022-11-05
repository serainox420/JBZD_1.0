.class Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;
.super Ljava/lang/Object;
.source "BaseJSInterface.java"

# interfaces
.implements Lcom/openx/core/network/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/mraid/BaseJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getOriginalURLCallBack"
.end annotation


# instance fields
.field listener:Lcom/openx/view/mraid/network/RedirectURLListener;

.field final synthetic this$0:Lcom/openx/view/mraid/BaseJSInterface;


# direct methods
.method public constructor <init>(Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/mraid/network/RedirectURLListener;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    .line 531
    return-void
.end method


# virtual methods
.method public processError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 564
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-direct {v0, p1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Lcom/openx/errors/UnknownError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    invoke-interface {v0}, Lcom/openx/view/mraid/network/RedirectURLListener;->onFailed()V

    .line 572
    :cond_0
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 577
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-direct {v0, p1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Lcom/openx/errors/UnknownError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    invoke-interface {v0}, Lcom/openx/view/mraid/network/RedirectURLListener;->onFailed()V

    .line 585
    :cond_0
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 4

    .prologue
    .line 538
    if-eqz p1, :cond_2

    .line 541
    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->originalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "server_redirected"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->originalUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/mraid/network/RedirectURLListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_1
    :goto_0
    return-void

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$getOriginalURLCallBack;->listener:Lcom/openx/view/mraid/network/RedirectURLListener;

    invoke-interface {v0}, Lcom/openx/view/mraid/network/RedirectURLListener;->onFailed()V

    .line 557
    :cond_3
    const-string v0, "server_redirected_to_incorrect_url"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
