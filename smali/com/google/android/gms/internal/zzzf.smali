.class public Lcom/google/android/gms/internal/zzzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzf$zzb;,
        Lcom/google/android/gms/internal/zzzf$zza;,
        Lcom/google/android/gms/internal/zzzf$zzc;
    }
.end annotation


# static fields
.field private static final zzanA:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private zzaxf:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private zzaxg:Landroid/hardware/display/VirtualDisplay;

.field private final zzaxh:Lcom/google/android/gms/internal/zzzj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->zzanA:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzzf$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzf$1;-><init>(Lcom/google/android/gms/internal/zzzf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxh:Lcom/google/android/gms/internal/zzzj;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf;->zzaxf:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzf;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzzf;->zzuQ()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/internal/zzzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxh:Lcom/google/android/gms/internal/zzzj;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/common/api/Api;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxf:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzzf;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method private zzuQ()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzzf;->zzanA:Lcom/google/android/gms/internal/zzyz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "releasing virtual display: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzaxg:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method

.method static synthetic zzuR()Lcom/google/android/gms/internal/zzyz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzzf;->zzanA:Lcom/google/android/gms/internal/zzyz;

    return-object v0
.end method


# virtual methods
.method public startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzzf;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzzf$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzzf$2;-><init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzzf;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzzf$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzzf$3;-><init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method
