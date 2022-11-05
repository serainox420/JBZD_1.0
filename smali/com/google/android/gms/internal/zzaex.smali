.class public Lcom/google/android/gms/internal/zzaex;
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
            "Lcom/google/android/gms/internal/zzaex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaB:Ljava/lang/String;

.field public final zzaJy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaex;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaex;->zzaJy:Z

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaex;->zzaB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaey;->zza(Lcom/google/android/gms/internal/zzaex;Landroid/os/Parcel;I)V

    return-void
.end method
