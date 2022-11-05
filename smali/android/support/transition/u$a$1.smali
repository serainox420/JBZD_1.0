.class Landroid/support/transition/u$a$1;
.super Landroid/support/transition/y$c;
.source "TransitionManagerPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/u$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/f/a;

.field final synthetic b:Landroid/support/transition/u$a;


# direct methods
.method constructor <init>(Landroid/support/transition/u$a;Landroid/support/v4/f/a;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Landroid/support/transition/u$a$1;->b:Landroid/support/transition/u$a;

    iput-object p2, p0, Landroid/support/transition/u$a$1;->a:Landroid/support/v4/f/a;

    invoke-direct {p0}, Landroid/support/transition/y$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/y;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/transition/u$a$1;->a:Landroid/support/v4/f/a;

    iget-object v1, p0, Landroid/support/transition/u$a$1;->b:Landroid/support/transition/u$a;

    iget-object v1, v1, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    .line 435
    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 436
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method
