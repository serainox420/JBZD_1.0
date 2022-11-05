.class Landroid/support/v7/media/MediaRouteProviderService$1;
.super Landroid/support/v7/media/g$c;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/MediaRouteProviderService$a;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Landroid/os/Messenger;

.field final synthetic e:I

.field final synthetic f:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$a;ILandroid/content/Intent;Landroid/os/Messenger;I)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->f:Landroid/support/v7/media/MediaRouteProviderService;

    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->a:Landroid/support/v7/media/MediaRouteProviderService$a;

    iput p3, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->b:I

    iput-object p4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->c:Landroid/content/Intent;

    iput-object p5, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->d:Landroid/os/Messenger;

    iput p6, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->e:I

    invoke-direct {p0}, Landroid/support/v7/media/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 348
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->a:Landroid/support/v7/media/MediaRouteProviderService$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Route control request succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controllerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->f:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->d:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 355
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->d:Landroid/os/Messenger;

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->e:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 358
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 362
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->a:Landroid/support/v7/media/MediaRouteProviderService$a;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Route control request failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", controllerId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", intent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->c:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", error="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", data="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->f:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->d:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 369
    if-eqz p1, :cond_2

    .line 370
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 371
    const-string v0, "error"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->d:Landroid/os/Messenger;

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->e:I

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->d:Landroid/os/Messenger;

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->e:I

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method
