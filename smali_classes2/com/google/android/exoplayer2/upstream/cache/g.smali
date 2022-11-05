.class final Lcom/google/android/exoplayer2/upstream/cache/g;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/util/b;

.field private final d:Ljavax/crypto/Cipher;

.field private final e:Ljavax/crypto/spec/SecretKeySpec;

.field private f:Z

.field private g:Lcom/google/android/exoplayer2/util/p;


# direct methods
.method public constructor <init>(Ljava/io/File;[B)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p2, :cond_1

    .line 88
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 90
    :try_start_0
    const-string v0, "AES/CBC/PKCS5PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    .line 91
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/util/b;

    new-instance v1, Ljava/io/File;

    const-string v2, "cached_content_index.exi"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/b;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->c:Lcom/google/android/exoplayer2/util/b;

    .line 102
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    .line 97
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 352
    if-nez v2, :cond_1

    move v0, v1

    .line 353
    :goto_0
    if-gez v0, :cond_0

    move v0, v1

    .line 355
    :goto_1
    if-ge v0, v2, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 361
    :cond_0
    return v0

    .line 352
    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/f;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Landroid/util/SparseArray;)I

    move-result v0

    .line 339
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/f;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/f;-><init>(ILjava/lang/String;J)V

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Lcom/google/android/exoplayer2/upstream/cache/f;)V

    .line 341
    return-object v1
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/cache/f;)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    return-void
.end method

.method private e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    const/4 v3, 0x0

    .line 228
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->c:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/b;->c()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 231
    if-eq v3, v1, :cond_1

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 237
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 238
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 241
    :cond_2
    const/16 v3, 0x10

    :try_start_3
    new-array v3, v3, [B

    .line 242
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 243
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v6, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    :try_start_5
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljavax/crypto/CipherInputStream;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    invoke-direct {v5, v4, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v3

    .line 256
    :cond_3
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v3, v0

    move v4, v0

    .line 258
    :goto_2
    if-ge v3, v5, :cond_5

    .line 259
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/f;

    invoke-direct {v6, v2}, Lcom/google/android/exoplayer2/upstream/cache/f;-><init>(Ljava/io/DataInputStream;)V

    .line 260
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Lcom/google/android/exoplayer2/upstream/cache/f;)V

    .line 261
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/cache/f;->d()I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    add-int/2addr v4, v6

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 246
    :catch_0
    move-exception v1

    .line 247
    :goto_3
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 266
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 272
    :goto_4
    if-eqz v1, :cond_0

    .line 273
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 251
    :cond_4
    :try_start_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    if-eqz v3, :cond_3

    .line 252
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 268
    :catch_2
    move-exception v1

    .line 269
    :goto_5
    :try_start_9
    const-string v3, "CachedContentIndex"

    const-string v4, "Error reading cache content index file."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 263
    :cond_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v3

    if-eq v3, v4, :cond_6

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 272
    :cond_6
    if-eqz v2, :cond_7

    .line 273
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    :cond_7
    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 272
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_8

    .line 273
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    :cond_8
    throw v0

    .line 272
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 268
    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_5

    .line 266
    :catch_4
    move-exception v1

    move-object v1, v3

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_4

    .line 246
    :catch_6
    move-exception v1

    goto :goto_3
.end method

.method private f()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 280
    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->c:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/b;->b()Ljava/io/OutputStream;

    move-result-object v2

    .line 283
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->g:Lcom/google/android/exoplayer2/util/p;

    if-nez v4, :cond_1

    .line 284
    new-instance v4, Lcom/google/android/exoplayer2/util/p;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/util/p;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->g:Lcom/google/android/exoplayer2/util/p;

    .line 288
    :goto_0
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->g:Lcom/google/android/exoplayer2/util/p;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 291
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    if-eqz v4, :cond_2

    .line 292
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 294
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    if-eqz v3, :cond_0

    .line 295
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 296
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 297
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 298
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 300
    :try_start_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 304
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 305
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljavax/crypto/CipherOutputStream;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->g:Lcom/google/android/exoplayer2/util/p;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Ljavax/crypto/Cipher;

    invoke-direct {v4, v5, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v2, v3

    .line 308
    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 310
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/f;

    .line 311
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(Ljava/io/DataOutputStream;)V

    .line 312
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/f;->d()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 313
    goto :goto_2

    .line 286
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->g:Lcom/google/android/exoplayer2/util/p;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/p;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    :goto_3
    :try_start_6
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    move v3, v0

    .line 291
    goto :goto_1

    .line 301
    :catch_1
    move-exception v0

    .line 302
    :goto_5
    :try_start_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 319
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 314
    :cond_3
    :try_start_8
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->c:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b;->a(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 322
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    .line 324
    return-void

    .line 322
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 319
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 301
    :catch_4
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/f;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/f;

    .line 131
    if-nez v0, :cond_0

    .line 132
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/f;

    move-result-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 107
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->c:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->a()V

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 112
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/google/android/exoplayer2/upstream/cache/f;)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Lcom/google/android/exoplayer2/upstream/cache/f;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z

    .line 335
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/f;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/f;->a()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(J)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/f;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/f;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/f;

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/g;->f()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/f;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    return v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 179
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/f;

    .line 181
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/f;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/g;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/f;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/f;->c()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Landroid/util/SparseArray;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:Z

    .line 175
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/f;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/f;->a()J

    move-result-wide v0

    goto :goto_0
.end method
