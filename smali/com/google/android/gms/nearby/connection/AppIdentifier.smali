.class public final Lcom/google/android/gms/nearby/connection/AppIdentifier;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/connection/AppIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaUk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/AppIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const-string v0, "Missing application identifier value"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/AppIdentifier;->zzaUk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AppIdentifier;->zzaUk:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/connection/zzc;->zza(Lcom/google/android/gms/nearby/connection/AppIdentifier;Landroid/os/Parcel;I)V

    return-void
.end method
