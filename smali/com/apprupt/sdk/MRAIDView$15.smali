.class Lcom/apprupt/sdk/MRAIDView$15;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->m()V
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
    .line 609
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 612
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->m(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ResizeProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ResizeProperties;->f()Lcom/apprupt/sdk/adview/CloseButtonPosition;

    move-result-object v4

    .line 617
    const/4 v2, 0x1

    .line 618
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->m(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ResizeProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ResizeProperties;->d()I

    move-result v1

    .line 619
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->m(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ResizeProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ResizeProperties;->e()I

    move-result v0

    .line 620
    if-gez v1, :cond_3

    .line 621
    const/4 v2, 0x5

    .line 622
    const/16 v1, 0x12c

    move v3, v1

    move v1, v2

    .line 624
    :goto_1
    if-gez v0, :cond_2

    .line 625
    or-int/lit8 v1, v1, 0x8

    .line 626
    const/16 v0, 0x32

    move v2, v1

    move v1, v0

    .line 628
    :goto_2
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    new-instance v5, Lcom/apprupt/sdk/mediation/Size;

    invoke-direct {v5, v2, v3, v1}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 629
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$15$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/MRAIDView$15$1;-><init>(Lcom/apprupt/sdk/MRAIDView$15;)V

    invoke-virtual {v0, v4, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/adview/CloseButtonPosition;Ljava/lang/Runnable;)V

    .line 635
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$15$2;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$15$2;-><init>(Lcom/apprupt/sdk/MRAIDView$15;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_3
    move v3, v1

    move v1, v2

    goto :goto_1
.end method
