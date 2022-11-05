.class public Lcom/google/android/gms/drive/events/zzk;
.super Lcom/google/android/gms/drive/zzr;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaBi:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaLW:Z

.field final zzaLX:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/zzk;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/zzk;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/events/zzk;->zzaLW:Z

    iput p4, p0, Lcom/google/android/gms/drive/events/zzk;->zzaLX:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public zzAQ()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzk;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzAR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/zzk;->zzaLW:Z

    return v0
.end method

.method public zzAS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/events/zzk;->zzaLX:I

    return v0
.end method

.method public zzK(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzl;->zza(Lcom/google/android/gms/drive/events/zzk;Landroid/os/Parcel;I)V

    return-void
.end method
