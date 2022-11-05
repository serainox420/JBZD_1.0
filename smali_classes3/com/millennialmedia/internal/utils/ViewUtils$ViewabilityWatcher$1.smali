.class Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;
.super Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V
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
    .line 73
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-direct {p0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iput-object v1, v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->d:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 87
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    .line 88
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iput-object v1, v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->d:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    .line 80
    return-void
.end method
