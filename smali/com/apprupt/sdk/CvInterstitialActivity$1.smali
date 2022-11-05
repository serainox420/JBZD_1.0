.class Lcom/apprupt/sdk/CvInterstitialActivity$1;
.super Ljava/lang/Object;
.source "CvInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialActivity$1;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$1;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$1;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvInterstitialActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$1;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvInterstitialActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$1;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvInterstitialActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$1;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->finish()V

    goto :goto_1
.end method
