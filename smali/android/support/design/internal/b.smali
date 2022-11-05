.class Landroid/support/design/internal/b;
.super Landroid/support/design/internal/a;
.source "BottomNavigationAnimationHelperIcs.java"


# instance fields
.field private final a:Landroid/support/transition/z;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/design/internal/a;-><init>()V

    .line 31
    new-instance v0, Landroid/support/transition/a;

    invoke-direct {v0}, Landroid/support/transition/a;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    .line 32
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/transition/z;->a(I)Landroid/support/transition/z;

    .line 33
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    const-wide/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/support/transition/z;->a(J)Landroid/support/transition/m;

    .line 34
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    new-instance v1, Landroid/support/v4/view/b/b;

    invoke-direct {v1}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/z;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/m;

    .line 35
    new-instance v0, Landroid/support/design/internal/g;

    invoke-direct {v0}, Landroid/support/design/internal/g;-><init>()V

    .line 36
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    invoke-virtual {v1, v0}, Landroid/support/transition/z;->a(Landroid/support/transition/m;)Landroid/support/transition/z;

    .line 37
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    invoke-static {p1, v0}, Landroid/support/transition/t;->a(Landroid/view/ViewGroup;Landroid/support/transition/m;)V

    .line 41
    return-void
.end method
