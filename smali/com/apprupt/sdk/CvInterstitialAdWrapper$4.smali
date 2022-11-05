.class Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;
.super Ljava/lang/Object;
.source "CvInterstitialAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialAdWrapper;->c()V
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
    .line 97
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->b(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvMediator;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->i()Lcom/apprupt/sdk/mediation/Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-interface {v0, v1, v2, v3}, Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;->a(Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 101
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;->a:Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/CvInterstitialAdWrapper;Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    .line 102
    return-void
.end method
