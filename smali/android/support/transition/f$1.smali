.class Landroid/support/transition/f$1;
.super Landroid/support/transition/y$c;
.source "ChangeBoundsPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/f;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/transition/f;


# direct methods
.method constructor <init>(Landroid/support/transition/f;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/transition/f$1;->b:Landroid/support/transition/f;

    invoke-direct {p0}, Landroid/support/transition/y$c;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/f$1;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/y;)V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/support/transition/f$1;->a:Z

    if-nez v0, :cond_0

    .line 212
    :cond_0
    return-void
.end method

.method public b(Landroid/support/transition/y;)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public c(Landroid/support/transition/y;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
