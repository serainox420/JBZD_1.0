.class public abstract Lcom/smartadserver/android/library/ui/a/b/b;
.super Ljava/lang/Object;
.source "SASOrientationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lcom/smartadserver/android/library/ui/a/c/b;

.field protected final d:Lcom/smartadserver/android/library/ui/a/c/c;

.field protected e:F

.field protected f:Landroid/hardware/SensorManager;

.field protected g:Lcom/smartadserver/android/library/ui/a/b/c;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->a:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->b:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/b/b;->f:Landroid/hardware/SensorManager;

    .line 78
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/b;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->c:Lcom/smartadserver/android/library/ui/a/c/b;

    .line 81
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->d:Lcom/smartadserver/android/library/ui/a/c/c;

    .line 82
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 93
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/b;->f:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public a(Lcom/smartadserver/android/library/ui/a/b/c;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/b/b;->g:Lcom/smartadserver/android/library/ui/a/b/c;

    .line 159
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 104
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/b;->f:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public c()Lcom/smartadserver/android/library/ui/a/c/b;
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->c:Lcom/smartadserver/android/library/ui/a/c/b;

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/b/b;->e:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
