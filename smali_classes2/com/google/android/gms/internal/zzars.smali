.class public Lcom/google/android/gms/internal/zzars;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzars;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private packageName:Ljava/lang/String;

.field zzbje:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private zzbjf:Ljava/lang/String;

.field private zzbjg:Ljava/lang/String;

.field private zzbjh:Ljava/lang/String;

.field private zzbji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbjj:Lcom/google/android/gms/internal/zzaqw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzart;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzart;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzars;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gms/internal/zzaqw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzaqw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzars;->zzbje:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzars;->zzbjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzars;->zzbjg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzars;->zzbjh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzars;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    if-nez p6, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzars;->zzbji:Ljava/util/ArrayList;

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbji:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iput-object p7, p0, Lcom/google/android/gms/internal/zzars;->zzbjj:Lcom/google/android/gms/internal/zzaqw;

    return-void

    :cond_1
    invoke-interface {p6}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbjg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/internal/zzars;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHT()Lcom/google/android/gms/common/data/BitmapTeleporter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbje:Lcom/google/android/gms/common/data/BitmapTeleporter;

    return-object v0
.end method

.method public zzHU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbjh:Ljava/lang/String;

    return-object v0
.end method

.method public zzHV()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbji:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzHW()Lcom/google/android/gms/internal/zzaqw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbjj:Lcom/google/android/gms/internal/zzaqw;

    return-object v0
.end method

.method public zzmY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzbjf:Ljava/lang/String;

    return-object v0
.end method
