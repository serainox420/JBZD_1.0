.class public Lcom/google/android/gms/internal/zzbil;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbLR:Lcom/google/android/gms/internal/zzbie;

.field private final zzbMr:Lcom/google/android/gms/internal/zzbia;

.field private final zzbMs:Lcom/google/android/gms/internal/zzbik;

.field private final zzbMt:Lcom/google/android/gms/internal/zzbih;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbia;)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/internal/zzbik;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzbik;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzbih;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzbih;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbil;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbia;Lcom/google/android/gms/internal/zzbik;Lcom/google/android/gms/internal/zzbih;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbia;Lcom/google/android/gms/internal/zzbik;Lcom/google/android/gms/internal/zzbih;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbia;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbil;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbil;->zzbMs:Lcom/google/android/gms/internal/zzbik;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbil;->zzbMt:Lcom/google/android/gms/internal/zzbih;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbil;->zzib()V

    return-void
.end method

.method zzST()Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbil;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbil;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "No network connectivity - Offline"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method zzbW(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzib()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbil;->zzST()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Starting to load resource from Network."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMs:Lcom/google/android/gms/internal/zzbik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbik;->zzSS()Lcom/google/android/gms/internal/zzbij;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbil;->zzbMt:Lcom/google/android/gms/internal/zzbih;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbil;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbih;->zzb(Lcom/google/android/gms/internal/zzbhx;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Loading resource from "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzbij;->zzhX(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/zzbin; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzp;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbia;->zzN([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbij;->close()V

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbij;->close()V

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "NetworkLoader: No data was retrieved from the given url: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbij;->close()V

    goto :goto_0

    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v4, "NetworkLoader: Error when loading resource for url: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x36

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "NetworkLoader: Error when loading resource from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbij;->close()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x42

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "NetworkLoader: Error when parsing downloaded resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbij;->close()V

    goto/16 :goto_0
.end method
