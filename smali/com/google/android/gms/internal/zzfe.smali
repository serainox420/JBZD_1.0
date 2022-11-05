.class public final Lcom/google/android/gms/internal/zzfe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfe$zza;
    }
.end annotation


# instance fields
.field private final zzAa:Landroid/os/Bundle;

.field private final zzAb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzAc:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzAd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzAe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcR:Ljava/util/Date;

.field private final zzcT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcV:Landroid/location/Location;

.field private final zzsS:Z

.field private final zzzk:I

.field private final zzzn:I

.field private final zzzo:Ljava/lang/String;

.field private final zzzq:Ljava/lang/String;

.field private final zzzs:Landroid/os/Bundle;

.field private final zzzu:Ljava/lang/String;

.field private final zzzw:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfe$zza;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzfe;-><init>(Lcom/google/android/gms/internal/zzfe$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzfe$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zza(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzcR:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzb(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzq:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzc(Lcom/google/android/gms/internal/zzfe$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzk:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzd(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzcT:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zze(Lcom/google/android/gms/internal/zzfe$zza;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzcV:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzf(Lcom/google/android/gms/internal/zzfe$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfe;->zzsS:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzg(Lcom/google/android/gms/internal/zzfe$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAa:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzh(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzi(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzo:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzj(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzu:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfe;->zzAc:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzk(Lcom/google/android/gms/internal/zzfe$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzn:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzl(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAd:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzm(Lcom/google/android/gms/internal/zzfe$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzs:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzn(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAe:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfe$zza;->zzo(Lcom/google/android/gms/internal/zzfe$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzw:Z

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzcR:Ljava/util/Date;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzq:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAa:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzk:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzcT:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzcV:Landroid/location/Location;

    return-object v0
.end method

.method public getManualImpressionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfe;->zzsS:Z

    return v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAa:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzo:Ljava/lang/String;

    return-object v0
.end method

.method public isDesignedForFamilies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzw:Z

    return v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAd:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzqe;->zzad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzfb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzu:Ljava/lang/String;

    return-object v0
.end method

.method public zzfc()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAc:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public zzfd()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAb:Ljava/util/Map;

    return-object v0
.end method

.method public zzfe()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAa:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzff()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfe;->zzzn:I

    return v0
.end method

.method public zzfg()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzAe:Ljava/util/Set;

    return-object v0
.end method
