.class Landroid/support/v7/app/p$7;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Landroid/support/v7/app/p$7;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/app/p$7;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/app/p$7;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->d()Landroid/app/PendingIntent;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 377
    iget-object v1, p0, Landroid/support/v7/app/p$7;->a:Landroid/support/v7/app/p;

    invoke-virtual {v1}, Landroid/support/v7/app/p;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v1

    .line 379
    const-string v1, "MediaRouteCtrlDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was not sent, it had been canceled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
