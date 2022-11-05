.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzd(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzb(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;->dismiss()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
