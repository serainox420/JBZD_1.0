.class public Lcom/google/android/gms/fitness/result/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaWZ:Landroid/os/Bundle;

.field private final zzahw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/zzj;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/zzj;->zzahw:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/fitness/result/zzj;->zzaWZ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzj;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/result/zzj;->versionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzk;->zza(Lcom/google/android/gms/fitness/result/zzj;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzDv()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzj;->zzaWZ:Landroid/os/Bundle;

    return-object v0
.end method
