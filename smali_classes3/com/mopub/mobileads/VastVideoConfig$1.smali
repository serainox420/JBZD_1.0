.class Lcom/mopub/mobileads/VastVideoConfig$1;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoConfig;->a(Landroid/content/Context;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/mopub/mobileads/VastVideoConfig;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->c:Lcom/mopub/mobileads/VastVideoConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 4

    .prologue
    .line 483
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v0, :cond_0

    .line 484
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 485
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "mopub-dsp-creative-id"

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->c:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoConfig;->a(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-class v1, Lcom/mopub/common/MoPubBrowser;

    .line 489
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->b:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did you "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "declare it in your AndroidManifest.xml?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :catch_1
    move-exception v0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did you "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "declare it in your AndroidManifest.xml?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
