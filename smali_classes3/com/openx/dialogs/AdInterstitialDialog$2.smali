.class Lcom/openx/dialogs/AdInterstitialDialog$2;
.super Ljava/lang/Object;
.source "AdInterstitialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdInterstitialDialog;->imageClickListener(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/dialogs/AdInterstitialDialog;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdInterstitialDialog;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/openx/dialogs/AdInterstitialDialog$2;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 133
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$2;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdTracking;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/openx/dialogs/AdInterstitialDialog$2;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v2, v2, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    const-class v3, Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v2, "EXTRA_IS_INTERSTITIAL"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    const-string v2, "EXTRA_URL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v0, "densityScalingEnabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v0, "EXTRA_ALLOW_ORIENTATION_CHANGES"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$2;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    :cond_0
    return-void

    .line 134
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
