.class public Lcom/google/android/gms/internal/zzadw;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzadw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaIO:J

.field private final zzaIX:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaIY:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzavD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzadx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/common/data/DataHolder;JLcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzadw;->zzavD:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadw;->zzaIX:Lcom/google/android/gms/common/data/DataHolder;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzadw;->zzaIO:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzadw;->zzaIY:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadw;->zzavD:I

    return v0
.end method

.method public getThrottleEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIO:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzadx;->zza(Lcom/google/android/gms/internal/zzadw;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzzM()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIX:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzzN()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIY:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzzO()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIX:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIX:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIX:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public zzzP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIY:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIY:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->zzaIY:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method
