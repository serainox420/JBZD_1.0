.class Landroid/support/v7/media/l$a$2;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/l$a;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/l$a;


# direct methods
.method constructor <init>(Landroid/support/v7/media/l$a;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Landroid/support/v7/media/l$a$2;->a:Landroid/support/v7/media/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/v7/media/l$a$2;->a:Landroid/support/v7/media/l$a;

    iget-object v0, v0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    iget-object v1, p0, Landroid/support/v7/media/l$a$2;->a:Landroid/support/v7/media/l$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l;->b(Landroid/support/v7/media/l$a;)V

    .line 559
    return-void
.end method
