.class Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;
.super Ljava/lang/Object;
.source "SizableStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 366
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    .line 367
    return-void
.end method
