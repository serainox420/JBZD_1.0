.class Landroid/support/transition/o$a;
.super Landroid/support/transition/y;
.source "TransitionIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/transition/q;


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/support/transition/y;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/support/transition/o$a;->a:Landroid/support/transition/q;

    .line 217
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/transition/o$a;->a:Landroid/support/transition/q;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/q;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/transition/o$a;->a:Landroid/support/transition/q;

    invoke-interface {v0, p1}, Landroid/support/transition/q;->a(Landroid/support/transition/ae;)V

    .line 222
    return-void
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/transition/o$a;->a:Landroid/support/transition/q;

    invoke-interface {v0, p1}, Landroid/support/transition/q;->b(Landroid/support/transition/ae;)V

    .line 227
    return-void
.end method
