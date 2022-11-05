.class Landroid/support/v7/media/l$a$1;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/l$a;->b()V
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
    .line 476
    iput-object p1, p0, Landroid/support/v7/media/l$a$1;->a:Landroid/support/v7/media/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v7/media/l$a$1;->a:Landroid/support/v7/media/l$a;

    invoke-virtual {v0}, Landroid/support/v7/media/l$a;->c()V

    .line 480
    return-void
.end method
