.class Landroid/support/transition/y$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/y;->a(Landroid/animation/Animator;Landroid/support/v4/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/f/a;

.field final synthetic b:Landroid/support/transition/y;


# direct methods
.method constructor <init>(Landroid/support/transition/y;Landroid/support/v4/f/a;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Landroid/support/transition/y$1;->b:Landroid/support/transition/y;

    iput-object p2, p0, Landroid/support/transition/y$1;->a:Landroid/support/v4/f/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/transition/y$1;->a:Landroid/support/v4/f/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Landroid/support/transition/y$1;->b:Landroid/support/transition/y;

    iget-object v0, v0, Landroid/support/transition/y;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/transition/y$1;->b:Landroid/support/transition/y;

    iget-object v0, v0, Landroid/support/transition/y;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method
