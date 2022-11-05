.class public Lcom/google/android/gms/fitness/request/zzd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzaSg:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaVu:Lcom/google/android/gms/internal/zzaol;

.field private final zzaVv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zze;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzd;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaol$zza;->zzcp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaVu:Lcom/google/android/gms/internal/zzaol;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaSg:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaVv:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzd;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaVu:Lcom/google/android/gms/internal/zzaol;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaSg:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaVv:Z

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaVu:Lcom/google/android/gms/internal/zzaol;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaol;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaSg:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzd;->versionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v1, "DailyTotalRequest{%s}"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaSg:Lcom/google/android/gms/fitness/data/DataType;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaSg:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zzCk()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zze;->zza(Lcom/google/android/gms/fitness/request/zzd;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzaVv:Z

    return v0
.end method
