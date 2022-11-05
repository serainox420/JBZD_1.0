.class public Lcom/google/android/gms/nearby/connection/zzg$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzbyc:Ljava/io/File;

.field private final zzbyd:Landroid/os/ParcelFileDescriptor;

.field private final zzbye:J


# direct methods
.method private constructor <init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzbyc:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzbyd:Landroid/os/ParcelFileDescriptor;

    iput-wide p3, p0, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzbye:J

    return-void
.end method

.method public static zza(Ljava/io/File;J)Lcom/google/android/gms/nearby/connection/zzg$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "Cannot create Payload.File from null java.io.File."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzg$zza;

    const/high16 v1, 0x10000000

    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/nearby/connection/zzg$zza;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;J)V

    return-object v0
.end method

.method public static zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/zzg$zza;
    .locals 6

    new-instance v1, Lcom/google/android/gms/nearby/connection/zzg$zza;

    const/4 v2, 0x0

    const-string v0, "Cannot create Payload.File from null ParcelFileDescriptor."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/google/android/gms/nearby/connection/zzg$zza;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;J)V

    return-object v1
.end method


# virtual methods
.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzbye:J

    return-wide v0
.end method

.method public zzNY()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzbyc:Ljava/io/File;

    return-object v0
.end method

.method public zzNZ()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzbyd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
