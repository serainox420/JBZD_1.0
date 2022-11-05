.class final Lcom/apprupt/sdk/CvInterstitialActivity$2;
.super Ljava/lang/Object;
.source "CvInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialActivity;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/apprupt/sdk/CvInterstitialAdWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->b:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apprupt/sdk/CvSDK;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialActivity;->e()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "App in foreground., fire!"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialActivity;->f()I

    move-result v0

    .line 57
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialActivity;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->b:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialActivity;->i()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Posting interstitial data to queue, id "

    aput-object v3, v2, v4

    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialActivity;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "interstitialId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->a:Landroid/content/Context;

    const-class v3, Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialActivity;->e()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "App is not in foreground.."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$2;->b:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->s()V

    goto :goto_0
.end method
