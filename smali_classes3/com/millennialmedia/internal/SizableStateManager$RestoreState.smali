.class Lcom/millennialmedia/internal/SizableStateManager$RestoreState;
.super Ljava/lang/Object;
.source "SizableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreState"
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager;

.field private b:Landroid/view/View;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/view/ViewGroup$LayoutParams;

.field private e:Landroid/graphics/Point;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;Lcom/millennialmedia/internal/SizableStateManager$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;-><init>(Lcom/millennialmedia/internal/SizableStateManager;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->c:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->f:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->e:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic b(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->e:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic e(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method
