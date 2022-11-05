.class public final Lcom/google/android/gms/internal/zzfe$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final zzAa:Landroid/os/Bundle;

.field private final zzAf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzAg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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

.field private final zzAh:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzAi:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcR:Ljava/util/Date;

.field private zzcV:Landroid/location/Location;

.field private zzsS:Z

.field private zzzk:I

.field private zzzn:I

.field private zzzo:Ljava/lang/String;

.field private zzzq:Ljava/lang/String;

.field private final zzzs:Landroid/os/Bundle;

.field private zzzu:Ljava/lang/String;

.field private zzzw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAf:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAa:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAg:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAh:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzs:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAi:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzk:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzsS:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzn:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzcR:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzfe$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzk:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAf:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzfe$zza;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzcV:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzfe$zza;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzsS:Z

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzfe$zza;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAa:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAg:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzfe$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzn:I

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAh:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzfe$zza;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzs:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzfe$zza;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAi:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/zzfe$zza;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzw:Z

    return v0
.end method


# virtual methods
.method public setManualImpressionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzsS:Z

    return-void
.end method

.method public zzL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAf:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzM(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAh:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzN(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAh:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzq:Ljava/lang/String;

    return-void
.end method

.method public zzP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzo:Ljava/lang/String;

    return-void
.end method

.method public zzQ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzu:Ljava/lang/String;

    return-void
.end method

.method public zzR(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAi:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    check-cast p1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzfe$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAg:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public zza(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAa:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zza(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzcR:Ljava/util/Date;

    return-void
.end method

.method public zzb(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzcV:Landroid/location/Location;

    return-void
.end method

.method public zzb(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAa:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAa:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzAa:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zzf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzs:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzo(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzn:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzw:Z

    return-void
.end method

.method public zzy(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfe$zza;->zzzk:I

    return-void
.end method
