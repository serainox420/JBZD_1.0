.class Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;
.super Ljava/lang/Object;
.source "CvInterstitialAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialAdWrapper;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    new-instance v2, Lcom/apprupt/sdk/MRAIDView;

    iget-object v3, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    const/4 v4, 0x1

    new-instance v5, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2$1;

    invoke-direct {v5, p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2$1;-><init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;)V

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/apprupt/sdk/MRAIDView;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvAdWrapper;ZLjava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/CvInterstitialAdWrapper;Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView;

    .line 81
    return-void
.end method
