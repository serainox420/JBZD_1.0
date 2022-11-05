.class public Lcom/openx/view/mraid/methods/Open;
.super Ljava/lang/Object;
.source "Open.java"


# instance fields
.field adBaseView:Lcom/openx/view/WebViewBase;

.field private context:Landroid/content/Context;

.field jsi:Lcom/openx/view/mraid/BaseJSInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Open;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/openx/view/mraid/methods/Open;->adBaseView:Lcom/openx/view/WebViewBase;

    .line 28
    iput-object p2, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/methods/Open;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public open(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    new-instance v1, Lcom/openx/view/mraid/methods/Open$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/Open$1;-><init>(Lcom/openx/view/mraid/methods/Open;)V

    invoke-virtual {v0, p1, v1}, Lcom/openx/view/mraid/BaseJSInterface;->followToOriginalUrl(Ljava/lang/String;Lcom/openx/view/mraid/network/RedirectURLListener;)V

    .line 89
    return-void
.end method

.method public showModalAd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    const-string v0, "check_perm_to_proc_url"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    const-string v0, "perm_granted"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iget-object v3, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/openx/view/mraid/BaseJSInterface;->setLaunchWithURL(Z)V

    .line 101
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->isLaunchWithURL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0, p2}, Lcom/openx/view/mraid/BaseJSInterface;->setURLForLaunching(Ljava/lang/String;)V

    .line 104
    const-string v0, "show_inapp_browser"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    iget-object v3, p0, Lcom/openx/view/mraid/methods/Open;->adBaseView:Lcom/openx/view/WebViewBase;

    instance-of v3, v3, Lcom/openx/view/WebViewInterstitial;

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "EXTRA_IS_INTERSTITIAL"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v3}, Lcom/openx/view/mraid/BaseJSInterface;->isLaunchWithURL()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/openx/view/mraid/methods/Open;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v3}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v3}, Lcom/openx/view/mraid/BaseJSInterface;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_1

    .line 124
    const-string v4, "EXTRA_WIDTH"

    invoke-virtual {v3}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v4, "EXTRA_HEIGHT"

    invoke-virtual {v3}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const-string v3, "EXTRA_AD"

    iget-object v4, p0, Lcom/openx/view/mraid/methods/Open;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v4}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    iget-object v3, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v3}, Lcom/openx/view/mraid/BaseJSInterface;->isLaunchWithURL()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    const-string v3, "EXTRA_URL"

    iget-object v4, p0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v4}, Lcom/openx/view/mraid/BaseJSInterface;->getURLForLaunching()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_2
    const-string v3, "densityScalingEnabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    const-string v2, "EXTRA_ALLOW_ORIENTATION_CHANGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 143
    return-void

    :cond_3
    move v0, v2

    .line 99
    goto/16 :goto_0

    .line 108
    :cond_4
    const-string v0, "starting_interstitial"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
