.class final Landroid/support/v7/app/p$d;
.super Landroid/support/v7/media/g$a;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Landroid/support/v7/app/p$d;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Landroid/support/v7/media/g$a;-><init>()V

    .line 1131
    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Landroid/support/v7/app/p$d;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->a(Z)V

    .line 1141
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/support/v7/app/p$d;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->a(Z)V

    .line 1136
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 5

    .prologue
    .line 1145
    iget-object v0, p0, Landroid/support/v7/app/p$d;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->o:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 1146
    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->q()I

    move-result v1

    .line 1147
    sget-boolean v2, Landroid/support/v7/app/p;->b:Z

    if-eqz v2, :cond_0

    .line 1148
    const-string v2, "MediaRouteCtrlDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRouteVolumeChanged(), route.getVolume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/p$d;->a:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->n:Landroid/support/v7/media/g$g;

    if-eq v2, p2, :cond_1

    .line 1151
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1153
    :cond_1
    return-void
.end method
