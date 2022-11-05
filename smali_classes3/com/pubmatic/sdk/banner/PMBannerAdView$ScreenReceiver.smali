.class public Lcom/pubmatic/sdk/banner/PMBannerAdView$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PMBannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 3308
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ScreenReceiver;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 3312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3313
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isScreenOn:Z

    .line 3317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ScreenReceiver;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    sget-boolean v1, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isScreenOn:Z

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setMraidViewable(Z)V

    .line 3318
    return-void

    .line 3314
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3315
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isScreenOn:Z

    goto :goto_0
.end method
