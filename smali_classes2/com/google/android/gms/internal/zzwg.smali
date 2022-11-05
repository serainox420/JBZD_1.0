.class public Lcom/google/android/gms/internal/zzwg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzwg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzamj:I

.field private final zzamk:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzwg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzwg;->zzamj:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzwg;->zzamk:D

    return-void
.end method

.method public static zzby(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/zzwg;->zzamj:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwg;->zzby(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzwg;->zzamk:D

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x45

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PowerConnectionState = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Battery Percentage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzwh;->zza(Lcom/google/android/gms/internal/zzwg;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwg;->zzamj:I

    return v0
.end method

.method public zzrP()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzwg;->zzamk:D

    return-wide v0
.end method
