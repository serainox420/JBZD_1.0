.class Lcom/smartadserver/android/library/ui/a/b$3;
.super Ljava/lang/Object;
.source "SASSphericalVideoView.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a/b;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a/b;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x81

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->b(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->d(Lcom/smartadserver/android/library/ui/a/b;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->b(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/a;

    move-result-object v2

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->e(Lcom/smartadserver/android/library/ui/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/smartadserver/android/library/ui/a/a;->a([FZ)V

    .line 115
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->b(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a/b;->c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a/b/a;->d()F

    move-result v2

    iput v2, v0, Lcom/smartadserver/android/library/ui/a/a;->a:F

    .line 118
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->e(Lcom/smartadserver/android/library/ui/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a/b;->a(Lcom/smartadserver/android/library/ui/a/b;Z)Z

    .line 123
    :cond_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->c()Lcom/smartadserver/android/library/ui/a/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    invoke-static {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->c()Lcom/smartadserver/android/library/ui/a/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    invoke-static {v0, v3, v4, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->c()Lcom/smartadserver/android/library/ui/a/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    invoke-static {v0, v4, v5, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->c()Lcom/smartadserver/android/library/ui/a/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b$3;->a:Lcom/smartadserver/android/library/ui/a/b;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    invoke-static {v0, v5, v1, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto/16 :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
