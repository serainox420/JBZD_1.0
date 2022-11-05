.class Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;
.super Ljava/lang/Object;
.source "CvInterstitialAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialAdWrapper;->t()V
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
    .line 87
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 91
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    .line 92
    return-void
.end method
