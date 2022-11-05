.class Lcom/apprupt/sdk/MRAIDView$13;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$13;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$13;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->l(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$13;->a:Lcom/apprupt/sdk/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;Z)Z

    .line 580
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$13;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$13;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->d()Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;->c()V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$13;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a()Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;->c()V

    goto :goto_0
.end method
