.class Landroid/support/v7/media/m$2;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/m;


# direct methods
.method constructor <init>(Landroid/support/v7/media/m;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Landroid/support/v7/media/m$2;->a:Landroid/support/v7/media/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/media/m$2;->a:Landroid/support/v7/media/m;

    invoke-virtual {v0}, Landroid/support/v7/media/m;->b()V

    .line 150
    return-void
.end method
