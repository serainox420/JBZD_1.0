.class public Lcom/google/android/gms/internal/zzcw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzwG:Lcom/google/android/gms/internal/zzct;

.field private final zzwI:Lcom/google/android/gms/internal/zzid;

.field private final zzwJ:Lcom/google/android/gms/internal/zzid;

.field private final zzwK:Lcom/google/android/gms/internal/zzid;

.field private zzwM:Lcom/google/android/gms/internal/zzji$zzc;

.field private zzwN:Z

.field private final zzwO:Lcom/google/android/gms/internal/zzid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzji;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcw$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$5;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwI:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$6;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwJ:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$7;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwK:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$8;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwO:Lcom/google/android/gms/internal/zzid;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcw;->zzwG:Lcom/google/android/gms/internal/zzct;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzji;->zzgO()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcw$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcw$1;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcw$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcw$2;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    const-string v1, "Core JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwG:Lcom/google/android/gms/internal/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzct;->zzdR()Lcom/google/android/gms/internal/zzcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcr;->zzdC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcw;)Lcom/google/android/gms/internal/zzct;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwG:Lcom/google/android/gms/internal/zzct;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcw;->zzwN:Z

    return p1
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwI:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwJ:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwK:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwO:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    return-void
.end method

.method public zzc(Lorg/json/JSONObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcw$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcw$3;-><init>(Lcom/google/android/gms/internal/zzcw;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwK:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwJ:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwI:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwO:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    return-void
.end method

.method public zzdV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwN:Z

    return v0
.end method

.method public zzdW()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcw$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcw$4;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->release()V

    return-void
.end method
