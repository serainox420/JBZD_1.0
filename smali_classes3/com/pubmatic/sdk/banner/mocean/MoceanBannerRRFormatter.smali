.class public Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;
.super Ljava/lang/Object;
.source "MoceanBannerRRFormatter.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/RRFormatter;


# instance fields
.field private mRequest:Lcom/pubmatic/sdk/common/AdRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatRequest(Lcom/pubmatic/sdk/common/AdRequest;)Lcom/pubmatic/sdk/common/network/HttpRequest;
    .locals 3

    .prologue
    .line 24
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;

    .line 26
    new-instance v1, Lcom/pubmatic/sdk/common/network/HttpRequest;

    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->URL_ENCODED:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    invoke-direct {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V

    .line 27
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setUserAgent(Ljava/lang/String;)V

    .line 28
    const-string v2, "close"

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setConnection(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getAdServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setPostData(Ljava/lang/String;)V

    .line 31
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    return-object v1
.end method

.method public formatResponse(Lcom/pubmatic/sdk/common/network/HttpResponse;)Lcom/pubmatic/sdk/common/AdResponse;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 38
    new-instance v2, Lcom/pubmatic/sdk/common/AdResponse;

    invoke-direct {v2}, Lcom/pubmatic/sdk/common/AdResponse;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v2, v1}, Lcom/pubmatic/sdk/common/AdResponse;->setRequest(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 46
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 47
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 50
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpResponse;->getResponseData()Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 54
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 55
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    .line 56
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 57
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v4, "error"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    const/4 v1, 0x0

    const-string v4, "code"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 67
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 68
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    invoke-virtual {v2, v1}, Lcom/pubmatic/sdk/common/AdResponse;->setErrorCode(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v0}, Lcom/pubmatic/sdk/common/AdResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 100
    :cond_1
    :goto_1
    return-object v2

    .line 76
    :cond_2
    const-string v4, "ad"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Lcom/pubmatic/sdk/common/AdResponse;->setRenderable(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 96
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/pubmatic/sdk/common/AdResponse;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    throw v0

    .line 90
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 91
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public getAdRequest()Lcom/pubmatic/sdk/common/AdRequest;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    return-object v0
.end method

.method public getRequest()Lcom/pubmatic/sdk/common/AdRequest;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    return-object v0
.end method

.method public setAdRequest(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 110
    return-void
.end method

.method public setRequest(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 118
    return-void
.end method
