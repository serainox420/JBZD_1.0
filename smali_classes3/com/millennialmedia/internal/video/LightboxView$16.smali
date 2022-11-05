.class Lcom/millennialmedia/internal/video/LightboxView$16;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

.field final synthetic b:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
    .locals 0

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$16;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$16;->a:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1436
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$16;->a:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onAdLeftApplication()V

    .line 1416
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$16;->a:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onClicked()V

    .line 1409
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 1396
    return-void
.end method

.method public onLoaded()V
    .locals 0

    .prologue
    .line 1390
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 1402
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 1448
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0

    .prologue
    .line 1442
    return-void
.end method
