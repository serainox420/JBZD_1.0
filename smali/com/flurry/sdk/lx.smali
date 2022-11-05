.class public final Lcom/flurry/sdk/lx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/lx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 1097
    iget-object v1, v1, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 27
    const-string v2, "mounted"

    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 39
    :cond_1
    if-nez v0, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 43
    :cond_2
    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 156
    if-nez p0, :cond_0

    .line 157
    sget-object v0, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    const-string v1, "No persistent file specified."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 161
    :cond_0
    if-nez p1, :cond_1

    .line 162
    sget-object v0, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No data specified; deleting persistent file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 168
    :cond_1
    sget-object v0, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing persistent data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x0

    .line 172
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 175
    :goto_1
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    const-string v4, "Error writing persistent file"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    if-nez p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 87
    if-nez v2, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 93
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 94
    const/4 v1, 0x6

    sget-object v3, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create persistent dir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public static b()Ljava/io/File;
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 2097
    iget-object v1, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    .line 52
    const-string v2, "mounted"

    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 64
    :cond_1
    if-nez v0, :cond_2

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 68
    :cond_2
    return-object v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 105
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 106
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/flurry/sdk/lx;->b(Ljava/io/File;)Z

    move-result v4

    .line 107
    if-nez v4, :cond_0

    .line 114
    :goto_1
    return v0

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_1
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    :cond_0
    sget-object v1, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    const-string v2, "Persistent file doesn\'t exist."

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    return-object v0

    .line 125
    :cond_2
    sget-object v1, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading persistent data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 136
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    .line 137
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    :goto_2
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/lx;->a:Ljava/lang/String;

    const-string v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 146
    :goto_3
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_3
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 139
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method
