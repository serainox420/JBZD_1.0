.class final Landroid/support/v7/media/g$d$d;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/g$d;

.field private final b:Landroid/support/v7/media/n;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/media/g$d;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2810
    iput-object p1, p0, Landroid/support/v7/media/g$d$d;->a:Landroid/support/v7/media/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2811
    iget-object v0, p1, Landroid/support/v7/media/g$d;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/support/v7/media/n;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v7/media/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/g$d$d;->b:Landroid/support/v7/media/n;

    .line 2812
    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->b:Landroid/support/v7/media/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/n;->a(Landroid/support/v7/media/n$d;)V

    .line 2813
    invoke-virtual {p0}, Landroid/support/v7/media/g$d$d;->c()V

    .line 2814
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->b:Landroid/support/v7/media/n;

    invoke-virtual {v0}, Landroid/support/v7/media/n;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 2831
    iget-boolean v0, p0, Landroid/support/v7/media/g$d$d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_0

    .line 2832
    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/g$g;->a(I)V

    .line 2834
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 2821
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/g$d$d;->c:Z

    .line 2822
    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->b:Landroid/support/v7/media/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/n;->a(Landroid/support/v7/media/n$d;)V

    .line 2823
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 2838
    iget-boolean v0, p0, Landroid/support/v7/media/g$d$d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_0

    .line 2839
    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/g$g;->b(I)V

    .line 2841
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 2826
    iget-object v0, p0, Landroid/support/v7/media/g$d$d;->b:Landroid/support/v7/media/n;

    iget-object v1, p0, Landroid/support/v7/media/g$d$d;->a:Landroid/support/v7/media/g$d;

    iget-object v1, v1, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/n;->a(Landroid/support/v7/media/n$c;)V

    .line 2827
    return-void
.end method
