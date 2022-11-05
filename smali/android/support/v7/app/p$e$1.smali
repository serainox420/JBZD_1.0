.class Landroid/support/v7/app/p$e$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p$e;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p$e;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Landroid/support/v7/app/p$e$1;->a:Landroid/support/v7/app/p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Landroid/support/v7/app/p$e$1;->a:Landroid/support/v7/app/p$e;

    iget-object v0, v0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->n:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/support/v7/app/p$e$1;->a:Landroid/support/v7/app/p$e;

    iget-object v0, v0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/p;->n:Landroid/support/v7/media/g$g;

    .line 1233
    iget-object v0, p0, Landroid/support/v7/app/p$e$1;->a:Landroid/support/v7/app/p$e;

    iget-object v0, v0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-boolean v0, v0, Landroid/support/v7/app/p;->z:Z

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Landroid/support/v7/app/p$e$1;->a:Landroid/support/v7/app/p$e;

    iget-object v0, v0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-object v1, p0, Landroid/support/v7/app/p$e$1;->a:Landroid/support/v7/app/p$e;

    iget-object v1, v1, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-boolean v1, v1, Landroid/support/v7/app/p;->A:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->a(Z)V

    .line 1237
    :cond_0
    return-void
.end method
