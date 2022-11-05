.class Lcom/google/android/gms/fitness/data/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanv",
        "<",
        "Lcom/google/android/gms/fitness/data/DataPoint;",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaSy:Lcom/google/android/gms/fitness/data/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzf;->zzaSy:Lcom/google/android/gms/fitness/data/zzf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzB(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzf;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public zzBY()Lcom/google/android/gms/internal/zzanw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzanw",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/fitness/data/zzg;->zzaSz:Lcom/google/android/gms/fitness/data/zzg;

    return-object v0
.end method

.method public synthetic zzC(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzf;->zza(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic zza(Ljava/lang/Object;Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zza(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataPoint;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zzgy(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v0

    return v0
.end method

.method public synthetic zzb(Ljava/lang/Object;I)D
    .locals 2

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzc(Lcom/google/android/gms/fitness/data/DataPoint;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataPoint;I)I
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zzgy(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/fitness/data/DataPoint;I)D
    .locals 2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zzgy(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public synthetic zzc(Ljava/lang/Object;I)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;I)I

    move-result v0

    return v0
.end method

.method public synthetic zzd(Ljava/lang/Object;I)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zza(Lcom/google/android/gms/fitness/data/DataPoint;I)Z

    move-result v0

    return v0
.end method
