.class Lcom/amazon/device/ads/WebUtils2;
.super Ljava/lang/Object;
.source "WebUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/WebUtils2$1;,
        Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;
    }
.end annotation


# instance fields
.field private final webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;-><init>(Lcom/amazon/device/ads/WebUtils2$1;)V

    iput-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    .line 41
    return-void
.end method


# virtual methods
.method public encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public executeWebRequestInThread(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->executeWebRequestInThread(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUrlValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
