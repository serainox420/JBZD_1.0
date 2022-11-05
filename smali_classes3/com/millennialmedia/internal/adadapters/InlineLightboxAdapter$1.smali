.class Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;
.super Ljava/lang/Object;
.source "InlineLightboxAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    .line 46
    return-void
.end method

.method public attachSucceeded()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displaySucceeded()V

    .line 39
    return-void
.end method

.method public initFailed()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    .line 32
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initSucceeded()V

    .line 25
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onAdLeftApplication()V

    .line 60
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onClicked()V

    .line 53
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onCollapsed()V

    .line 74
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onExpanded()V

    .line 67
    return-void
.end method
