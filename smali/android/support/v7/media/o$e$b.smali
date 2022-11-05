.class final Landroid/support/v7/media/o$e$b;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/o$e;


# direct methods
.method constructor <init>(Landroid/support/v7/media/o$e;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Landroid/support/v7/media/o$e$b;->a:Landroid/support/v7/media/o$e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 201
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 202
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 203
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/o$e$b;->a:Landroid/support/v7/media/o$e;

    iget v1, v1, Landroid/support/v7/media/o$e;->b:I

    if-eq v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Landroid/support/v7/media/o$e$b;->a:Landroid/support/v7/media/o$e;

    invoke-virtual {v0}, Landroid/support/v7/media/o$e;->i()V

    .line 208
    :cond_0
    return-void
.end method
