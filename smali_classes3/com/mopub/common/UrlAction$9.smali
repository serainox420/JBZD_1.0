.class final enum Lcom/mopub/common/UrlAction$9;
.super Lcom/mopub/common/UrlAction;
.source "UrlAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/UrlAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .prologue
    .line 213
    const-string v0, "navigate"

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Deeplink+ URL did not have \'navigate\' as the host."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    :try_start_0
    const-string v0, "primaryUrl"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v1, "primaryTrackingUrl"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 225
    const-string v2, "fallbackUrl"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    const-string v3, "fallbackTrackingUrl"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 234
    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Deeplink+ did not have \'primaryUrl\' query param."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :catch_0
    move-exception v0

    .line 230
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Deeplink+ URL was not a hierarchical URI."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/mopub/common/UrlAction$9;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Deeplink+ had another Deeplink+ as the \'primaryUrl\'."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    :try_start_1
    invoke-static {p1, v0}, Lcom/mopub/common/util/Intents;->launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 249
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v1, p1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V
    :try_end_1
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_0
    return-void

    .line 251
    :catch_1
    move-exception v0

    .line 256
    if-nez v2, :cond_3

    .line 257
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Unable to handle \'primaryUrl\' for Deeplink+ and \'fallbackUrl\' was missing."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/UrlAction$9;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Deeplink+ URL had another Deeplink+ URL as the \'fallbackUrl\'."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p3, p1, v2, v0, v3}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    goto :goto_0
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 202
    const-string v0, "deeplink+"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
