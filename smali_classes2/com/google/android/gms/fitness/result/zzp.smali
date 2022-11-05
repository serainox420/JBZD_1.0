.class public Lcom/google/android/gms/fitness/result/zzp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Ljava/io/Closeable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaBi:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaXc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    if-nez p3, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaXc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaXc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaiI:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzq;->zza(Lcom/google/android/gms/fitness/result/zzp;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzAQ()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzDw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzp;->zzaXc:Ljava/util/List;

    return-object v0
.end method
