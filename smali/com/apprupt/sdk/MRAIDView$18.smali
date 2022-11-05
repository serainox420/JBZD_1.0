.class Lcom/apprupt/sdk/MRAIDView$18;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->p()V
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
    .line 696
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;->a()Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_0

    .line 703
    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;->b()V

    goto :goto_0

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-ne v0, v1, :cond_3

    .line 707
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->k(Lcom/apprupt/sdk/MRAIDView;)V

    goto :goto_0

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$18;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->d()Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    .line 711
    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;->b()V

    goto :goto_0
.end method
