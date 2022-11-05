.class Lcom/millennialmedia/internal/adcontrollers/WebController$5;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Lcom/millennialmedia/internal/SizableStateManager$SizableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->a()Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsed()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateCollapsed()V

    .line 311
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onCollapsed()V

    .line 312
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager;

    .line 314
    :cond_0
    return-void
.end method

.method public onCollapsing()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 302
    :cond_0
    return-void
.end method

.method public onExpandFailed()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 321
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateExpanded()V

    .line 290
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onExpanded()V

    .line 292
    :cond_0
    return-void
.end method

.method public onExpanding()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 281
    :cond_0
    return-void
.end method

.method public onResized(II)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResized()V

    .line 247
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onResized(IIZ)V

    .line 249
    :cond_0
    return-void
.end method

.method public onResizing(II)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onResize(II)V

    .line 238
    :cond_0
    return-void
.end method

.method public onUnresized(II)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateUnresized()V

    .line 268
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onResized(IIZ)V

    .line 269
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager;

    .line 271
    :cond_0
    return-void
.end method

.method public onUnresizing(II)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 259
    :cond_0
    return-void
.end method
