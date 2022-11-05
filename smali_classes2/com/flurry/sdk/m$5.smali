.class final Lcom/flurry/sdk/m$5;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/x;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/flurry/sdk/m$5;->d:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    iput-object p3, p0, Lcom/flurry/sdk/m$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 291
    invoke-static {}, Lcom/flurry/sdk/m;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdCacheNative: Attempting to play video from:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    .line 1171
    iget v3, v3, Lcom/flurry/sdk/o;->b:I

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/m$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v2, Lcom/flurry/sdk/gk;

    iget-object v0, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    invoke-direct {v2, v0, v3}, Lcom/flurry/sdk/gk;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 293
    iget-object v3, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    iget-object v4, p0, Lcom/flurry/sdk/m$5;->b:Ljava/lang/String;

    .line 1701
    iget-object v0, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    if-eqz v0, :cond_4

    .line 1702
    iget-object v0, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->removeAllViews()V

    .line 1703
    iget-object v0, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1704
    const/4 v0, 0x1

    .line 1706
    :goto_0
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    .line 1709
    :goto_1
    iput-object v2, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    .line 1710
    iget-object v5, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v5, v4}, Lcom/flurry/sdk/gj;->setVideoUrl(Ljava/lang/String;)V

    .line 1712
    iget-object v5, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v5}, Lcom/flurry/sdk/gj;->getVideoController()Lcom/flurry/sdk/gu;

    move-result-object v5

    iput-object v5, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 1713
    iget-object v5, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 2081
    if-eqz v4, :cond_0

    iget-object v6, v5, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v6, :cond_0

    .line 2082
    iget-object v5, v5, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 2124
    if-nez v4, :cond_2

    .line 2125
    sget-object v4, Lcom/flurry/sdk/gw;->a:Ljava/lang/String;

    const-string v5, "Video setVideoURI cannot have null value."

    invoke-static {v7, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1714
    :cond_0
    :goto_2
    iget-object v4, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    invoke-virtual {v4}, Lcom/flurry/sdk/gu;->a()V

    .line 1715
    iget-object v4, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    invoke-virtual {v4}, Lcom/flurry/sdk/gu;->f()V

    .line 1716
    iget-object v4, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 2284
    iput-boolean v1, v4, Lcom/flurry/sdk/gu;->f:Z

    .line 1718
    iget-object v4, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 3188
    iget-object v4, v4, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 1718
    invoke-virtual {v4}, Lcom/flurry/sdk/gv;->a()V

    .line 1719
    iget-object v4, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 4188
    iget-object v4, v4, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 1719
    iget-object v5, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 4292
    iget-object v5, v5, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1719
    invoke-virtual {v4, v5}, Lcom/flurry/sdk/gv;->setAnchorView(Landroid/view/View;)V

    .line 1720
    iget-object v4, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 5292
    iget-object v4, v4, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1720
    iget-object v5, v3, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 6188
    iget-object v5, v5, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 1720
    invoke-virtual {v4, v5}, Lcom/flurry/sdk/gw;->setMediaController(Landroid/widget/MediaController;)V

    .line 1722
    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->p()V

    .line 1724
    iget-object v0, v3, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->o()V

    .line 295
    :cond_1
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/flurry/sdk/m$5;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v3}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 296
    iget-object v3, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 300
    iget-object v0, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/flurry/sdk/m$5;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 302
    return-void

    .line 2128
    :cond_2
    iput v1, v5, Lcom/flurry/sdk/gw;->c:I

    .line 2129
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method
