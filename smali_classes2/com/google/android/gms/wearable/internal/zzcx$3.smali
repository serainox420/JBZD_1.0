.class Lcom/google/android/gms/wearable/internal/zzcx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzcx;->zzb(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiD:Ljava/lang/String;

.field final synthetic zzbBv:Landroid/net/Uri;

.field final synthetic zzbTZ:J

.field final synthetic zzbUa:J

.field final synthetic zzbVd:Lcom/google/android/gms/internal/zzaad$zzb;

.field final synthetic zzbVe:Lcom/google/android/gms/wearable/internal/zzcx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzcx;Landroid/net/Uri;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVe:Lcom/google/android/gms/wearable/internal/zzcx;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbBv:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVd:Lcom/google/android/gms/internal/zzaad$zzb;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzaiD:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbTZ:J

    iput-wide p7, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbUa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "WearableClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableClient"

    const-string v1, "Executing sendFileToChannelTask"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "file"

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbBv:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WearableClient"

    const-string v1, "Channel.sendFile used with non-file URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVd:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    const-string v3, "Channel.sendFile used with non-file URI"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->zzB(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbBv:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVe:Lcom/google/android/gms/wearable/internal/zzcx;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzr;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVd:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/wearable/internal/zzcw$zzr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzaiD:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbTZ:J

    iget-wide v6, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbUa:J

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WearableClient"

    const-string v2, "Failed to close sourceFd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "WearableClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "File couldn\'t be opened for Channel.sendFile: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVd:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->zzB(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "WearableClient"

    const-string v2, "Channel.sendFile failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcx$3;->zzbVd:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->zzB(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "WearableClient"

    const-string v2, "Failed to close sourceFd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_1
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "WearableClient"

    const-string v3, "Failed to close sourceFd"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
