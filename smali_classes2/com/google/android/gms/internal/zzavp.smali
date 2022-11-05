.class public Lcom/google/android/gms/internal/zzavp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final versionCode:I

.field private final zzbxO:B

.field private final zzbxQ:Lcom/google/android/gms/internal/zzavc;

.field private final zzbxR:Lcom/google/android/gms/internal/zzavd;

.field private final zzbxS:Lcom/google/android/gms/internal/zzave;

.field private final zzbxV:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;BBLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzavp;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->name:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->description:Ljava/lang/String;

    iput-byte p4, p0, Lcom/google/android/gms/internal/zzavp;->zzbxO:B

    iput-byte p5, p0, Lcom/google/android/gms/internal/zzavp;->zzbxV:B

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/internal/zzavc$zza;->zzev(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzavc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxQ:Lcom/google/android/gms/internal/zzavc;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Lcom/google/android/gms/internal/zzavd$zza;->zzew(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzavd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxR:Lcom/google/android/gms/internal/zzavd;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8}, Lcom/google/android/gms/internal/zzave$zza;->zzex(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzave;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxS:Lcom/google/android/gms/internal/zzave;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxS:Lcom/google/android/gms/internal/zzave;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxS:Lcom/google/android/gms/internal/zzave;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzave;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavq;->zza(Lcom/google/android/gms/internal/zzavp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNK()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxO:B

    return v0
.end method

.method public zzNP()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxV:B

    return v0
.end method

.method public zzNQ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxQ:Lcom/google/android/gms/internal/zzavc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxQ:Lcom/google/android/gms/internal/zzavc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzavc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzNR()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxR:Lcom/google/android/gms/internal/zzavd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbxR:Lcom/google/android/gms/internal/zzavd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzavd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
