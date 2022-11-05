.class Lcom/pubmatic/sdk/banner/PMBannerAdView$12;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3241
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$12;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$12;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3244
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$12;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3248
    :goto_0
    return-void

    .line 3245
    :catch_0
    move-exception v0

    .line 3246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during runOnUiThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method
