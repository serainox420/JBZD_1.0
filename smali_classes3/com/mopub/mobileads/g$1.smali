.class Lcom/mopub/mobileads/g$1;
.super Ljava/lang/Object;
.source "VastIconConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mopub/mobileads/g;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/g;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mopub/mobileads/g$1;->c:Lcom/mopub/mobileads/g;

    iput-object p2, p0, Lcom/mopub/mobileads/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/g$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 3

    .prologue
    .line 160
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v0, :cond_1

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/mopub/mobileads/g$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "mopub-dsp-creative-id"

    iget-object v2, p0, Lcom/mopub/mobileads/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/g$1;->b:Landroid/content/Context;

    const-class v2, Lcom/mopub/common/MoPubBrowser;

    invoke-static {v1, v2, v0}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/g$1;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
