.class Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;
.super Ljava/lang/Object;
.source "SizableStateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->attachCloseControl(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;->a:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;->a:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->close()V

    .line 124
    return-void
.end method
