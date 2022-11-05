.class public final Lcom/google/android/gms/location/places/zzm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPriority:I

.field final zzaiI:I

.field private final zzbjE:J

.field private final zzbjU:J

.field private final zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final zzblG:Z

.field private final zzblH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/places/PlaceFilter;JIJZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/zzm;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/zzm;->zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-wide p3, p0, Lcom/google/android/gms/location/places/zzm;->zzbjU:J

    iput p5, p0, Lcom/google/android/gms/location/places/zzm;->mPriority:I

    iput-wide p6, p0, Lcom/google/android/gms/location/places/zzm;->zzbjE:J

    iput-boolean p8, p0, Lcom/google/android/gms/location/places/zzm;->zzblG:Z

    iput-boolean p9, p0, Lcom/google/android/gms/location/places/zzm;->zzblH:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/zzm;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/zzm;

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzm;->zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/zzm;->zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/zzm;->zzbjU:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/zzm;->zzbjU:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/zzm;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzm;->mPriority:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/zzm;->zzbjE:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/zzm;->zzbjE:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/zzm;->zzblG:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/zzm;->zzblG:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/zzm;->zzbjE:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/zzm;->zzbjU:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzm;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzm;->zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/places/zzm;->zzbjU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/places/zzm;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/zzm;->zzbjE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/zzm;->zzblG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzm;->zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "interval"

    iget-wide v2, p0, Lcom/google/android/gms/location/places/zzm;->zzbjU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/zzm;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "expireAt"

    iget-wide v2, p0, Lcom/google/android/gms/location/places/zzm;->zzbjE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "receiveFailures"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/zzm;->zzblG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzn;->zza(Lcom/google/android/gms/location/places/zzm;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIA()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzm;->zzblF:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method public zzIH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/zzm;->zzblG:Z

    return v0
.end method

.method public zzII()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/zzm;->zzblH:Z

    return v0
.end method
