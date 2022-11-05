.class public Lcom/adcolony/sdk/OverlayActivityImpl;
.super Lcom/adcolony/sdk/bi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/adcolony/sdk/bi;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method public bridge synthetic injectCallbackResult(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0, p1, p2}, Lcom/adcolony/sdk/bi;->injectCallbackResult(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBackPressed()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcom/adcolony/sdk/bi;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0, p1}, Lcom/adcolony/sdk/bi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0, p1}, Lcom/adcolony/sdk/bi;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
