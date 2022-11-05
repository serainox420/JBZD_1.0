.class Lcom/google/android/gms/ads/internal/overlay/zze$zzb;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field zzNA:Z

.field zzvX:Lcom/google/android/gms/internal/zzpr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzpr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzpr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->zzvX:Lcom/google/android/gms/internal/zzpr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->zzvX:Lcom/google/android/gms/internal/zzpr;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzpr;->zzba(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method disable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->zzNA:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->zzNA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->zzvX:Lcom/google/android/gms/internal/zzpr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpr;->zzg(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
