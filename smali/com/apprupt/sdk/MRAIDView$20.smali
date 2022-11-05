.class Lcom/apprupt/sdk/MRAIDView$20;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;Z)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-boolean p2, p0, Lcom/apprupt/sdk/MRAIDView$20;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->n(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v0

    .line 747
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->n(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apprupt/sdk/MRAIDView$20;->a:Z

    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/adview/ExpandProperties;->a(Z)V

    .line 748
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->n(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v1

    .line 749
    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    .line 750
    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v2, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-eq v0, v2, :cond_2

    const-string v0, "interstitial"

    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v2}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$20;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Z)V

    goto :goto_0
.end method
