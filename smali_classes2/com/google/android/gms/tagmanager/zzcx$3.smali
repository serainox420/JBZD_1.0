.class Lcom/google/android/gms/tagmanager/zzcx$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcx;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcw;)Lcom/google/android/gms/tagmanager/zzce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbHO:Ljava/util/Map;

.field final synthetic zzbHP:Ljava/util/Map;

.field final synthetic zzbHQ:Ljava/util/Map;

.field final synthetic zzbHR:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcx;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHO:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHP:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHQ:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHR:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbjf$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbjf$zze;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbjf$zza;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbjf$zza;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzcs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcs;->zzQT()Lcom/google/android/gms/tagmanager/zzcq;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbHR:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcs;->zzQU()Lcom/google/android/gms/tagmanager/zzcq;

    :cond_1
    return-void
.end method
