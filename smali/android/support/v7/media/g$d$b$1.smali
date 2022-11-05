.class Landroid/support/v7/media/g$d$b$1;
.super Landroid/support/v4/media/f;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/g$d$b;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/g$d$b;


# direct methods
.method constructor <init>(Landroid/support/v7/media/g$d$b;III)V
    .locals 0

    .prologue
    .line 2766
    iput-object p1, p0, Landroid/support/v7/media/g$d$b$1;->a:Landroid/support/v7/media/g$d$b;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/media/f;-><init>(III)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2

    .prologue
    .line 2769
    iget-object v0, p0, Landroid/support/v7/media/g$d$b$1;->a:Landroid/support/v7/media/g$d$b;

    iget-object v0, v0, Landroid/support/v7/media/g$d$b;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    new-instance v1, Landroid/support/v7/media/g$d$b$1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/g$d$b$1$1;-><init>(Landroid/support/v7/media/g$d$b$1;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g$d$a;->post(Ljava/lang/Runnable;)Z

    .line 2777
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 2781
    iget-object v0, p0, Landroid/support/v7/media/g$d$b$1;->a:Landroid/support/v7/media/g$d$b;

    iget-object v0, v0, Landroid/support/v7/media/g$d$b;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    new-instance v1, Landroid/support/v7/media/g$d$b$1$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/g$d$b$1$2;-><init>(Landroid/support/v7/media/g$d$b$1;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g$d$a;->post(Ljava/lang/Runnable;)Z

    .line 2789
    return-void
.end method
