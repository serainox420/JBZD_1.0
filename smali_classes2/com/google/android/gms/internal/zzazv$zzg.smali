.class Lcom/google/android/gms/internal/zzazv$zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzg"
.end annotation


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzbDx:Lcom/google/android/gms/safetynet/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazv$zzg;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazv$zzg;->zzbDx:Lcom/google/android/gms/safetynet/zze;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazv$zzg;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
