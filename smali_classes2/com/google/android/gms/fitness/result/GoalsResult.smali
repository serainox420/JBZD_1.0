.class public Lcom/google/android/gms/fitness/result/GoalsResult;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/GoalsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaXa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/GoalsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/GoalsResult;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/GoalsResult;->zzahw:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/fitness/result/GoalsResult;->zzaXa:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/result/GoalsResult;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-void
.end method

.method public static zzag(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/GoalsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/result/GoalsResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/result/GoalsResult;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getGoals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/GoalsResult;->zzaXa:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/GoalsResult;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/result/GoalsResult;->versionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzn;->zza(Lcom/google/android/gms/fitness/result/GoalsResult;Landroid/os/Parcel;I)V

    return-void
.end method
