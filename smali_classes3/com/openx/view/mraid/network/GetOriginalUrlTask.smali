.class public Lcom/openx/view/mraid/network/GetOriginalUrlTask;
.super Lcom/openx/core/network/BaseNetworkTask;
.source "GetOriginalUrlTask.java"


# static fields
.field private static final MAX_REDIRECTS:I = 0x3


# instance fields
.field public connectionURL:Ljava/lang/String;

.field result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;


# direct methods
.method public constructor <init>(Lcom/openx/core/network/BaseResponseHandler;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 21
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    iput-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 22
    return-void
.end method

.method private getRedirectionUrlWithType(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->connectionURL:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->isRecognizedUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    const/4 v1, 0x2

    aput-object v4, v0, v1

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_1
    new-array v0, v3, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object p1, v0, v2

    invoke-super {p0, v0}, Lcom/openx/core/network/BaseNetworkTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 57
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    iget-object v0, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->JSRedirectURI:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public customParser(ILjava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 29
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_1

    .line 31
    const-string v0, "Location"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    aput-object v0, v1, v3

    .line 39
    :goto_1
    const/4 v0, 0x1

    const-string v2, "Content-Type"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 41
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    iput-object v1, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->JSRedirectURI:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->connectionURL:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->connectionURL:Ljava/lang/String;

    aput-object v0, v1, v3

    .line 37
    const/4 v0, 0x2

    const-string v2, "quit"

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method protected varargs doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 65
    .line 68
    invoke-virtual {p0, p1}, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->validParams([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 110
    :goto_0
    return-object v0

    .line 74
    :cond_0
    aget-object v2, p1, v1

    .line 79
    iget-object v3, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    :goto_1
    iput-object v0, v3, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->originalUrl:Ljava/lang/String;

    .line 80
    iput-boolean v1, v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->followRedirect:Z

    move v0, v1

    .line 82
    :goto_2
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 84
    invoke-direct {p0, v2}, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->getRedirectionUrlWithType(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    if-nez v3, :cond_3

    .line 110
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :cond_3
    aget-object v4, v3, v1

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    iget-object v0, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    aget-object v1, v3, v6

    iput-object v1, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->contentType:Ljava/lang/String;

    goto :goto_3

    .line 101
    :cond_4
    iget-object v4, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    aget-object v5, v3, v1

    iput-object v5, v4, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->originalUrl:Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    aget-object v5, v3, v6

    iput-object v5, v4, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->contentType:Ljava/lang/String;

    .line 103
    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-virtual {p0, p1}, Lcom/openx/view/mraid/network/GetOriginalUrlTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    return-object v0
.end method
