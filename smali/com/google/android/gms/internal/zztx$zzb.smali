.class public Lcom/google/android/gms/internal/zztx$zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zztx$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zzahw:Lcom/google/android/gms/common/api/Status;

.field public zzahx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzud;",
            ">;"
        }
    .end annotation
.end field

.field public zzahy:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztx$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzud;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztx$zzb;->zzahw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zztx$zzb;->zzahx:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zztx$zzb;->zzahy:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztx$zzb;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zztz;->zza(Lcom/google/android/gms/internal/zztx$zzb;Landroid/os/Parcel;I)V

    return-void
.end method
