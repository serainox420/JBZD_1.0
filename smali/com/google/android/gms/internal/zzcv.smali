.class public Lcom/google/android/gms/internal/zzcv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzwG:Lcom/google/android/gms/internal/zzct;

.field private final zzwH:Lcom/google/android/gms/internal/zzjj;

.field private final zzwI:Lcom/google/android/gms/internal/zzid;

.field private final zzwJ:Lcom/google/android/gms/internal/zzid;

.field private final zzwK:Lcom/google/android/gms/internal/zzid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzjj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcv$1;-><init>(Lcom/google/android/gms/internal/zzcv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwI:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcv$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcv$2;-><init>(Lcom/google/android/gms/internal/zzcv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwJ:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcv$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcv$3;-><init>(Lcom/google/android/gms/internal/zzcv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwK:Lcom/google/android/gms/internal/zzid;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcv;->zzwG:Lcom/google/android/gms/internal/zzct;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcv;->zzwH:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwH:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcv;->zzc(Lcom/google/android/gms/internal/zzjj;)V

    const-string v1, "Custom JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwG:Lcom/google/android/gms/internal/zzct;

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

.method static synthetic zza(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/internal/zzct;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwG:Lcom/google/android/gms/internal/zzct;

    return-object v0
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv;->zzwI:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv;->zzwJ:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv;->zzwK:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method public zzc(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwH:Lcom/google/android/gms/internal/zzjj;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwG:Lcom/google/android/gms/internal/zzct;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzct;->zzb(Lcom/google/android/gms/internal/zzcx;)V

    goto :goto_0
.end method

.method zzd(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv;->zzwK:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv;->zzwJ:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcv;->zzwI:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method public zzdV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzdW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzwH:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcv;->zzd(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method
