.class Lcom/loopme/LoopMeBanner$1;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/LoopMeBanner;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/LoopMeBanner;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/loopme/LoopMeBanner;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/loopme/LoopMeBanner$1;->this$0:Lcom/loopme/LoopMeBanner;

    iput-object p2, p0, Lcom/loopme/LoopMeBanner$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcom/loopme/LoopMeBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGlobalLayout"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$1;->this$0:Lcom/loopme/LoopMeBanner;

    iget-object v0, v0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/LoopMeBanner$1;->this$0:Lcom/loopme/LoopMeBanner;

    iget-object v0, v0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    .line 256
    invoke-virtual {v0}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$1;->this$0:Lcom/loopme/LoopMeBanner;

    invoke-static {v0}, Lcom/loopme/LoopMeBanner;->access$100(Lcom/loopme/LoopMeBanner;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
