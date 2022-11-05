.class public Lcom/google/android/gms/internal/zzbig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbig$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbMj:Lcom/google/android/gms/internal/zzbig$zza;

.field private final zzbtI:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbig$1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzbig$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzbig;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/zzbig$zza;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/zzbig$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbig;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbig;->zzbtI:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbig;->zzbMj:Lcom/google/android/gms/internal/zzbig$zza;

    return-void
.end method

.method private zzhW(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "resource_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzl(Ljava/io/InputStream;)[B
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {p1, v1}, Lcom/google/android/gms/common/util/zzp;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Error closing stream for reading resource from disk"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    const-string v2, "Failed to read the resource from disk"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v1, "Error closing stream for reading resource from disk"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    throw v1

    :catch_3
    move-exception v1

    const-string v1, "Error closing stream for reading resource from disk"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig;->zzbtI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbig$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzbig$2;-><init>(Lcom/google/android/gms/internal/zzbig;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig;->zzbtI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbig$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbig$3;-><init>(Lcom/google/android/gms/internal/zzbig;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V
    .locals 3

    const-string v0, "Starting to load a saved resource file from Disk."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbig;->zzhV(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbig;->zzl(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbia;->zzN([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Saved resource not found: "

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbig;->zzhW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v0, "Starting to load a default asset file from Disk."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "Default asset file is not specified. Not proceeding with the loading"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig;->zzbMj:Lcom/google/android/gms/internal/zzbig$zza;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzbig$zza;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbig;->zzl(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzbia;->zzN([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Default asset file not found. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public zzg(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig;->zzbtI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbig$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzbig$4;-><init>(Lcom/google/android/gms/internal/zzbig;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzh(Ljava/lang/String;[B)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbig;->zzhV(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Resource "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " saved on Disk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error opening resource file for writing"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Error closing stream for writing resource to disk"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    const-string v2, "Error writing resource to disk. Removing resource from disk"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Resource "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " saved on Disk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v0, "Error closing stream for writing resource to disk"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Resource "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " saved on Disk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_1
    throw v0

    :catch_4
    move-exception v1

    const-string v1, "Error closing stream for writing resource to disk"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzhU(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbig;->zzhV(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method zzhV(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig;->mContext:Landroid/content/Context;

    const-string v1, "google_tagmanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbig;->zzhW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
