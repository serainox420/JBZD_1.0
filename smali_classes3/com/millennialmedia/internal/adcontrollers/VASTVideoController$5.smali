.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->attach(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdContainer;

.field final synthetic b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Lcom/millennialmedia/internal/AdContainer;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->a:Lcom/millennialmedia/internal/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 332
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoView instance is null, unable to attach"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachFailed()V

    .line 351
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 342
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->a:Lcom/millennialmedia/internal/AdContainer;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->f(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;->updateLayout()V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachSucceeded()V

    goto :goto_0
.end method
