.class final Lcom/flurry/sdk/gh$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gh;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 1292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 647
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 2292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 2485
    iget-boolean v0, v0, Lcom/flurry/sdk/gw;->f:Z

    .line 648
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    .line 649
    invoke-static {v0}, Lcom/flurry/sdk/gh;->d(Lcom/flurry/sdk/gh;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 3292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 3489
    iput-boolean v1, v0, Lcom/flurry/sdk/gw;->f:Z

    .line 663
    :cond_0
    :goto_0
    return v1

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 4188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 654
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    .line 655
    invoke-static {v0}, Lcom/flurry/sdk/gh;->d(Lcom/flurry/sdk/gh;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 5188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 656
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 6188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 657
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    goto :goto_0

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gh$6;->a:Lcom/flurry/sdk/gh;

    iget-object v0, v0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 7188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 660
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    goto :goto_0
.end method
