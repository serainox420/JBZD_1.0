.class final enum Lcom/mopub/common/UrlAction$1;
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
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler;->a()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    move-result-object v1

    .line 52
    const-string v2, "finishLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v1}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onFinishLoad()V

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onClose()V

    goto :goto_0

    .line 56
    :cond_1
    const-string v2, "failLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v1}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onFailLoad()V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not handle MoPub Scheme url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "mopub"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
