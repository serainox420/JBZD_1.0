.class public Lcom/pubmatic/sdk/common/network/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field mAccept:Ljava/lang/String;

.field mAcceptCharset:Ljava/lang/String;

.field mAcceptDateTime:Ljava/lang/String;

.field mAcceptLangauge:Ljava/lang/String;

.field mCacheControl:Ljava/lang/String;

.field mConnection:Ljava/lang/String;

.field mContentLanguage:Ljava/lang/String;

.field mContentLength:Ljava/lang/String;

.field mContentMd5:Ljava/lang/String;

.field private mContentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

.field mContentTypeHeader:Ljava/lang/String;

.field mDate:Ljava/lang/String;

.field mHost:Ljava/lang/String;

.field private mPostData:Ljava/lang/String;

.field private mRLNClientIPAddress:Ljava/lang/String;

.field private mRequestMethod:Ljava/lang/String;

.field private mRequestType:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

.field private mRequestUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestType:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    .line 23
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mPostData:Ljava/lang/String;

    .line 27
    const-string v0, "en"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLanguage:Ljava/lang/String;

    .line 28
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptCharset:Ljava/lang/String;

    .line 29
    const-string v0, "close"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mConnection:Ljava/lang/String;

    .line 30
    const-string v0, "no-cache"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mCacheControl:Ljava/lang/String;

    .line 31
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAccept:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentTypeHeader:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLength:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentMd5:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mHost:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptLangauge:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptDateTime:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mDate:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRLNClientIPAddress:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 43
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mUserAgent:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestType:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    .line 23
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mPostData:Ljava/lang/String;

    .line 27
    const-string v0, "en"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLanguage:Ljava/lang/String;

    .line 28
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptCharset:Ljava/lang/String;

    .line 29
    const-string v0, "close"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mConnection:Ljava/lang/String;

    .line 30
    const-string v0, "no-cache"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mCacheControl:Ljava/lang/String;

    .line 31
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAccept:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentTypeHeader:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLength:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentMd5:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mHost:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptLangauge:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptDateTime:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mDate:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRLNClientIPAddress:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 43
    iput-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mUserAgent:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 52
    return-void
.end method

.method public static getTrackingRequest(Ljava/lang/String;Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)Lcom/pubmatic/sdk/common/network/HttpRequest;
    .locals 2

    .prologue
    .line 15
    new-instance v1, Lcom/pubmatic/sdk/common/network/HttpRequest;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/network/HttpRequest;-><init>()V

    .line 16
    invoke-virtual {v1, p0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;->PUB_TRACKER:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestType(Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;)V

    .line 18
    const-string v0, "GET"

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 19
    return-object v1

    .line 17
    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;->MOCEAN_TRACKER:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;->PHOENIX_TRACKER:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    goto :goto_0
.end method


# virtual methods
.method public appendRequestUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mConnection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mPostData:Ljava/lang/String;

    return-object v0
.end method

.method public getRLNClientIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRLNClientIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestType:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mConnection:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setContentType(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentType:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    .line 138
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mPostData:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setRLNClientIPAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRLNClientIPAddress:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setRequestType(Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestType:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    .line 146
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mRequestUrl:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpRequest;->mUserAgent:Ljava/lang/String;

    .line 68
    return-void
.end method
