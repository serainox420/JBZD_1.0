.class public Lcom/pubmatic/sdk/common/AdResponse;
.super Ljava/lang/Object;
.source "AdResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/AdResponse$Renderable;
    }
.end annotation


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private mRenderable:Lcom/pubmatic/sdk/common/AdResponse$Renderable;

.field private mRequest:Lcom/pubmatic/sdk/common/AdRequest;

.field private mStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdResponse;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdResponse;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRenderable()Lcom/pubmatic/sdk/common/AdResponse$Renderable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdResponse;->mRenderable:Lcom/pubmatic/sdk/common/AdResponse$Renderable;

    return-object v0
.end method

.method public getRequest()Lcom/pubmatic/sdk/common/AdRequest;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdResponse;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/pubmatic/sdk/common/AdResponse;->mStatusCode:I

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdResponse;->errorCode:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdResponse;->errorMessage:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdResponse;->exception:Ljava/lang/Exception;

    .line 63
    return-void
.end method

.method public setRenderable(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdResponse;->mRenderable:Lcom/pubmatic/sdk/common/AdResponse$Renderable;

    .line 39
    return-void
.end method

.method public setRequest(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdResponse;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 23
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/pubmatic/sdk/common/AdResponse;->mStatusCode:I

    .line 31
    return-void
.end method
