.class public final Lcom/flurry/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bf;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 30
    :cond_1
    new-instance v1, Lcom/flurry/sdk/bf$b;

    invoke-direct {v1}, Lcom/flurry/sdk/bf$b;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 41
    const/4 v5, 0x1

    if-ne v5, v3, :cond_2

    .line 44
    invoke-interface {v1, v2}, Lcom/flurry/sdk/lg;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 47
    :goto_2
    const/4 v4, 0x3

    :try_start_3
    sget-object v5, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    const-string v6, "Error loading legacy FreqCap data."

    invoke-static {v4, v5, v6, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 49
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v3}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v4}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_3
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v4}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    .line 49
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 46
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method public static b(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/az;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 62
    :cond_1
    new-instance v1, Lcom/flurry/sdk/az$a;

    new-instance v0, Lcom/flurry/sdk/ax$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ax$a;-><init>()V

    invoke-direct {v1, v0}, Lcom/flurry/sdk/az$a;-><init>(Lcom/flurry/sdk/ax$a;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 72
    const v5, 0xb5fa

    if-eq v5, v3, :cond_2

    .line 73
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected data format"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 84
    :goto_1
    const/4 v4, 0x3

    :try_start_3
    sget-object v5, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    const-string v6, "Error loading legacy AdLog data."

    invoke-static {v4, v5, v6, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 86
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {v3}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 77
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 78
    const/4 v5, 0x1

    if-ne v5, v3, :cond_3

    .line 81
    invoke-interface {v1, v2}, Lcom/flurry/sdk/lg;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 86
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {v4}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    .line 86
    :cond_3
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {v4}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 86
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 83
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_1
.end method
