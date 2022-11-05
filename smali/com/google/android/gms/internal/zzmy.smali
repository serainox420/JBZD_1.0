.class public Lcom/google/android/gms/internal/zzmy;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzmy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzFV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzmz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmy;->zzFV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzmz;->zza(Lcom/google/android/gms/internal/zzmy;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzjt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmy;->zzFV:Ljava/lang/String;

    return-object v0
.end method
