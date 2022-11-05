.class Lcom/apprupt/sdk/CvInterstitialActivity$4;
.super Ljava/lang/Object;
.source "CvInterstitialActivity.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 130
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialActivity$4;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$4;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->finish()V

    .line 154
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$4;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->finish()V

    .line 159
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$4;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->c(Lcom/apprupt/sdk/CvInterstitialActivity;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity$4;->a:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->c(Lcom/apprupt/sdk/CvInterstitialActivity;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialFirstTap()V

    .line 166
    :cond_0
    return-void
.end method
