.class Lcom/apprupt/sdk/MRAIDView$16;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->n()V
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
    .line 646
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->c:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-ne v0, v1, :cond_2

    .line 651
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 652
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->q()V

    .line 653
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$16$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$16$1;-><init>(Lcom/apprupt/sdk/MRAIDView$16;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-ne v0, v1, :cond_3

    .line 660
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->c(Lcom/apprupt/sdk/mediation/Size;)V

    .line 661
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$16$2;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$16$2;-><init>(Lcom/apprupt/sdk/MRAIDView$16;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 668
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;->a()Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_4

    .line 670
    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;->a()V

    .line 672
    :cond_4
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->b()V

    goto :goto_0

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->d()Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_6

    .line 676
    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;->a()V

    .line 678
    :cond_6
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->b()V

    goto/16 :goto_0
.end method
