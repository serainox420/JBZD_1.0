.class Lcom/apprupt/sdk/CvTestView;
.super Landroid/view/View;
.source "CvTestView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvTestView$Listener;
    }
.end annotation


# instance fields
.field a:Lcom/apprupt/sdk/CvTestView$Listener;

.field b:Landroid/os/Handler;


# virtual methods
.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 31
    iget-object v0, p0, Lcom/apprupt/sdk/CvTestView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/apprupt/sdk/CvTestView$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvTestView$1;-><init>(Lcom/apprupt/sdk/CvTestView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
