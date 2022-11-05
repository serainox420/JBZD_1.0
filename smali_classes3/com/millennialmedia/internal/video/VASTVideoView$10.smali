.class Lcom/millennialmedia/internal/video/VASTVideoView$10;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1115
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public onLoaded()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->p(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/MMWebView;)V

    .line 1102
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 1153
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0

    .prologue
    .line 1147
    return-void
.end method
