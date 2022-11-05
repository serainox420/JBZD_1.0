.class Landroid/support/v7/app/p$9;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;Z)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Landroid/support/v7/app/p$9;->b:Landroid/support/v7/app/p;

    iput-boolean p2, p0, Landroid/support/v7/app/p$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/app/p$9;->b:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/app/p$9;->b:Landroid/support/v7/app/p;

    iget-boolean v0, v0, Landroid/support/v7/app/p;->C:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/support/v7/app/p$9;->b:Landroid/support/v7/app/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/p;->D:Z

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p$9;->b:Landroid/support/v7/app/p;

    iget-boolean v1, p0, Landroid/support/v7/app/p$9;->a:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->c(Z)V

    goto :goto_0
.end method
