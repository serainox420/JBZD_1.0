.class Lcom/google/android/gms/internal/zzblg$1;
.super Lcom/google/android/gms/internal/zzblh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbWa:Lcom/google/android/gms/internal/zzblg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblh$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzblg;->zzbVW:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzblg;->zzb(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblg;->zzbVW:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblg;->zza(Lcom/google/android/gms/internal/zzblg;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblg;->zza(Lcom/google/android/gms/internal/zzblg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblg;->zzbVW:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
