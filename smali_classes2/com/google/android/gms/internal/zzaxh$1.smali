.class Lcom/google/android/gms/internal/zzaxh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaxh;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzf:Ljava/io/InputStream;

.field final synthetic zzbzg:Ljava/io/OutputStream;

.field final synthetic zzbzh:J

.field final synthetic zzbzi:Ljava/io/OutputStream;

.field final synthetic zzbzj:Lcom/google/android/gms/internal/zzaxh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;Ljava/io/OutputStream;JLjava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzf:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzg:Ljava/io/OutputStream;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzh:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzi:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzf:Ljava/io/InputStream;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;)Ljava/io/InputStream;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzf:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzg:Ljava/io/OutputStream;

    const/4 v4, 0x0

    const/high16 v5, 0x10000

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/common/util/zzp;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzf:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzi:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzh:J

    invoke-static {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/OutputStream;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzg:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;)Ljava/io/InputStream;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NearbyConnections"

    const-string v3, "Exception copying stream for Payload %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzh:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzf:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzi:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzh:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/OutputStream;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzg:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v0, "NearbyConnections"

    const-string v1, "Terminating copying stream for Payload %d due to shutdown of OutgoingPayloadStreamer."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzh:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzf:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzi:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzh:J

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/OutputStream;ZJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzg:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxh$1;->zzbzj:Lcom/google/android/gms/internal/zzaxh;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
