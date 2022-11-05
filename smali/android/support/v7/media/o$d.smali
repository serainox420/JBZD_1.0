.class Landroid/support/v7/media/o$d;
.super Landroid/support/v7/media/o$c;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/o$f;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/o$c;-><init>(Landroid/content/Context;Landroid/support/v7/media/o$f;)V

    .line 813
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/media/o$b$b;Landroid/support/v7/media/a$a;)V
    .locals 1

    .prologue
    .line 818
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/o$c;->a(Landroid/support/v7/media/o$b$b;Landroid/support/v7/media/a$a;)V

    .line 820
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 821
    invoke-static {v0}, Landroid/support/v7/media/k$a;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_0

    .line 823
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->c(Ljava/lang/String;)Landroid/support/v7/media/a$a;

    .line 825
    :cond_0
    return-void
.end method

.method protected a(Landroid/support/v7/media/o$b$c;)V
    .locals 2

    .prologue
    .line 840
    invoke-super {p0, p1}, Landroid/support/v7/media/o$c;->a(Landroid/support/v7/media/o$b$c;)V

    .line 842
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 843
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->e()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {v0, v1}, Landroid/support/v7/media/k$b;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 844
    return-void
.end method

.method protected b(Landroid/support/v7/media/o$b$b;)Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/k$a;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Landroid/support/v7/media/o$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v7/media/o$d;->a:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1, p1}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 831
    return-void
.end method

.method protected j()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 848
    iget-boolean v1, p0, Landroid/support/v7/media/o$d;->g:Z

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Landroid/support/v7/media/o$d;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/media/o$d;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/media/o$d;->g:Z

    .line 853
    iget-object v1, p0, Landroid/support/v7/media/o$d;->a:Ljava/lang/Object;

    iget v2, p0, Landroid/support/v7/media/o$d;->e:I

    iget-object v3, p0, Landroid/support/v7/media/o$d;->b:Ljava/lang/Object;

    iget-boolean v4, p0, Landroid/support/v7/media/o$d;->f:Z

    if-eqz v4, :cond_1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    invoke-static {v1, v2, v3, v0}, Landroid/support/v7/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 856
    return-void

    .line 853
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
