.class public Lcom/google/android/gms/internal/zzwq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/awareness/state/TimeIntervals;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzwq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzamD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzwq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwq;->zzamD:[I

    return-void
.end method


# virtual methods
.method public getTimeIntervals()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwq;->zzamD:[I

    return-object v0
.end method

.method public hasTimeInterval(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwq;->zzamD:[I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzwq;->zzamD:[I

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    if-ne v4, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TimeIntervals="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwq;->zzamD:[I

    if-nez v0, :cond_0

    const-string v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzwq;->zzamD:[I

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget v6, v4, v0

    if-nez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzwr;->zza(Lcom/google/android/gms/internal/zzwq;Landroid/os/Parcel;I)V

    return-void
.end method
