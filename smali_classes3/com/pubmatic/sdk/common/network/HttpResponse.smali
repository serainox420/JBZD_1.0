.class public Lcom/pubmatic/sdk/common/network/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private contentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

.field public errorCode:I

.field public errorType:I

.field private httpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

.field private stringResponse:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorCode:I

    .line 9
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I

    .line 10
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->contentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 11
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    .line 12
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->httpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorCode:I

    .line 9
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I

    .line 10
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->contentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 11
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    .line 12
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->httpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public getContentType()Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->contentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    return-object v0
.end method

.method public getHttpRequest()Lcom/pubmatic/sdk/common/network/HttpRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->httpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    return-object v0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public resetResponse()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    .line 44
    return-void
.end method

.method public setContentType(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->contentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 52
    return-void
.end method

.method public setHttpRequest(Lcom/pubmatic/sdk/common/network/HttpRequest;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->httpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    .line 28
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpResponse;->stringResponse:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
