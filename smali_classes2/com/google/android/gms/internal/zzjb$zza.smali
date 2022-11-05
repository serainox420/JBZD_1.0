.class Lcom/google/android/gms/internal/zzjb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzJh:Lcom/google/android/gms/ads/internal/zzm;

.field zzJi:Lcom/google/android/gms/internal/zzec;

.field zzJj:Lcom/google/android/gms/internal/zzix;

.field zzJk:J

.field zzJl:Z

.field zzJm:Z

.field final synthetic zzJn:Lcom/google/android/gms/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zziw;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJn:Lcom/google/android/gms/internal/zzjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/internal/zzjb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zziw;->zzah(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    new-instance v0, Lcom/google/android/gms/internal/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzix;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJj:Lcom/google/android/gms/internal/zzix;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJj:Lcom/google/android/gms/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzix;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zzec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzjb$zza;-><init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zziw;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJi:Lcom/google/android/gms/internal/zzec;

    return-void
.end method


# virtual methods
.method load()Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJi:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJi:Lcom/google/android/gms/internal/zzec;

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zziz;->zzk(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJl:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJk:J

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb$zza;->zzJn:Lcom/google/android/gms/internal/zzjb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjb;->zzb(Lcom/google/android/gms/internal/zzjb;)Lcom/google/android/gms/internal/zzec;

    move-result-object v0

    goto :goto_1
.end method
