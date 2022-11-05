.class public Lcom/google/android/gms/internal/zzapx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzapx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzapy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzapx;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapx;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    return-void
.end method


# virtual methods
.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzapx;->zzaiI:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ApplicationUnregistrationRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapx;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzapy;->zza(Lcom/google/android/gms/internal/zzapx;Landroid/os/Parcel;I)V

    return-void
.end method
