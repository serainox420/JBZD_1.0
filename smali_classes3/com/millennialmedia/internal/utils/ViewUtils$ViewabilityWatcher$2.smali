.class Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 118
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-boolean v1, v1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 127
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 129
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iput-boolean v2, v1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;)V

    .line 137
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;Z)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    goto :goto_0
.end method
