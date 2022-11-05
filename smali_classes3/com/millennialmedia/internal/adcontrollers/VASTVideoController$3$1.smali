.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->close()V

    .line 278
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onClick()V

    .line 264
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 256
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 257
    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    .line 271
    return-void
.end method

.method public onLoaded()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initSucceeded()V

    .line 249
    return-void
.end method
