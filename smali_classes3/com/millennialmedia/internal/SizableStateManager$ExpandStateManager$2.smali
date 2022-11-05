.class Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;
.super Ljava/lang/Object;
.source "SizableStateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->e()V
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
    .line 415
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->close()V

    .line 420
    return-void
.end method
