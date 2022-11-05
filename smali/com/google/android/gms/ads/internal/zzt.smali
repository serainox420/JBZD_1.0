.class public Lcom/google/android/gms/ads/internal/zzt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzt$zza;
    }
.end annotation


# instance fields
.field private final zzul:Lcom/google/android/gms/ads/internal/zzt$zza;

.field private zzum:Lcom/google/android/gms/internal/zzec;

.field private zzun:Z

.field private zzuo:Z

.field private zzup:J

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/zzt$zza;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzt;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzt$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzt$zza;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzuo:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzup:J

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzt;->zzul:Lcom/google/android/gms/ads/internal/zzt$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzt$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzt$1;-><init>(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzw:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/internal/zzec;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzum:Lcom/google/android/gms/internal/zzec;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzul:Lcom/google/android/gms/ads/internal/zzt$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt$zza;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzuo:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzul:Lcom/google/android/gms/ads/internal/zzt$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt$zza;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzuo:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzum:Lcom/google/android/gms/internal/zzec;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/zzt;->zzup:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/internal/zzec;J)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    if-eqz v0, :cond_1

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzum:Lcom/google/android/gms/internal/zzec;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/zzt;->zzup:J

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzuo:Z

    if-nez v0, :cond_0

    const/16 v0, 0x41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Scheduling ad refresh "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzul:Lcom/google/android/gms/ads/internal/zzt$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/ads/internal/zzt$zza;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public zzcy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzun:Z

    return v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzum:Lcom/google/android/gms/internal/zzec;

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzec;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/internal/zzec;J)V

    return-void
.end method
