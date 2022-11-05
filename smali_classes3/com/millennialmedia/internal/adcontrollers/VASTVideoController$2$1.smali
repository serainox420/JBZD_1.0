.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->close()V

    .line 213
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onClick()V

    .line 186
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 173
    return-void
.end method

.method public onLoaded()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->b:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initSucceeded()V

    .line 166
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method
