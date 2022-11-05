.class public Lcom/google/android/gms/internal/zzavh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final timeoutMillis:J

.field final versionCode:I

.field private final zzbxO:B

.field private final zzbxP:Lcom/google/android/gms/internal/zzauy;

.field private final zzbxQ:Lcom/google/android/gms/internal/zzavc;

.field private final zzbxR:Lcom/google/android/gms/internal/zzavd;

.field private final zzbxS:Lcom/google/android/gms/internal/zzave;

.field private final zzbxT:Ljava/lang/String;

.field private final zzbxU:B

.field private final zzbxV:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzauy;Ljava/lang/String;Ljava/lang/String;BJLjava/lang/String;BBLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzavh;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauy;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxP:Lcom/google/android/gms/internal/zzauy;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavh;->name:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavh;->description:Ljava/lang/String;

    iput-byte p5, p0, Lcom/google/android/gms/internal/zzavh;->zzbxO:B

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzavh;->timeoutMillis:J

    iput-byte p9, p0, Lcom/google/android/gms/internal/zzavh;->zzbxU:B

    iput-byte p10, p0, Lcom/google/android/gms/internal/zzavh;->zzbxV:B

    iput-object p8, p0, Lcom/google/android/gms/internal/zzavh;->zzbxT:Ljava/lang/String;

    invoke-static {p11}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p11}, Lcom/google/android/gms/internal/zzavc$zza;->zzev(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzavc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxQ:Lcom/google/android/gms/internal/zzavc;

    invoke-static {p12}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/google/android/gms/internal/zzavd$zza;->zzew(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzavd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxR:Lcom/google/android/gms/internal/zzavd;

    invoke-static {p13}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p13}, Lcom/google/android/gms/internal/zzave$zza;->zzex(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzave;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxS:Lcom/google/android/gms/internal/zzave;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxS:Lcom/google/android/gms/internal/zzave;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxS:Lcom/google/android/gms/internal/zzave;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzave;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxT:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavi;->zza(Lcom/google/android/gms/internal/zzavh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNK()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxO:B

    return v0
.end method

.method public zzNM()Lcom/google/android/gms/internal/zzauy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxP:Lcom/google/android/gms/internal/zzauy;

    return-object v0
.end method

.method public zzNN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzavh;->timeoutMillis:J

    return-wide v0
.end method

.method public zzNO()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxU:B

    return v0
.end method

.method public zzNP()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxV:B

    return v0
.end method

.method public zzNQ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxQ:Lcom/google/android/gms/internal/zzavc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxQ:Lcom/google/android/gms/internal/zzavc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzavc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzNR()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxR:Lcom/google/android/gms/internal/zzavd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzbxR:Lcom/google/android/gms/internal/zzavd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzavd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
