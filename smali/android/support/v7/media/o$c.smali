.class Landroid/support/v7/media/o$c;
.super Landroid/support/v7/media/o$b;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private j:Landroid/support/v7/media/j$a;

.field private k:Landroid/support/v7/media/j$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/o$f;)V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/o$b;-><init>(Landroid/content/Context;Landroid/support/v7/media/o$f;)V

    .line 741
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/media/o$b$b;Landroid/support/v7/media/a$a;)V
    .locals 1

    .prologue
    .line 766
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/o$b$b;Landroid/support/v7/media/a$a;)V

    .line 768
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/j$e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->a(Z)Landroid/support/v7/media/a$a;

    .line 772
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$c;->b(Landroid/support/v7/media/o$b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->b(Z)Landroid/support/v7/media/a$a;

    .line 776
    :cond_1
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 777
    invoke-static {v0}, Landroid/support/v7/media/j$e;->b(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->g(I)Landroid/support/v7/media/a$a;

    .line 781
    :cond_2
    return-void
.end method

.method protected b(Landroid/support/v7/media/o$b$b;)Z
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Landroid/support/v7/media/o$c;->k:Landroid/support/v7/media/j$d;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Landroid/support/v7/media/j$d;

    invoke-direct {v0}, Landroid/support/v7/media/j$d;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/o$c;->k:Landroid/support/v7/media/j$d;

    .line 803
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/o$c;->k:Landroid/support/v7/media/j$d;

    iget-object v1, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/j$d;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 745
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$c;->f(Ljava/lang/Object;)I

    move-result v0

    .line 746
    if-ltz v0, :cond_0

    .line 747
    iget-object v1, p0, Landroid/support/v7/media/o$c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 749
    invoke-static {p1}, Landroid/support/v7/media/j$e;->b(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 752
    :goto_0
    iget-object v2, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    .line 753
    invoke-virtual {v2}, Landroid/support/v7/media/a;->s()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 754
    new-instance v2, Landroid/support/v7/media/a$a;

    iget-object v3, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    invoke-direct {v2, v3}, Landroid/support/v7/media/a$a;-><init>(Landroid/support/v7/media/a;)V

    .line 756
    invoke-virtual {v2, v1}, Landroid/support/v7/media/a$a;->g(I)Landroid/support/v7/media/a$a;

    move-result-object v1

    .line 757
    invoke-virtual {v1}, Landroid/support/v7/media/a$a;->a()Landroid/support/v7/media/a;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    .line 758
    invoke-virtual {p0}, Landroid/support/v7/media/o$c;->i()V

    .line 761
    :cond_0
    return-void

    .line 751
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 785
    invoke-super {p0}, Landroid/support/v7/media/o$b;->j()V

    .line 787
    iget-object v0, p0, Landroid/support/v7/media/o$c;->j:Landroid/support/v7/media/j$a;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Landroid/support/v7/media/j$a;

    .line 789
    invoke-virtual {p0}, Landroid/support/v7/media/o$c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/o$c;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/j$a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/o$c;->j:Landroid/support/v7/media/j$a;

    .line 791
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/o$c;->j:Landroid/support/v7/media/j$a;

    iget-boolean v0, p0, Landroid/support/v7/media/o$c;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/media/o$c;->e:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/media/j$a;->a(I)V

    .line 792
    return-void

    .line 791
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 796
    invoke-static {p0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
