.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;
.super Ljava/lang/Object;
.source "LightboxController.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->a(Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

.field final synthetic b:Lcom/millennialmedia/internal/adcontrollers/LightboxController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;->b:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onAdLeftApplication()V

    .line 334
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onClicked()V

    .line 327
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initFailed()V

    .line 314
    return-void
.end method

.method public onLoaded()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initSucceeded()V

    .line 307
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method
