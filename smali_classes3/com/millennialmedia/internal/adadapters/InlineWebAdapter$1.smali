.class Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;
.super Ljava/lang/Object;
.source "InlineWebAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    .line 52
    return-void
.end method

.method public attachSucceeded()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displaySucceeded()V

    .line 45
    return-void
.end method

.method public initFailed()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    .line 38
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initSucceeded()V

    .line 31
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onAdLeftApplication()V

    .line 66
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onClicked()V

    .line 59
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onCollapsed()V

    .line 94
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onExpanded()V

    .line 87
    return-void
.end method

.method public onResize(II)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onResize(II)V

    .line 73
    return-void
.end method

.method public onResized(IIZ)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onResized(IIZ)V

    .line 80
    return-void
.end method
